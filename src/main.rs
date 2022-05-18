mod helpers;
mod rie;

use crate::{
    helpers::find_file,
    rie::{RieErr, RieProgram},
};
use copypasta::{ClipboardContext, ClipboardProvider};
use std::env;
use thiserror::Error;

const HELP_MSG: &str = "\
Welcome to Rie!
Usage:
    cargo run (--help)
    cargo run <source>(.rie) (--clip)

Examples:
    cargo run
    cargo run --help
        > Shows this message, hello user :)

    cargo run program --clip
        > Will find `program.rie` in your current directory, compile it into RLE, and put the RLE into your clipboard.

    (WINDOWS)
    cargo run program > rom.rle
    cargo run program.rie > rom.rle
    (LINUX PROBABLY)
    cargo run program | rom.rle
    cargo run program.rie | rom.rle

        > Will compile `program.rie` and output into `rom.rle`

Arguments:
    <source>
        The path to the `.rie` file containing source code.
        The program will automatically append '.rie' to the path if it isn't already there.

Flags:
    --clip (or -c)
        Whether to output directly to clipboard.
        Otherwise uses standard output, meaning you have to pipe it to an rle file yourself.
";

type ClipErr = Box<dyn std::error::Error + Send + Sync>;

#[derive(Error, Debug)]
pub enum CLIErr {
    #[error("Could not find {0} inside target directory.")]
    FileNotFound(String),

    #[error("Invalid Second argument.")]
    Invalid2ndArg(String),

    #[error(
        "Could not open clipboard.\n\
        Exact error: {0}"
    )]
    OpenClipboardErr(ClipErr),

    #[error(
        "Could not write to clipboard.\n\
        Exact error: {0}"
    )]
    WriteClipboardErr(ClipErr),

    #[error("{0}")]
    RieErr(#[from] RieErr),
}

pub fn run_cli() -> Result<(), CLIErr> {
    use CLIErr::*;

    let mut args = env::args();
    let executable_dir = args.next();
    let arg = args.next().unwrap_or_else(|| "--help".to_owned());
    let output_to_clip = args.next().map_or(Ok(false), |arg| {
        (arg == "--clip" || arg == "-c")
            .then(|| true)
            .ok_or_else(|| Invalid2ndArg(arg.to_owned()))
    })?;

    if arg == "--help" {
        eprintln!("{HELP_MSG}");
        return Ok(());
    }
    let mut filename = arg;

    // open rie file
    if !filename.ends_with(".rie") {
        filename.push_str(".rie");
    }
    let file =
        find_file(&filename, executable_dir).ok_or_else(|| FileNotFound(filename.to_owned()))?;

    // File -> IR
    let program_ir = RieProgram::try_from(file)?;
    eprintln!("{program_ir}");

    // IR -> RLE
    let rle = program_ir.rle();

    // RLE -> out
    if output_to_clip {
        let mut clip = ClipboardContext::new().map_err(OpenClipboardErr)?;
        clip.set_contents(rle).map_err(WriteClipboardErr)?;
        eprintln!("Program successfully compiled. Check your clipboard.");
    } else {
        println!("{rle}");
        eprintln!("Program successfully compiled to standard output.");
    }

    Ok(())
}

fn main() {
    if let Err(e) = run_cli() {
        let red = "\x1b[0;31m";
        let default = "\x1b[0m";
        eprintln!("{red}Error: {e}{default}");
    }
}

[M2] (golly 4.0)
#R Flow6
#C A Turing Machine in Flow6.
#C It is called the Flow6 Read-If/Else System, abbreviated to FRieS. I am funny.
#C This one in particular has 3 Registers and 4 Bits of state.
#C 
#C Its simplicity comes with its one instruction design which goes as follows:
#C It first reads a bit from somewhere. We call this bit 'arg'.
#C Then it combines `arg` with its 4 bits of state, to make 5 bits.
#C Then it finds and runs the instructions corresponding to the 5 bits.
#C   The Instructions perform operations on the registers, such as Push/Pull/Flip.
#C   They also set the jump state for the program.
#C   Lastly, they read 'arg' from somewhere..
#C ..And the cycle repeats.
#C 
#C One could say it Reads a bit and uses it to pick between 2 instructions;
#C one for If, and one for Else.
#C Thus, Read-If/Else.
1 1 1 1 0
2 0 0 0 1
1 1 1 0 0
1 1 1 0 1
2 3 1 0 4
3 0 2 0 5
1 0 1 0 0
2 7 4 0 7
2 0 3 0 0
3 0 8 0 9
4 0 6 0 10
2 0 7 0 0
3 0 12 0 0
4 0 13 0 0
5 0 11 0 14
6 0 15 0 0
7 0 16 0 0
8 0 17 0 0
9 0 18 0 0
10 0 19 0 0
1 0 1 0 1
2 0 0 0 21
1 1 1 2 0
1 1 0 0 0
2 23 1 24 4
1 1 1 3 0
2 26 4 24 7
3 2 22 25 27
2 0 0 24 21
2 0 0 24 0
1 1 1 0 2
2 31 4 1 7
2 31 3 1 0
3 29 30 32 33
1 1 1 0 3
2 35 3 1 0
2 1 26 4 24
2 1 23 4 24
3 32 36 37 38
2 4 35 7 1
2 4 31 7 1
3 37 38 40 41
4 28 34 39 42
2 0 0 1 0
3 44 44 37 38
2 0 0 21 24
3 46 46 40 40
3 40 40 5 25
2 35 4 1 7
3 5 25 27 49
4 45 47 48 50
1 1 0 1 0
2 0 52 3 1
2 0 52 26 1
3 40 40 53 54
2 0 21 26 4
2 0 21 35 4
3 5 25 56 57
2 0 4 7 4
2 24 4 35 4
2 0 7 0 3
2 1 7 1 26
3 59 60 61 62
2 24 7 35 3
2 1 0 1 26
2 4 24 4 35
3 64 62 65 66
4 55 58 63 67
2 0 0 35 3
2 52 0 1 26
3 27 49 69 70
2 21 0 4 35
3 33 37 70 72
2 7 1 3 1
3 65 66 66 74
2 7 1 26 1
2 0 4 26 4
3 66 74 76 77
4 71 73 75 78
5 43 51 68 79
2 26 1 24 4
3 2 2 5 81
3 22 29 27 49
3 27 49 36 37
3 36 37 37 40
4 82 83 84 85
3 30 44 36 37
3 44 46 37 40
3 37 40 40 5
3 40 5 81 27
4 87 88 89 90
3 37 40 72 53
2 0 52 23 1
3 40 5 93 56
3 76 77 60 64
2 24 4 31 4
2 1 0 1 23
3 96 64 62 97
4 92 94 95 98
2 0 21 31 4
2 0 0 31 3
3 81 27 100 101
2 52 0 1 23
3 49 36 70 103
2 4 24 4 31
3 62 97 66 105
2 7 1 23 1
3 66 66 74 107
4 102 104 106 108
5 86 91 99 109
2 0 0 0 7
2 7 1 0 52
3 111 66 0 112
2 0 4 0 21
3 66 74 112 114
3 0 5 0 8
3 81 27 49 36
4 113 115 116 117
2 24 4 0 21
2 24 7 0 0
3 76 77 119 120
2 1 7 52 0
2 1 0 52 0
3 60 64 122 123
3 49 36 37 37
3 37 37 40 40
4 121 124 125 126
3 0 9 0 12
1 5 1 0 0
2 0 52 129 1
3 130 54 59 96
4 128 126 0 131
3 40 40 5 81
3 5 81 27 49
2 0 21 23 4
3 135 57 64 62
3 101 70 65 105
4 133 134 136 137
5 118 127 132 138
2 4 24 21 0
3 62 65 140 140
3 66 66 112 112
4 141 142 133 134
3 74 107 114 119
3 77 60 120 122
4 144 145 84 85
3 70 72 66 74
2 21 0 4 31
3 148 53 107 77
4 84 85 147 149
3 54 135 96 64
3 57 101 62 65
4 89 90 151 152
5 143 146 150 153
6 80 110 139 154
3 46 2 40 5
3 2 22 81 27
4 156 157 117 125
3 29 30 49 36
3 44 44 37 37
4 159 160 126 133
3 37 37 72 72
3 74 107 77 60
3 77 60 64 62
4 162 55 163 164
3 5 81 56 57
4 166 71 67 75
5 158 161 165 167
3 2 2 5 25
3 27 32 36 37
4 47 169 134 170
3 22 29 27 32
3 36 38 38 41
3 37 41 41 5
4 172 87 173 174
3 36 37 70 72
4 176 92 78 95
3 81 27 100 69
2 1 7 1 23
3 179 65 105 105
4 94 178 98 180
5 171 175 177 181
2 24 7 31 3
3 183 62 123 140
3 65 66 140 112
4 184 185 89 90
3 25 27 32 36
3 32 33 37 38
4 115 121 187 188
3 70 70 105 66
3 72 148 74 107
4 117 125 190 191
3 37 38 40 40
3 40 41 5 25
3 53 54 77 96
4 193 194 195 136
5 186 189 192 196
4 124 141 193 48
3 74 76 114 119
3 5 25 27 32
3 27 32 36 38
4 142 199 200 201
3 27 49 33 37
4 50 203 137 147
3 38 41 40 5
4 85 205 149 151
5 198 202 204 206
6 168 182 197 207
3 12 122 9 37
3 12 40 0 5
4 0 209 0 210
3 123 140 38 41
3 140 112 40 5
2 23 4 24 7
3 81 214 49 36
4 212 213 90 215
3 0 8 0 0
4 0 217 0 0
2 52 0 52 1
2 52 0 24 0
3 49 36 219 220
2 21 0 21 21
2 21 0 3 0
3 37 37 222 223
2 52 52 3 1
2 0 0 3 52
2 0 52 0 52
2 1 24 4 1
3 225 226 227 228
2 21 21 7 4
2 0 0 3 4
2 0 21 52 21
1 1 1 1 1
2 21 3 7 233
3 230 231 232 234
4 221 224 229 235
5 211 216 218 236
3 112 114 81 214
3 119 120 32 36
3 32 33 37 37
3 38 37 40 41
4 238 239 240 241
3 122 123 37 38
3 140 140 41 40
3 5 81 214 32
4 243 244 48 245
2 0 52 1 24
3 40 40 227 247
2 0 21 0 21
2 0 21 21 3
3 5 81 249 250
2 0 52 0 3
2 52 0 1 3
2 0 0 4 0
2 52 1 52 4
3 252 253 254 255
2 0 21 52 7
2 21 0 4 3
2 24 0 1 52
2 21 21 21 7
3 257 258 259 260
4 248 251 256 261
3 27 49 0 219
3 36 37 220 222
2 3 0 233 4
3 254 225 265 227
3 226 230 228 232
4 263 264 266 267
5 242 246 262 268
1 0 0 0 1
1 1 0 1 1
2 270 271 0 271
2 233 0 21 0
1 0 1 1 1
2 0 274 0 52
2 21 0 21 0
3 272 273 275 276
2 52 274 52 21
1 0 0 1 0
2 274 271 279 1
2 52 270 271 274
1 0 0 1 1
2 52 52 282 271
3 278 280 281 283
2 0 52 0 271
2 21 282 282 271
3 285 286 249 227
2 274 274 274 274
2 282 52 0 0
2 274 0 271 282
2 0 0 279 0
3 288 289 290 291
4 277 284 287 292
2 0 21 0 4
2 0 7 0 21
2 52 4 24 1
3 294 53 295 296
2 274 24 4 0
2 52 0 52 0
3 298 299 276 299
2 0 21 0 7
2 0 3 3 3
3 249 227 301 302
2 21 0 7 3
2 3 3 3 3
2 3 3 3 1
2 4 3 4 3
3 304 305 306 307
4 297 300 303 308
5 0 293 0 309
2 233 270 21 0
2 271 233 271 21
2 21 0 274 0
2 274 21 52 21
3 311 312 313 314
2 274 274 21 279
2 270 52 274 282
3 227 316 285 317
2 52 21 271 282
3 0 319 0 276
2 282 274 271 274
2 274 282 274 0
2 52 274 52 271
2 0 0 282 279
3 321 322 323 324
4 315 318 320 325
2 271 233 1 21
2 52 21 271 274
3 327 272 328 275
3 273 278 276 281
2 52 0 0 0
3 331 285 0 249
3 286 288 227 290
4 329 330 332 333
2 7 52 21 24
3 0 258 0 335
2 52 274 1 4
1 1 0 0 1
2 338 52 1 52
2 4 21 1 21
3 337 339 340 227
2 3 4 1 4
2 1 4 1 4
2 4 3 3 0
3 342 307 343 344
2 1 4 1 3
2 3 24 0 0
2 24 0 0 0
3 346 347 348 0
4 336 341 345 349
3 0 294 0 295
3 53 298 296 276
3 0 249 0 301
3 227 304 302 306
4 351 352 353 354
5 326 334 350 355
6 237 269 310 356
3 112 112 5 81
3 114 119 214 32
3 214 32 33 38
3 33 38 38 41
4 358 359 360 361
3 120 122 36 37
4 363 212 89 90
3 37 40 223 227
3 40 5 247 249
3 231 252 234 254
3 253 257 255 259
4 365 366 367 368
3 81 214 250 0
3 32 33 219 220
3 258 254 260 265
4 370 371 372 229
5 362 364 369 373
4 213 238 215 240
4 239 243 241 48
3 38 38 222 223
3 41 41 227 247
4 377 378 235 256
3 5 25 249 250
3 214 32 0 219
4 380 381 261 266
5 375 376 379 382
3 280 311 283 313
3 312 227 314 285
3 289 0 291 0
3 319 321 276 323
4 384 385 386 387
3 316 327 317 328
3 322 331 324 0
4 389 277 390 287
3 299 0 299 0
3 258 337 335 340
3 305 342 307 343
3 307 346 344 348
4 392 393 394 395
3 339 0 227 0
3 347 0 0 0
4 397 297 398 303
5 388 391 396 399
4 284 315 292 320
4 318 329 325 332
4 300 336 308 345
4 341 351 349 353
5 401 402 403 404
6 374 383 400 405
7 155 208 357 406
2 3 3 0 0
3 46 0 40 408
2 26 3 24 0
3 81 410 49 36
4 88 409 90 411
3 0 0 408 408
2 0 0 0 270
2 3 4 0 0
3 0 414 408 415
3 408 408 408 408
2 3 3 0 21
2 3 3 0 270
3 408 418 408 419
4 413 416 417 420
3 49 36 70 70
3 105 66 74 76
3 74 76 77 60
4 422 162 423 424
2 0 0 3 3
3 408 408 426 426
2 0 270 3 4
3 408 415 426 428
2 0 0 26 3
2 24 0 35 3
3 430 426 431 426
2 0 21 3 3
3 426 426 426 433
4 427 429 432 434
5 412 421 425 435
2 270 282 274 270
2 282 282 279 270
2 274 4 0 270
1 0 1 1 0
2 440 233 282 7
3 437 438 439 441
2 279 0 52 0
2 0 279 0 52
2 3 1 52 52
3 443 444 305 445
2 3 4 4 0
2 274 3 0 0
2 21 274 282 270
2 3 3 282 270
3 447 448 449 450
2 4 1 0 4
2 52 52 0 52
2 3 233 282 21
2 0 233 0 52
3 452 453 454 455
4 442 446 451 456
2 270 0 21 0
2 4 3 21 271
2 3 3 282 282
3 458 0 459 460
2 4 0 274 282
3 0 0 460 462
2 274 282 21 0
2 282 282 0 0
3 276 0 464 465
2 21 24 1 52
2 274 282 7 24
3 0 467 465 468
4 461 463 466 469
2 274 4 270 282
2 274 4 282 282
2 274 270 274 4
2 279 270 440 233
3 471 472 473 474
2 274 3 279 0
2 52 0 3 3
3 476 227 477 53
2 282 7 274 3
2 4 0 21 274
3 428 479 480 426
2 3 3 4 1
2 52 52 52 52
2 0 4 3 233
2 0 52 0 233
3 482 483 484 485
4 475 478 481 486
3 276 0 258 426
3 0 0 426 254
2 21 271 21 0
2 21 0 274 282
2 0 0 282 282
3 490 465 491 492
2 274 282 21 24
2 1 52 274 282
3 465 494 492 495
4 488 489 493 496
5 457 470 487 497
3 64 62 123 140
3 36 37 37 41
4 145 499 500 89
3 65 426 140 0
3 426 428 0 414
3 40 408 81 410
3 408 415 408 418
4 502 503 504 505
3 41 5 81 27
3 57 101 179 65
3 70 103 105 66
4 507 117 508 509
3 408 419 408 415
3 426 426 430 426
4 125 511 191 512
5 501 506 510 513
2 282 270 274 4
3 515 515 437 438
2 282 21 274 3
3 517 227 443 227
3 439 441 447 448
3 305 445 452 453
4 516 518 519 520
3 276 0 276 0
2 7 24 0 0
3 0 523 0 0
3 459 460 276 0
3 460 462 0 467
4 522 524 525 526
2 274 4 0 0
3 449 450 528 528
3 454 455 448 227
3 426 426 426 426
2 0 52 3 233
3 426 53 426 532
4 529 530 531 533
3 464 465 276 0
3 465 468 0 0
2 274 0 4 0
3 537 0 537 0
4 535 536 538 0
5 521 527 534 539
6 436 498 514 540
2 0 0 282 0
3 0 0 542 0
2 7 0 0 0
2 274 0 0 0
3 544 0 545 0
4 543 0 546 0
2 282 0 7 0
2 0 0 274 0
3 548 0 549 0
4 0 0 550 0
5 547 0 551 0
3 542 0 544 0
4 0 0 553 0
3 545 0 0 0
4 555 0 0 0
5 554 0 556 0
6 552 0 557 0
4 244 358 245 360
3 348 0 36 408
3 37 408 40 408
4 359 560 361 561
3 33 38 220 222
3 38 41 223 227
4 563 564 267 367
3 41 5 247 249
3 25 410 250 0
4 566 567 368 372
5 559 562 565 568
2 3 52 0 52
3 0 0 570 0
3 0 227 0 227
2 3 1 0 52
2 4 0 21 0
2 4 3 21 0
3 573 574 573 575
3 0 227 299 227
4 571 572 576 577
4 522 0 522 0
3 573 575 227 276
2 1 4 52 21
2 52 21 52 21
3 581 227 582 227
3 227 276 227 276
3 582 227 582 227
4 580 583 584 585
5 578 579 586 579
4 330 384 333 386
4 385 389 387 390
4 352 392 354 394
4 393 397 395 398
5 588 589 590 591
4 584 585 584 585
5 593 579 593 579
6 569 587 592 594
7 541 558 595 0
2 274 282 21 279
3 227 276 272 597
2 270 52 21 0
3 275 599 227 276
4 0 598 0 600
2 21 282 282 282
3 285 602 0 0
4 0 603 0 0
5 0 601 0 604
2 0 0 1 52
3 255 606 312 227
2 282 282 282 282
3 314 285 319 608
3 492 492 608 608
4 607 0 609 610
3 0 227 0 272
2 0 274 282 271
2 282 282 274 282
2 271 271 271 271
3 492 613 614 615
4 0 612 610 616
3 608 608 0 0
3 0 111 0 0
4 618 618 0 619
2 282 282 282 274
2 282 271 282 271
3 621 622 582 227
2 274 282 274 282
2 271 271 271 52
2 21 270 21 21
2 52 0 282 282
3 624 625 626 627
2 52 21 1 4
2 4 7 1 21
3 629 53 630 296
2 21 270 4 3
2 1 21 52 21
3 632 633 335 582
4 623 628 631 634
5 611 617 620 635
3 582 227 582 252
2 52 7 3 3
2 7 3 3 3
3 276 638 639 305
3 638 305 0 0
3 305 305 0 0
4 637 640 641 642
5 0 643 0 0
6 605 636 0 644
3 276 255 597 312
2 274 52 24 52
3 606 0 647 0
2 274 21 271 274
2 271 274 52 0
3 317 649 624 650
2 0 52 282 52
3 652 0 0 0
4 646 648 651 653
5 654 0 556 0
4 598 607 600 609
4 0 0 610 610
4 603 618 0 0
4 618 623 619 631
5 656 657 658 659
3 305 305 305 305
4 661 661 642 642
5 662 662 0 0
2 3 3 4 3
3 305 305 305 664
2 3 3 3 4
3 305 666 0 249
2 3 1 3 1
2 0 52 282 271
3 668 307 669 491
4 661 665 667 670
3 666 668 343 668
2 3 1 3 24
3 343 668 343 673
3 343 668 328 669
2 1 3 24 0
1 5 5 0 0
2 0 0 677 0
3 676 0 492 678
4 672 674 675 679
3 227 276 9 575
2 21 282 0 0
3 0 682 0 0
4 0 681 0 683
3 582 227 581 573
2 0 279 440 1
2 274 52 270 271
2 52 0 271 282
3 686 253 687 688
2 271 274 52 21
2 282 271 0 52
2 52 21 3 4
3 690 691 692 53
2 338 52 3 52
2 440 1 274 52
2 1 3 52 0
3 694 299 695 696
4 685 689 693 697
5 671 680 684 698
6 655 660 663 699
3 249 669 0 227
2 270 271 338 52
2 271 282 271 282
1 5 0 5 0
2 3 52 704 52
2 282 282 271 282
3 702 703 705 706
3 0 9 0 0
2 274 271 0 0
3 709 465 0 0
4 701 707 708 710
5 0 711 0 0
6 0 712 0 0
7 645 700 0 713
4 612 646 616 651
4 648 0 653 0
2 1 274 233 4
3 632 717 335 582
4 628 555 718 0
5 715 716 719 0
2 3 0 0 0
3 307 676 721 0
4 722 0 0 0
3 426 426 492 492
4 724 724 413 413
5 723 0 725 725
2 0 52 3 24
3 727 276 492 313
2 24 21 0 21
3 582 227 729 227
4 728 585 413 730
5 593 579 731 579
6 720 594 726 732
2 282 282 282 0
2 274 0 282 282
3 734 465 735 492
3 465 465 492 492
3 465 465 0 0
4 736 737 738 738
4 737 737 738 738
5 739 740 0 0
2 282 274 0 0
3 742 227 492 652
4 737 743 738 738
4 522 0 555 0
5 744 745 0 0
6 741 746 0 0
7 733 0 747 0
8 407 596 714 748
9 749 0 0 0
10 750 0 0 0
11 0 0 20 751

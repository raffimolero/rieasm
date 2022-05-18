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
1 1 1 3 0
1 1 0 0 0
2 23 1 24 4
2 23 4 24 7
3 2 22 25 26
2 0 0 24 21
2 0 0 24 0
1 1 1 0 3
2 30 4 1 7
2 30 3 1 0
3 28 29 31 32
2 1 23 4 24
3 31 32 34 34
2 4 30 7 1
3 34 34 36 36
4 27 33 35 37
2 0 0 1 0
3 39 39 34 34
2 0 0 21 24
3 41 41 36 36
3 36 36 5 25
3 5 25 26 31
4 40 42 43 44
1 1 0 1 0
2 0 46 3 1
2 0 46 23 1
3 36 36 47 48
2 0 21 23 4
2 0 21 30 4
3 5 25 50 51
2 0 4 7 4
2 24 4 30 4
2 0 7 0 3
2 1 7 1 23
3 53 54 55 56
2 24 7 30 3
2 1 0 1 23
2 4 24 4 30
3 58 56 59 60
4 49 52 57 61
2 0 0 30 3
2 46 0 1 23
3 26 31 63 64
2 21 0 4 30
3 32 34 64 66
2 7 1 3 1
3 59 60 60 68
2 7 1 23 1
2 0 4 23 4
3 60 68 70 71
4 65 67 69 72
5 38 45 62 73
3 2 2 5 25
3 22 28 26 31
3 26 31 32 34
3 32 34 34 36
4 75 76 77 78
3 29 39 32 34
3 39 41 34 36
3 34 36 36 5
3 36 5 25 26
4 80 81 82 83
3 34 36 66 47
3 36 5 48 50
3 70 71 54 58
3 54 58 56 59
4 85 86 87 88
3 25 26 51 63
3 31 32 64 64
3 56 59 60 60
3 60 60 68 70
4 90 91 92 93
5 79 84 89 94
2 0 0 0 7
2 7 1 0 46
3 96 60 0 97
2 0 4 0 21
3 60 68 97 99
3 0 5 0 8
3 25 26 31 32
4 98 100 101 102
2 24 4 0 21
2 24 7 0 0
3 70 71 104 105
2 1 7 46 0
2 1 0 46 0
3 54 58 107 108
4 106 109 35 37
3 0 9 0 12
1 5 1 0 0
2 0 46 112 1
3 113 48 53 54
4 111 37 0 114
3 50 51 58 56
3 63 64 59 60
4 43 44 116 117
5 103 110 115 118
2 4 24 21 0
3 56 59 120 120
3 60 60 97 97
4 121 122 43 44
3 68 70 99 104
3 71 54 105 107
4 124 125 77 78
3 64 66 60 68
3 66 47 70 71
4 77 78 127 128
3 48 50 54 58
3 51 63 56 59
4 82 83 130 131
5 123 126 129 132
6 74 95 119 133
3 41 2 36 5
4 135 27 102 35
4 33 40 37 43
3 34 34 66 66
3 68 70 71 54
3 71 54 58 56
4 138 49 139 140
4 52 65 61 69
5 136 137 141 142
4 42 75 44 77
4 76 80 78 82
4 67 85 72 87
4 86 90 88 92
5 144 145 146 147
3 58 56 108 120
3 59 60 120 97
4 149 150 82 83
4 100 106 102 35
3 64 64 60 60
3 66 66 68 70
4 102 35 153 154
3 47 48 71 54
4 37 43 156 116
5 151 152 155 157
4 109 121 37 43
4 122 124 44 77
4 44 77 117 127
4 78 82 128 130
5 159 160 161 162
6 143 148 158 163
3 12 107 9 34
3 12 36 0 5
4 0 165 0 166
3 108 120 34 36
3 120 97 36 5
4 168 169 83 102
3 0 8 0 0
4 0 171 0 0
2 46 0 46 1
2 46 0 24 0
3 31 32 173 174
2 21 0 21 21
2 21 0 3 0
3 34 34 176 177
2 46 46 3 1
2 0 0 3 46
2 0 46 0 46
2 1 24 4 1
3 179 180 181 182
2 21 21 7 4
2 0 0 3 4
2 0 21 46 21
1 1 1 1 1
2 21 3 7 187
3 184 185 186 188
4 175 178 183 189
5 167 170 172 190
3 97 99 25 26
3 104 105 31 32
4 192 193 35 37
3 107 108 34 34
3 120 120 36 36
4 195 196 43 44
2 0 46 1 24
3 36 36 181 198
2 0 21 0 21
2 0 21 21 3
3 5 25 200 201
2 0 46 0 3
2 46 0 1 3
2 0 0 4 0
2 46 1 46 4
3 203 204 205 206
2 0 21 46 7
2 21 0 4 3
2 24 0 1 46
2 21 21 21 7
3 208 209 210 211
4 199 202 207 212
3 26 31 0 173
3 32 34 174 176
2 3 0 187 4
3 205 179 216 181
3 180 184 182 186
4 214 215 217 218
5 194 197 213 219
1 0 0 0 1
1 1 0 1 1
2 221 222 0 222
2 187 0 21 0
1 0 1 1 1
2 0 225 0 46
2 21 0 21 0
3 223 224 226 227
2 46 225 46 21
1 0 0 1 0
2 225 222 230 1
2 46 221 222 225
1 0 0 1 1
2 46 46 233 222
3 229 231 232 234
2 0 46 0 222
2 21 233 233 222
3 236 237 200 181
2 225 225 225 225
2 233 46 0 0
2 225 0 222 233
2 0 0 230 0
3 239 240 241 242
4 228 235 238 243
2 0 21 0 4
2 0 7 0 21
2 46 4 24 1
3 245 47 246 247
2 225 24 4 0
2 46 0 46 0
3 249 250 227 250
2 0 21 0 7
2 0 3 3 3
3 200 181 252 253
2 21 0 7 3
2 3 3 3 3
2 3 3 3 1
2 4 3 4 3
3 255 256 257 258
4 248 251 254 259
5 0 244 0 260
2 187 221 21 0
2 222 187 222 21
2 21 0 225 0
2 225 21 46 21
3 262 263 264 265
2 225 225 21 230
2 221 46 225 233
3 181 267 236 268
2 46 21 222 233
3 0 270 0 227
2 233 225 222 225
2 225 233 225 0
2 46 225 46 222
2 0 0 233 230
3 272 273 274 275
4 266 269 271 276
2 222 187 1 21
2 46 21 222 225
3 278 223 279 226
3 224 229 227 232
2 46 0 0 0
3 282 236 0 200
3 237 239 181 241
4 280 281 283 284
2 7 46 21 24
3 0 209 0 286
2 46 225 1 4
1 1 0 0 1
2 289 46 1 46
2 4 21 1 21
3 288 290 291 181
2 3 4 1 4
2 1 4 1 4
2 4 3 3 0
3 293 258 294 295
2 1 4 1 3
2 3 24 0 0
2 24 0 0 0
3 297 298 299 0
4 287 292 296 300
3 0 245 0 246
3 47 249 247 227
3 0 200 0 252
3 181 255 253 257
4 302 303 304 305
5 277 285 301 306
6 191 220 261 307
3 97 97 5 25
3 99 104 26 31
4 309 310 77 78
3 105 107 32 34
4 312 168 82 83
3 34 36 177 181
3 36 5 198 200
3 185 203 188 205
3 204 208 206 210
4 314 315 316 317
3 25 26 201 0
3 209 205 211 216
4 319 175 320 183
5 311 313 318 321
4 169 192 102 35
4 193 195 37 43
4 178 199 189 207
4 202 214 212 217
5 323 324 325 326
3 231 262 234 264
3 263 181 265 236
3 240 0 242 0
3 270 272 227 274
4 328 329 330 331
3 267 278 268 279
3 273 282 275 0
4 333 228 334 238
3 250 0 250 0
3 209 288 286 291
3 256 293 258 294
3 258 297 295 299
4 336 337 338 339
3 290 0 181 0
3 298 0 0 0
4 341 248 342 254
5 332 335 340 343
4 235 266 243 271
4 269 280 276 283
4 251 287 259 296
4 292 302 300 304
5 345 346 347 348
6 322 327 344 349
7 134 164 308 350
2 3 3 0 0
3 41 0 36 352
2 23 3 24 0
3 25 354 31 32
4 81 353 83 355
3 0 0 352 352
2 0 0 0 221
2 3 4 0 0
3 0 358 352 359
3 352 352 352 352
2 3 3 0 21
2 3 3 0 221
3 352 362 352 363
4 357 360 361 364
4 91 138 93 139
2 0 0 3 3
3 352 352 367 367
2 0 221 3 4
3 352 359 367 369
2 0 0 23 3
2 24 0 30 3
3 371 367 372 367
2 0 21 3 3
3 367 367 367 374
4 368 370 373 375
5 356 365 366 376
2 221 233 225 221
2 233 233 230 221
2 225 4 0 221
1 0 1 1 0
2 381 187 233 7
3 378 379 380 382
2 230 0 46 0
2 0 230 0 46
2 3 1 46 46
3 384 385 256 386
2 3 4 4 0
2 225 3 0 0
2 21 225 233 221
2 3 3 233 221
3 388 389 390 391
2 4 1 0 4
2 46 46 0 46
2 3 187 233 21
2 0 187 0 46
3 393 394 395 396
4 383 387 392 397
2 221 0 21 0
2 4 3 21 222
2 3 3 233 233
3 399 0 400 401
2 4 0 225 233
3 0 0 401 403
2 225 233 21 0
2 233 233 0 0
3 227 0 405 406
2 21 24 1 46
2 225 233 7 24
3 0 408 406 409
4 402 404 407 410
2 225 4 221 233
2 225 4 233 233
2 225 221 225 4
2 230 221 381 187
3 412 413 414 415
2 225 3 230 0
2 46 0 3 3
3 417 181 418 47
2 233 7 225 3
2 4 0 21 225
3 369 420 421 367
2 3 3 4 1
2 46 46 46 46
2 0 4 3 187
2 0 46 0 187
3 423 424 425 426
4 416 419 422 427
3 227 0 209 367
3 0 0 367 205
2 21 222 21 0
2 21 0 225 233
2 0 0 233 233
3 431 406 432 433
2 225 233 21 24
2 1 46 225 233
3 406 435 433 436
4 429 430 434 437
5 398 411 428 438
4 125 149 78 82
3 59 367 120 0
3 367 369 0 358
3 36 352 25 354
3 352 359 352 362
4 441 442 443 444
4 83 102 131 153
3 352 363 352 359
3 367 367 371 367
4 35 447 154 448
5 440 445 446 449
2 233 221 225 4
3 451 451 378 379
2 233 21 225 3
3 453 181 384 181
3 380 382 388 389
3 256 386 393 394
4 452 454 455 456
3 227 0 227 0
2 7 24 0 0
3 0 459 0 0
3 400 401 227 0
3 401 403 0 408
4 458 460 461 462
2 225 4 0 0
3 390 391 464 464
3 395 396 389 181
3 367 367 367 367
2 0 46 3 187
3 367 47 367 468
4 465 466 467 469
3 405 406 227 0
3 406 409 0 0
2 225 0 4 0
3 473 0 473 0
4 471 472 474 0
5 457 463 470 475
6 377 439 450 476
2 0 0 233 0
3 0 0 478 0
2 7 0 0 0
2 225 0 0 0
3 480 0 481 0
4 479 0 482 0
2 233 0 7 0
2 0 0 225 0
3 484 0 485 0
4 0 0 486 0
5 483 0 487 0
3 478 0 480 0
4 0 0 489 0
3 481 0 0 0
4 491 0 0 0
5 490 0 492 0
6 488 0 493 0
4 196 309 44 77
3 299 0 32 352
3 34 352 36 352
4 310 496 78 497
4 215 314 218 316
3 25 354 201 0
4 315 500 317 320
5 495 498 499 501
2 3 46 0 46
3 0 0 503 0
3 0 181 0 181
2 3 1 0 46
2 4 0 21 0
2 4 3 21 0
3 506 507 506 508
3 0 181 250 181
4 504 505 509 510
4 458 0 458 0
3 506 508 181 227
2 1 4 46 21
2 46 21 46 21
3 514 181 515 181
3 181 227 181 227
3 515 181 515 181
4 513 516 517 518
5 511 512 519 512
4 281 328 284 330
4 329 333 331 334
4 303 336 305 338
4 337 341 339 342
5 521 522 523 524
4 517 518 517 518
5 526 512 526 512
6 502 520 525 527
7 477 494 528 0
2 225 233 21 230
3 181 227 223 530
2 221 46 21 0
3 226 532 181 227
4 0 531 0 533
2 21 233 233 233
3 236 535 0 0
4 0 536 0 0
5 0 534 0 537
2 0 0 1 46
3 206 539 263 181
2 233 233 233 233
3 265 236 270 541
3 433 433 541 541
4 540 0 542 543
3 0 181 0 223
2 0 225 233 222
2 233 233 225 233
2 222 222 222 222
3 433 546 547 548
4 0 545 543 549
3 541 541 0 0
3 0 96 0 0
4 551 551 0 552
2 233 233 233 225
2 233 222 233 222
3 554 555 515 181
2 225 233 225 233
2 222 222 222 46
2 21 221 21 21
2 46 0 233 233
3 557 558 559 560
2 46 21 1 4
2 4 7 1 21
3 562 47 563 247
2 21 221 4 3
2 1 21 46 21
3 565 566 286 515
4 556 561 564 567
5 544 550 553 568
3 515 181 515 203
2 46 7 3 3
2 7 3 3 3
3 227 571 572 256
3 571 256 0 0
3 256 256 0 0
4 570 573 574 575
5 0 576 0 0
6 538 569 0 577
3 227 206 530 263
2 225 46 24 46
3 539 0 580 0
2 225 21 222 225
2 222 225 46 0
3 268 582 557 583
2 0 46 233 46
3 585 0 0 0
4 579 581 584 586
5 587 0 492 0
4 531 540 533 542
4 0 0 543 543
4 536 551 0 0
4 551 556 552 564
5 589 590 591 592
3 256 256 256 256
4 594 594 575 575
5 595 595 0 0
2 3 3 4 3
3 256 256 256 597
2 3 3 3 4
3 256 599 0 200
2 3 1 3 1
2 0 46 233 222
3 601 258 602 432
4 594 598 600 603
3 599 601 294 601
2 3 1 3 24
3 294 601 294 606
3 294 601 279 602
2 1 3 24 0
1 5 5 0 0
2 0 0 610 0
3 609 0 433 611
4 605 607 608 612
3 181 227 9 508
2 21 233 0 0
3 0 615 0 0
4 0 614 0 616
3 515 181 514 506
2 0 230 381 1
2 225 46 221 222
2 46 0 222 233
3 619 204 620 621
2 222 225 46 21
2 233 222 0 46
2 46 21 3 4
3 623 624 625 47
2 289 46 3 46
2 381 1 225 46
2 1 3 46 0
3 627 250 628 629
4 618 622 626 630
5 604 613 617 631
6 588 593 596 632
3 200 602 0 181
2 221 222 289 46
2 222 233 222 233
1 5 0 5 0
2 3 46 637 46
2 233 233 222 233
3 635 636 638 639
3 0 9 0 0
2 225 222 0 0
3 642 406 0 0
4 634 640 641 643
5 0 644 0 0
6 0 645 0 0
7 578 633 0 646
4 545 579 549 584
4 581 0 586 0
2 1 225 187 4
3 565 650 286 515
4 561 491 651 0
5 648 649 652 0
2 3 0 0 0
3 258 609 654 0
4 655 0 0 0
3 367 367 433 433
4 657 657 357 357
5 656 0 658 658
2 0 46 3 24
3 660 227 433 264
2 24 21 0 21
3 515 181 662 181
4 661 518 357 663
5 526 512 664 512
6 653 527 659 665
2 233 233 233 0
2 225 0 233 233
3 667 406 668 433
3 406 406 433 433
3 406 406 0 0
4 669 670 671 671
4 670 670 671 671
5 672 673 0 0
2 233 225 0 0
3 675 181 433 585
4 670 676 671 671
4 458 0 491 0
5 677 678 0 0
6 674 679 0 0
7 666 0 680 0
8 351 529 647 681
9 682 0 0 0
10 683 0 0 0
11 0 0 20 684

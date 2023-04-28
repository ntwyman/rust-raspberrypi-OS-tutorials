// SPDX-License-Identifier: MIT OR Apache-2.0
//
// Copyright (c) 2021-2022 Andre Richter <andre.o.richter@gmail.com>
// Copyright (c) 2023 Nick Twyman <nick@conky.org>

//--------------------------------------------------------------------------------------------------
// Public Code
//--------------------------------------------------------------------------------------------------
.section .text._start

//------------------------------------------------------------------------------
// fn _start()
//------------------------------------------------------------------------------
_start:
	// Infinitely wait for events (aka "park the core").
.L_parking_loop:
	wfi
	j .L_parking_loop  # jump to .L_parking_loop

.size	_start, . - _start
.type	_start, function
.global	_start

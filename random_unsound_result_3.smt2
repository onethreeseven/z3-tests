; This demonstrates a randomly unsound result I'm getting from z3.

; It is as far as I got manually reducing the test case until the bug got fixed anyway...

; $ z3 --version
; Z3 version 4.8.14 - 64 bit

; $ z3 smt.random_seed=1007 random_unsound_result_2.smt2
; sat
; sat
; sat

; $ z3 smt.random_seed=1008 random_unsound_result_2.smt2
; sat
; sat
; unsat

; (The correct result is sat, sat, sat.)

(check-sat)  ; This is here to cause a switch to the incremental solver

(declare-fun a () Bool)
(declare-fun b () Bool)
(declare-fun c () Bool)
(declare-fun d () Bool)
(declare-fun e () Bool)
(declare-fun f () Bool)
(declare-fun g () Bool)
(declare-fun h () Bool)
(declare-fun i () Bool)
(declare-fun j () Bool)

(assert ((_ pbeq 1 1 1) a b))
(assert ((_ pbeq 2 1 1 1) a b c))
(assert (not (and b c)))
(assert ((_ pbeq 1 1 1) d f))
(assert (or ((_ pbeq 0 1 1) d e) ((_ pbeq 2 1 1) d e)))
(assert ((_ pbeq 1 1 1) g i))
(assert (or ((_ pbeq 0 1 1) g h) ((_ pbeq 2 1 1 1) b g h)))
(assert (or ((_ pbeq 0 1 1 1) e i j) ((_ pbeq 2 1 1 1) e i j)))
(assert (or ((_ pbeq 0 1 1 1) f h j) ((_ pbeq 2 1 1 1) f h j)))
(check-sat)

(assert (not (and a d e i)))
(assert (not (and f g)))
(assert (not (and d g j)))
(check-sat)

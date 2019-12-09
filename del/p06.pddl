; MAPF/DU corridor problem (DEL version) with 2 agents and 14 nodes
; Author: Thorsten Engesser
(define (problem mapfdu_2_14)
  (:domain mapfdu)
  (:objects a0 a1 - agent
            c00 c01 c02 c03 c04 c05 c06 c07 c08 c09 c10 c11 c12 x06 - pos)
  (:init (adj c00 c01)
         (adj c01 c00) (adj c01 c02)
         (adj c02 c01) (adj c02 c03)
         (adj c03 c02) (adj c03 c04)
         (adj c04 c03) (adj c04 c05)
         (adj c05 c04) (adj c05 c06)
         (adj c06 c05) (adj c06 c07) (adj c06 x06)
         (adj c07 c06) (adj c07 c08)
         (adj c08 c07) (adj c08 c09)
         (adj c09 c08) (adj c09 c10)
         (adj c10 c09) (adj c10 c11)
         (adj c11 c10) (adj c11 c12)
         (adj c12 c11)
         (adj x06 c06)
         (at a0 c12) (at a1 c06))
  (:world-designated w0
    (goal a0 c00)
    (goal a1 c06))
  (:world-nondesignated w1
    (goal a0 x06)
    (goal a1 c06))
  (:world-nondesignated w2
    (goal a0 c00)
    (goal a1 c12))
  (:world-nondesignated w3
    (goal a0 x06)
    (goal a1 c12))
  (:observability (partition (w0 w2) (w1 w3)) a0)
  (:observability (partition (w0 w1) (w2 w3)) a1)
  (:goal (forall (?a - agent) (stopped ?a))))

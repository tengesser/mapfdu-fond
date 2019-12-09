; MAPF/DU corridor problem (DEL version) with 3 agents and 14 nodes
; Author: Thorsten Engesser
(define (problem mapfdu_3_14)
  (:domain mapfdu)
  (:objects a0 a1 a2 - agent
            c00 c01 c02 c03 c04 c05 c06 c07 c08 c09 c10 c11 x03 x08 - pos)
  (:init (adj c00 c01)
         (adj c01 c00) (adj c01 c02)
         (adj c02 c01) (adj c02 c03)
         (adj c03 c02) (adj c03 c04) (adj c03 x03)
         (adj c04 c03) (adj c04 c05)
         (adj c05 c04) (adj c05 c06)
         (adj c06 c05) (adj c06 c07)
         (adj c07 c06) (adj c07 c08)
         (adj c08 c07) (adj c08 c09) (adj c08 x08)
         (adj c09 c08) (adj c09 c10)
         (adj c10 c09) (adj c10 c11)
         (adj c11 c10)
         (adj x03 c03)
         (adj x08 c08)
         (at a0 c11) (at a1 c08) (at a2 c03))
  (:world-designated w0
    (goal a0 c00)
    (goal a1 c03)
    (goal a2 c08))
  (:world-nondesignated w1
    (goal a0 x03)
    (goal a1 c03)
    (goal a2 c08))
  (:world-nondesignated w2
    (goal a0 c00)
    (goal a1 x08)
    (goal a2 c08))
  (:world-nondesignated w3
    (goal a0 x03)
    (goal a1 x08)
    (goal a2 c08))
  (:world-nondesignated w4
    (goal a0 c00)
    (goal a1 c03)
    (goal a2 c11))
  (:world-nondesignated w5
    (goal a0 x03)
    (goal a1 c03)
    (goal a2 c11))
  (:world-nondesignated w6
    (goal a0 c00)
    (goal a1 x08)
    (goal a2 c11))
  (:world-nondesignated w7
    (goal a0 x03)
    (goal a1 x08)
    (goal a2 c11))
  (:observability (partition (w0 w2 w4 w6) (w1 w3 w5 w7)) a0)
  (:observability (partition (w0 w1 w4 w5) (w2 w3 w6 w7)) a1)
  (:observability (partition (w0 w1 w2 w3) (w4 w5 w6 w7)) a2)
  (:goal (forall (?a - agent) (stopped ?a))))

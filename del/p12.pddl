; MAPF/DU corridor problem (DEL version) with 4 agents and 8 nodes
; Author: Thorsten Engesser
(define (problem mapfdu_4_8)
  (:domain mapfdu)
  (:objects a0 a1 a2 a3 - agent
            c00 c01 c02 c03 c04 x01 x02 x03 - pos)
  (:init (adj c00 c01)
         (adj c01 c00) (adj c01 c02) (adj c01 x01)
         (adj c02 c01) (adj c02 c03) (adj c02 x02)
         (adj c03 c02) (adj c03 c04) (adj c03 x03)
         (adj c04 c03)
         (adj x01 c01)
         (adj x02 c02)
         (adj x03 c03)
         (at a0 c04) (at a1 c03) (at a2 c02) (at a3 c01))
  (:world-designated w0
    (goal a0 c00)
    (goal a1 c01)
    (goal a2 c02)
    (goal a3 c03))
  (:world-nondesignated w1
    (goal a0 x01)
    (goal a1 c01)
    (goal a2 c02)
    (goal a3 c03))
  (:world-nondesignated w2
    (goal a0 c00)
    (goal a1 x02)
    (goal a2 c02)
    (goal a3 c03))
  (:world-nondesignated w3
    (goal a0 x01)
    (goal a1 x02)
    (goal a2 c02)
    (goal a3 c03))
  (:world-nondesignated w4
    (goal a0 c00)
    (goal a1 c01)
    (goal a2 x03)
    (goal a3 c03))
  (:world-nondesignated w5
    (goal a0 x01)
    (goal a1 c01)
    (goal a2 x03)
    (goal a3 c03))
  (:world-nondesignated w6
    (goal a0 c00)
    (goal a1 x02)
    (goal a2 x03)
    (goal a3 c03))
  (:world-nondesignated w7
    (goal a0 x01)
    (goal a1 x02)
    (goal a2 x03)
    (goal a3 c03))
  (:world-nondesignated w8
    (goal a0 c00)
    (goal a1 c01)
    (goal a2 c02)
    (goal a3 c04))
  (:world-nondesignated w9
    (goal a0 x01)
    (goal a1 c01)
    (goal a2 c02)
    (goal a3 c04))
  (:world-nondesignated w10
    (goal a0 c00)
    (goal a1 x02)
    (goal a2 c02)
    (goal a3 c04))
  (:world-nondesignated w11
    (goal a0 x01)
    (goal a1 x02)
    (goal a2 c02)
    (goal a3 c04))
  (:world-nondesignated w12
    (goal a0 c00)
    (goal a1 c01)
    (goal a2 x03)
    (goal a3 c04))
  (:world-nondesignated w13
    (goal a0 x01)
    (goal a1 c01)
    (goal a2 x03)
    (goal a3 c04))
  (:world-nondesignated w14
    (goal a0 c00)
    (goal a1 x02)
    (goal a2 x03)
    (goal a3 c04))
  (:world-nondesignated w15
    (goal a0 x01)
    (goal a1 x02)
    (goal a2 x03)
    (goal a3 c04))
  (:observability (partition (w0 w2 w4 w6 w8 w10 w12 w14) (w1 w3 w5 w7 w9 w11 w13 w15)) a0)
  (:observability (partition (w0 w1 w4 w5 w8 w9 w12 w13) (w2 w3 w6 w7 w10 w11 w14 w15)) a1)
  (:observability (partition (w0 w1 w2 w3 w8 w9 w10 w11) (w4 w5 w6 w7 w12 w13 w14 w15)) a2)
  (:observability (partition (w0 w1 w2 w3 w4 w5 w6 w7) (w8 w9 w10 w11 w12 w13 w14 w15)) a3)
  (:goal (forall (?a - agent) (stopped ?a))))

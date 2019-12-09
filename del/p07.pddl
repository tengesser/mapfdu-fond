; MAPF/DU corridor problem (DEL version) with 3 agents and 6 nodes
; Author: Thorsten Engesser
(define (problem mapfdu_3_6)
  (:domain mapfdu)
  (:objects a0 a1 a2 - agent
            c00 c01 c02 c03 x01 x02 - pos)
  (:init (adj c00 c01)
         (adj c01 c00) (adj c01 c02) (adj c01 x01)
         (adj c02 c01) (adj c02 c03) (adj c02 x02)
         (adj c03 c02)
         (adj x01 c01)
         (adj x02 c02)
         (at a0 c03) (at a1 c02) (at a2 c01))
  (:world-designated w0
    (goal a0 c00)
    (goal a1 c01)
    (goal a2 c02))
  (:world-nondesignated w1
    (goal a0 x01)
    (goal a1 c01)
    (goal a2 c02))
  (:world-nondesignated w2
    (goal a0 c00)
    (goal a1 x02)
    (goal a2 c02))
  (:world-nondesignated w3
    (goal a0 x01)
    (goal a1 x02)
    (goal a2 c02))
  (:world-nondesignated w4
    (goal a0 c00)
    (goal a1 c01)
    (goal a2 c03))
  (:world-nondesignated w5
    (goal a0 x01)
    (goal a1 c01)
    (goal a2 c03))
  (:world-nondesignated w6
    (goal a0 c00)
    (goal a1 x02)
    (goal a2 c03))
  (:world-nondesignated w7
    (goal a0 x01)
    (goal a1 x02)
    (goal a2 c03))
  (:observability (partition (w0 w2 w4 w6) (w1 w3 w5 w7)) a0)
  (:observability (partition (w0 w1 w4 w5) (w2 w3 w6 w7)) a1)
  (:observability (partition (w0 w1 w2 w3) (w4 w5 w6 w7)) a2)
  (:goal (forall (?a - agent) (stopped ?a))))

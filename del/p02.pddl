; MAPF/DU corridor problem (DEL version) with 2 agents and 6 nodes
; Author: Thorsten Engesser
(define (problem mapfdu_2_6)
  (:domain mapfdu)
  (:objects a0 a1 - agent
            c00 c01 c02 c03 c04 x02 - pos)
  (:init (adj c00 c01)
         (adj c01 c00) (adj c01 c02)
         (adj c02 c01) (adj c02 c03) (adj c02 x02)
         (adj c03 c02) (adj c03 c04)
         (adj c04 c03)
         (adj x02 c02)
         (at a0 c04) (at a1 c02))
  (:world-designated w0
    (goal a0 c00)
    (goal a1 c02))
  (:world-nondesignated w1
    (goal a0 x02)
    (goal a1 c02))
  (:world-nondesignated w2
    (goal a0 c00)
    (goal a1 c04))
  (:world-nondesignated w3
    (goal a0 x02)
    (goal a1 c04))
  (:observability (partition (w0 w2) (w1 w3)) a0)
  (:observability (partition (w0 w1) (w2 w3)) a1)
  (:goal (forall (?a - agent) (stopped ?a))))

; MAPF/DU corridor problem (DEL version) with 3 agents and 8 nodes
; Author: Thorsten Engesser
(define (problem mapfdu_3_8)
  (:domain mapfdu)
  (:objects a0 a1 a2 - agent
            c00 c01 c02 c03 c04 c05 x01 x04 - pos)
  (:init (adj c00 c01)
         (adj c01 c00) (adj c01 c02) (adj c01 x01)
         (adj c02 c01) (adj c02 c03)
         (adj c03 c02) (adj c03 c04)
         (adj c04 c03) (adj c04 c05) (adj c04 x04)
         (adj c05 c04)
         (adj x01 c01)
         (adj x04 c04)
         (at a0 c05) (at a1 c04) (at a2 c01))
  (:world-designated w0
    (goal a0 c00)
    (goal a1 c01)
    (goal a2 c04))
  (:world-nondesignated w1
    (goal a0 x01)
    (goal a1 c01)
    (goal a2 c04))
  (:world-nondesignated w2
    (goal a0 c00)
    (goal a1 x04)
    (goal a2 c04))
  (:world-nondesignated w3
    (goal a0 x01)
    (goal a1 x04)
    (goal a2 c04))
  (:world-nondesignated w4
    (goal a0 c00)
    (goal a1 c01)
    (goal a2 c05))
  (:world-nondesignated w5
    (goal a0 x01)
    (goal a1 c01)
    (goal a2 c05))
  (:world-nondesignated w6
    (goal a0 c00)
    (goal a1 x04)
    (goal a2 c05))
  (:world-nondesignated w7
    (goal a0 x01)
    (goal a1 x04)
    (goal a2 c05))
  (:observability (partition (w0 w2 w4 w6) (w1 w3 w5 w7)) a0)
  (:observability (partition (w0 w1 w4 w5) (w2 w3 w6 w7)) a1)
  (:observability (partition (w0 w1 w2 w3) (w4 w5 w6 w7)) a2)
  (:goal (forall (?a - agent) (stopped ?a))))

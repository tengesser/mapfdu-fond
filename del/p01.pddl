; MAPF/DU corridor problem (DEL version) with 2 agents and 4 nodes
; Author: Thorsten Engesser
(define (problem mapfdu_2_4)
  (:domain mapfdu)
  (:objects a0 a1 - agent
            c00 c01 c02 x01 - pos)
  (:init (adj c00 c01)
         (adj c01 c00) (adj c01 c02) (adj c01 x01)
         (adj c02 c01)
         (adj x01 c01)
         (at a0 c02) (at a1 c01))
  (:world-designated w0
    (goal a0 c00)
    (goal a1 c01))
  (:world-nondesignated w1
    (goal a0 x01)
    (goal a1 c01))
  (:world-nondesignated w2
    (goal a0 c00)
    (goal a1 c02))
  (:world-nondesignated w3
    (goal a0 x01)
    (goal a1 c02))
  (:observability (partition (w0 w2) (w1 w3)) a0)
  (:observability (partition (w0 w1) (w2 w3)) a1)
  (:goal (forall (?a - agent) (stopped ?a))))

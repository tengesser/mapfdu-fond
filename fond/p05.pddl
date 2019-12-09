; MAPF/DU corridor problem (FOND version) with 2 agents and 12 nodes
; Author: Thorsten Engesser
(define (problem mapfdu_2_12)
  (:domain mapfdu_2_agents)
  (:objects a0 a1 - agt
            c00 c01 c02 c03 c04 c05 c06 c07 c08 c09 c10 x05 - pos)
  (:init (adj c00 c01)
         (adj c01 c00) (adj c01 c02)
         (adj c02 c01) (adj c02 c03)
         (adj c03 c02) (adj c03 c04)
         (adj c04 c03) (adj c04 c05)
         (adj c05 c04) (adj c05 c06) (adj c05 x05)
         (adj c06 c05) (adj c06 c07)
         (adj c07 c06) (adj c07 c08)
         (adj c08 c07) (adj c08 c09)
         (adj c09 c08) (adj c09 c10)
         (adj c10 c09)
         (adj x05 c05)
         (at a0 c10) (at a1 c05)
         (ind a0 w0 w2) (ind a0 w1 w3) (ind a0 w2 w0) (ind a0 w3 w1)
         (ind a1 w0 w1) (ind a1 w1 w0) (ind a1 w2 w3) (ind a1 w3 w2)
         (goal w0 a0 c00) (goal w0 a1 c05)
         (goal w1 a0 x05) (goal w1 a1 c05)
         (goal w2 a0 c00) (goal w2 a1 c10)
         (goal w3 a0 x05) (goal w3 a1 c10)
         (des w0) (next-choose))
  (:goal (and (stopped a0) (stopped a1)
              (imply (des w0) (and (at a0 c00) (at a1 c05)))
              (imply (des w1) (and (at a0 x05) (at a1 c05)))
              (imply (des w2) (and (at a0 c00) (at a1 c10)))
              (imply (des w3) (and (at a0 x05) (at a1 c10))))))

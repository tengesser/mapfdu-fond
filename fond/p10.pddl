; MAPF/DU corridor problem (FOND version) with 3 agents and 12 nodes
; Author: Thorsten Engesser
(define (problem mapfdu_3_12)
  (:domain mapfdu_3_agents)
  (:objects a0 a1 a2 - agt
            c00 c01 c02 c03 c04 c05 c06 c07 c08 c09 x02 x07 - pos)
  (:init (adj c00 c01)
         (adj c01 c00) (adj c01 c02)
         (adj c02 c01) (adj c02 c03) (adj c02 x02)
         (adj c03 c02) (adj c03 c04)
         (adj c04 c03) (adj c04 c05)
         (adj c05 c04) (adj c05 c06)
         (adj c06 c05) (adj c06 c07)
         (adj c07 c06) (adj c07 c08) (adj c07 x07)
         (adj c08 c07) (adj c08 c09)
         (adj c09 c08)
         (adj x02 c02)
         (adj x07 c07)
         (at a0 c09) (at a1 c07) (at a2 c02)
         (ind a0 w0 w2) (ind a0 w0 w4) (ind a0 w0 w6) (ind a0 w1 w3) (ind a0 w1 w5) (ind a0 w1 w7) (ind a0 w2 w0) (ind a0 w2 w4) (ind a0 w2 w6) (ind a0 w3 w1) (ind a0 w3 w5) (ind a0 w3 w7) (ind a0 w4 w0) (ind a0 w4 w2) (ind a0 w4 w6) (ind a0 w5 w1) (ind a0 w5 w3) (ind a0 w5 w7) (ind a0 w6 w0) (ind a0 w6 w2) (ind a0 w6 w4) (ind a0 w7 w1) (ind a0 w7 w3) (ind a0 w7 w5)
         (ind a1 w0 w1) (ind a1 w0 w4) (ind a1 w0 w5) (ind a1 w1 w0) (ind a1 w1 w4) (ind a1 w1 w5) (ind a1 w2 w3) (ind a1 w2 w6) (ind a1 w2 w7) (ind a1 w3 w2) (ind a1 w3 w6) (ind a1 w3 w7) (ind a1 w4 w0) (ind a1 w4 w1) (ind a1 w4 w5) (ind a1 w5 w0) (ind a1 w5 w1) (ind a1 w5 w4) (ind a1 w6 w2) (ind a1 w6 w3) (ind a1 w6 w7) (ind a1 w7 w2) (ind a1 w7 w3) (ind a1 w7 w6)
         (ind a2 w0 w1) (ind a2 w0 w2) (ind a2 w0 w3) (ind a2 w1 w0) (ind a2 w1 w2) (ind a2 w1 w3) (ind a2 w2 w0) (ind a2 w2 w1) (ind a2 w2 w3) (ind a2 w3 w0) (ind a2 w3 w1) (ind a2 w3 w2) (ind a2 w4 w5) (ind a2 w4 w6) (ind a2 w4 w7) (ind a2 w5 w4) (ind a2 w5 w6) (ind a2 w5 w7) (ind a2 w6 w4) (ind a2 w6 w5) (ind a2 w6 w7) (ind a2 w7 w4) (ind a2 w7 w5) (ind a2 w7 w6)
         (goal w0 a0 c00) (goal w0 a1 c02) (goal w0 a2 c07)
         (goal w1 a0 x02) (goal w1 a1 c02) (goal w1 a2 c07)
         (goal w2 a0 c00) (goal w2 a1 x07) (goal w2 a2 c07)
         (goal w3 a0 x02) (goal w3 a1 x07) (goal w3 a2 c07)
         (goal w4 a0 c00) (goal w4 a1 c02) (goal w4 a2 c09)
         (goal w5 a0 x02) (goal w5 a1 c02) (goal w5 a2 c09)
         (goal w6 a0 c00) (goal w6 a1 x07) (goal w6 a2 c09)
         (goal w7 a0 x02) (goal w7 a1 x07) (goal w7 a2 c09)
         (des w0) (next-choose))
  (:goal (and (stopped a0) (stopped a1) (stopped a2)
              (imply (des w0) (and (at a0 c00) (at a1 c02) (at a2 c07)))
              (imply (des w1) (and (at a0 x02) (at a1 c02) (at a2 c07)))
              (imply (des w2) (and (at a0 c00) (at a1 x07) (at a2 c07)))
              (imply (des w3) (and (at a0 x02) (at a1 x07) (at a2 c07)))
              (imply (des w4) (and (at a0 c00) (at a1 c02) (at a2 c09)))
              (imply (des w5) (and (at a0 x02) (at a1 c02) (at a2 c09)))
              (imply (des w6) (and (at a0 c00) (at a1 x07) (at a2 c09)))
              (imply (des w7) (and (at a0 x02) (at a1 x07) (at a2 c09))))))

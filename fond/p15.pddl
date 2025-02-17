; MAPF/DU corridor problem (FOND version) with 4 agents and 14 nodes
; Author: Thorsten Engesser
(define (problem mapfdu_4_14)
  (:domain mapfdu_4_agents)
  (:objects a0 a1 a2 a3 - agt
            c00 c01 c02 c03 c04 c05 c06 c07 c08 c09 c10 x02 x05 x08 - pos)
  (:init (adj c00 c01)
         (adj c01 c00) (adj c01 c02)
         (adj c02 c01) (adj c02 c03) (adj c02 x02)
         (adj c03 c02) (adj c03 c04)
         (adj c04 c03) (adj c04 c05)
         (adj c05 c04) (adj c05 c06) (adj c05 x05)
         (adj c06 c05) (adj c06 c07)
         (adj c07 c06) (adj c07 c08)
         (adj c08 c07) (adj c08 c09) (adj c08 x08)
         (adj c09 c08) (adj c09 c10)
         (adj c10 c09)
         (adj x02 c02)
         (adj x05 c05)
         (adj x08 c08)
         (at a0 c10) (at a1 c08) (at a2 c05) (at a3 c02)
         (ind a0 w0 w2) (ind a0 w0 w4) (ind a0 w0 w6) (ind a0 w0 w8) (ind a0 w0 w10) (ind a0 w0 w12) (ind a0 w0 w14) (ind a0 w1 w3) (ind a0 w1 w5) (ind a0 w1 w7) (ind a0 w1 w9) (ind a0 w1 w11) (ind a0 w1 w13) (ind a0 w1 w15) (ind a0 w2 w0) (ind a0 w2 w4) (ind a0 w2 w6) (ind a0 w2 w8) (ind a0 w2 w10) (ind a0 w2 w12) (ind a0 w2 w14) (ind a0 w3 w1) (ind a0 w3 w5) (ind a0 w3 w7) (ind a0 w3 w9) (ind a0 w3 w11) (ind a0 w3 w13) (ind a0 w3 w15) (ind a0 w4 w0) (ind a0 w4 w2) (ind a0 w4 w6) (ind a0 w4 w8) (ind a0 w4 w10) (ind a0 w4 w12) (ind a0 w4 w14) (ind a0 w5 w1) (ind a0 w5 w3) (ind a0 w5 w7) (ind a0 w5 w9) (ind a0 w5 w11) (ind a0 w5 w13) (ind a0 w5 w15) (ind a0 w6 w0) (ind a0 w6 w2) (ind a0 w6 w4) (ind a0 w6 w8) (ind a0 w6 w10) (ind a0 w6 w12) (ind a0 w6 w14) (ind a0 w7 w1) (ind a0 w7 w3) (ind a0 w7 w5) (ind a0 w7 w9) (ind a0 w7 w11) (ind a0 w7 w13) (ind a0 w7 w15) (ind a0 w8 w0) (ind a0 w8 w2) (ind a0 w8 w4) (ind a0 w8 w6) (ind a0 w8 w10) (ind a0 w8 w12) (ind a0 w8 w14) (ind a0 w9 w1) (ind a0 w9 w3) (ind a0 w9 w5) (ind a0 w9 w7) (ind a0 w9 w11) (ind a0 w9 w13) (ind a0 w9 w15) (ind a0 w10 w0) (ind a0 w10 w2) (ind a0 w10 w4) (ind a0 w10 w6) (ind a0 w10 w8) (ind a0 w10 w12) (ind a0 w10 w14) (ind a0 w11 w1) (ind a0 w11 w3) (ind a0 w11 w5) (ind a0 w11 w7) (ind a0 w11 w9) (ind a0 w11 w13) (ind a0 w11 w15) (ind a0 w12 w0) (ind a0 w12 w2) (ind a0 w12 w4) (ind a0 w12 w6) (ind a0 w12 w8) (ind a0 w12 w10) (ind a0 w12 w14) (ind a0 w13 w1) (ind a0 w13 w3) (ind a0 w13 w5) (ind a0 w13 w7) (ind a0 w13 w9) (ind a0 w13 w11) (ind a0 w13 w15) (ind a0 w14 w0) (ind a0 w14 w2) (ind a0 w14 w4) (ind a0 w14 w6) (ind a0 w14 w8) (ind a0 w14 w10) (ind a0 w14 w12) (ind a0 w15 w1) (ind a0 w15 w3) (ind a0 w15 w5) (ind a0 w15 w7) (ind a0 w15 w9) (ind a0 w15 w11) (ind a0 w15 w13)
         (ind a1 w0 w1) (ind a1 w0 w4) (ind a1 w0 w5) (ind a1 w0 w8) (ind a1 w0 w9) (ind a1 w0 w12) (ind a1 w0 w13) (ind a1 w1 w0) (ind a1 w1 w4) (ind a1 w1 w5) (ind a1 w1 w8) (ind a1 w1 w9) (ind a1 w1 w12) (ind a1 w1 w13) (ind a1 w2 w3) (ind a1 w2 w6) (ind a1 w2 w7) (ind a1 w2 w10) (ind a1 w2 w11) (ind a1 w2 w14) (ind a1 w2 w15) (ind a1 w3 w2) (ind a1 w3 w6) (ind a1 w3 w7) (ind a1 w3 w10) (ind a1 w3 w11) (ind a1 w3 w14) (ind a1 w3 w15) (ind a1 w4 w0) (ind a1 w4 w1) (ind a1 w4 w5) (ind a1 w4 w8) (ind a1 w4 w9) (ind a1 w4 w12) (ind a1 w4 w13) (ind a1 w5 w0) (ind a1 w5 w1) (ind a1 w5 w4) (ind a1 w5 w8) (ind a1 w5 w9) (ind a1 w5 w12) (ind a1 w5 w13) (ind a1 w6 w2) (ind a1 w6 w3) (ind a1 w6 w7) (ind a1 w6 w10) (ind a1 w6 w11) (ind a1 w6 w14) (ind a1 w6 w15) (ind a1 w7 w2) (ind a1 w7 w3) (ind a1 w7 w6) (ind a1 w7 w10) (ind a1 w7 w11) (ind a1 w7 w14) (ind a1 w7 w15) (ind a1 w8 w0) (ind a1 w8 w1) (ind a1 w8 w4) (ind a1 w8 w5) (ind a1 w8 w9) (ind a1 w8 w12) (ind a1 w8 w13) (ind a1 w9 w0) (ind a1 w9 w1) (ind a1 w9 w4) (ind a1 w9 w5) (ind a1 w9 w8) (ind a1 w9 w12) (ind a1 w9 w13) (ind a1 w10 w2) (ind a1 w10 w3) (ind a1 w10 w6) (ind a1 w10 w7) (ind a1 w10 w11) (ind a1 w10 w14) (ind a1 w10 w15) (ind a1 w11 w2) (ind a1 w11 w3) (ind a1 w11 w6) (ind a1 w11 w7) (ind a1 w11 w10) (ind a1 w11 w14) (ind a1 w11 w15) (ind a1 w12 w0) (ind a1 w12 w1) (ind a1 w12 w4) (ind a1 w12 w5) (ind a1 w12 w8) (ind a1 w12 w9) (ind a1 w12 w13) (ind a1 w13 w0) (ind a1 w13 w1) (ind a1 w13 w4) (ind a1 w13 w5) (ind a1 w13 w8) (ind a1 w13 w9) (ind a1 w13 w12) (ind a1 w14 w2) (ind a1 w14 w3) (ind a1 w14 w6) (ind a1 w14 w7) (ind a1 w14 w10) (ind a1 w14 w11) (ind a1 w14 w15) (ind a1 w15 w2) (ind a1 w15 w3) (ind a1 w15 w6) (ind a1 w15 w7) (ind a1 w15 w10) (ind a1 w15 w11) (ind a1 w15 w14)
         (ind a2 w0 w1) (ind a2 w0 w2) (ind a2 w0 w3) (ind a2 w0 w8) (ind a2 w0 w9) (ind a2 w0 w10) (ind a2 w0 w11) (ind a2 w1 w0) (ind a2 w1 w2) (ind a2 w1 w3) (ind a2 w1 w8) (ind a2 w1 w9) (ind a2 w1 w10) (ind a2 w1 w11) (ind a2 w2 w0) (ind a2 w2 w1) (ind a2 w2 w3) (ind a2 w2 w8) (ind a2 w2 w9) (ind a2 w2 w10) (ind a2 w2 w11) (ind a2 w3 w0) (ind a2 w3 w1) (ind a2 w3 w2) (ind a2 w3 w8) (ind a2 w3 w9) (ind a2 w3 w10) (ind a2 w3 w11) (ind a2 w4 w5) (ind a2 w4 w6) (ind a2 w4 w7) (ind a2 w4 w12) (ind a2 w4 w13) (ind a2 w4 w14) (ind a2 w4 w15) (ind a2 w5 w4) (ind a2 w5 w6) (ind a2 w5 w7) (ind a2 w5 w12) (ind a2 w5 w13) (ind a2 w5 w14) (ind a2 w5 w15) (ind a2 w6 w4) (ind a2 w6 w5) (ind a2 w6 w7) (ind a2 w6 w12) (ind a2 w6 w13) (ind a2 w6 w14) (ind a2 w6 w15) (ind a2 w7 w4) (ind a2 w7 w5) (ind a2 w7 w6) (ind a2 w7 w12) (ind a2 w7 w13) (ind a2 w7 w14) (ind a2 w7 w15) (ind a2 w8 w0) (ind a2 w8 w1) (ind a2 w8 w2) (ind a2 w8 w3) (ind a2 w8 w9) (ind a2 w8 w10) (ind a2 w8 w11) (ind a2 w9 w0) (ind a2 w9 w1) (ind a2 w9 w2) (ind a2 w9 w3) (ind a2 w9 w8) (ind a2 w9 w10) (ind a2 w9 w11) (ind a2 w10 w0) (ind a2 w10 w1) (ind a2 w10 w2) (ind a2 w10 w3) (ind a2 w10 w8) (ind a2 w10 w9) (ind a2 w10 w11) (ind a2 w11 w0) (ind a2 w11 w1) (ind a2 w11 w2) (ind a2 w11 w3) (ind a2 w11 w8) (ind a2 w11 w9) (ind a2 w11 w10) (ind a2 w12 w4) (ind a2 w12 w5) (ind a2 w12 w6) (ind a2 w12 w7) (ind a2 w12 w13) (ind a2 w12 w14) (ind a2 w12 w15) (ind a2 w13 w4) (ind a2 w13 w5) (ind a2 w13 w6) (ind a2 w13 w7) (ind a2 w13 w12) (ind a2 w13 w14) (ind a2 w13 w15) (ind a2 w14 w4) (ind a2 w14 w5) (ind a2 w14 w6) (ind a2 w14 w7) (ind a2 w14 w12) (ind a2 w14 w13) (ind a2 w14 w15) (ind a2 w15 w4) (ind a2 w15 w5) (ind a2 w15 w6) (ind a2 w15 w7) (ind a2 w15 w12) (ind a2 w15 w13) (ind a2 w15 w14)
         (ind a3 w0 w1) (ind a3 w0 w2) (ind a3 w0 w3) (ind a3 w0 w4) (ind a3 w0 w5) (ind a3 w0 w6) (ind a3 w0 w7) (ind a3 w1 w0) (ind a3 w1 w2) (ind a3 w1 w3) (ind a3 w1 w4) (ind a3 w1 w5) (ind a3 w1 w6) (ind a3 w1 w7) (ind a3 w2 w0) (ind a3 w2 w1) (ind a3 w2 w3) (ind a3 w2 w4) (ind a3 w2 w5) (ind a3 w2 w6) (ind a3 w2 w7) (ind a3 w3 w0) (ind a3 w3 w1) (ind a3 w3 w2) (ind a3 w3 w4) (ind a3 w3 w5) (ind a3 w3 w6) (ind a3 w3 w7) (ind a3 w4 w0) (ind a3 w4 w1) (ind a3 w4 w2) (ind a3 w4 w3) (ind a3 w4 w5) (ind a3 w4 w6) (ind a3 w4 w7) (ind a3 w5 w0) (ind a3 w5 w1) (ind a3 w5 w2) (ind a3 w5 w3) (ind a3 w5 w4) (ind a3 w5 w6) (ind a3 w5 w7) (ind a3 w6 w0) (ind a3 w6 w1) (ind a3 w6 w2) (ind a3 w6 w3) (ind a3 w6 w4) (ind a3 w6 w5) (ind a3 w6 w7) (ind a3 w7 w0) (ind a3 w7 w1) (ind a3 w7 w2) (ind a3 w7 w3) (ind a3 w7 w4) (ind a3 w7 w5) (ind a3 w7 w6) (ind a3 w8 w9) (ind a3 w8 w10) (ind a3 w8 w11) (ind a3 w8 w12) (ind a3 w8 w13) (ind a3 w8 w14) (ind a3 w8 w15) (ind a3 w9 w8) (ind a3 w9 w10) (ind a3 w9 w11) (ind a3 w9 w12) (ind a3 w9 w13) (ind a3 w9 w14) (ind a3 w9 w15) (ind a3 w10 w8) (ind a3 w10 w9) (ind a3 w10 w11) (ind a3 w10 w12) (ind a3 w10 w13) (ind a3 w10 w14) (ind a3 w10 w15) (ind a3 w11 w8) (ind a3 w11 w9) (ind a3 w11 w10) (ind a3 w11 w12) (ind a3 w11 w13) (ind a3 w11 w14) (ind a3 w11 w15) (ind a3 w12 w8) (ind a3 w12 w9) (ind a3 w12 w10) (ind a3 w12 w11) (ind a3 w12 w13) (ind a3 w12 w14) (ind a3 w12 w15) (ind a3 w13 w8) (ind a3 w13 w9) (ind a3 w13 w10) (ind a3 w13 w11) (ind a3 w13 w12) (ind a3 w13 w14) (ind a3 w13 w15) (ind a3 w14 w8) (ind a3 w14 w9) (ind a3 w14 w10) (ind a3 w14 w11) (ind a3 w14 w12) (ind a3 w14 w13) (ind a3 w14 w15) (ind a3 w15 w8) (ind a3 w15 w9) (ind a3 w15 w10) (ind a3 w15 w11) (ind a3 w15 w12) (ind a3 w15 w13) (ind a3 w15 w14)
         (goal w0 a0 c00) (goal w0 a1 c02) (goal w0 a2 c05) (goal w0 a3 c08)
         (goal w1 a0 x02) (goal w1 a1 c02) (goal w1 a2 c05) (goal w1 a3 c08)
         (goal w2 a0 c00) (goal w2 a1 x05) (goal w2 a2 c05) (goal w2 a3 c08)
         (goal w3 a0 x02) (goal w3 a1 x05) (goal w3 a2 c05) (goal w3 a3 c08)
         (goal w4 a0 c00) (goal w4 a1 c02) (goal w4 a2 x08) (goal w4 a3 c08)
         (goal w5 a0 x02) (goal w5 a1 c02) (goal w5 a2 x08) (goal w5 a3 c08)
         (goal w6 a0 c00) (goal w6 a1 x05) (goal w6 a2 x08) (goal w6 a3 c08)
         (goal w7 a0 x02) (goal w7 a1 x05) (goal w7 a2 x08) (goal w7 a3 c08)
         (goal w8 a0 c00) (goal w8 a1 c02) (goal w8 a2 c05) (goal w8 a3 c10)
         (goal w9 a0 x02) (goal w9 a1 c02) (goal w9 a2 c05) (goal w9 a3 c10)
         (goal w10 a0 c00) (goal w10 a1 x05) (goal w10 a2 c05) (goal w10 a3 c10)
         (goal w11 a0 x02) (goal w11 a1 x05) (goal w11 a2 c05) (goal w11 a3 c10)
         (goal w12 a0 c00) (goal w12 a1 c02) (goal w12 a2 x08) (goal w12 a3 c10)
         (goal w13 a0 x02) (goal w13 a1 c02) (goal w13 a2 x08) (goal w13 a3 c10)
         (goal w14 a0 c00) (goal w14 a1 x05) (goal w14 a2 x08) (goal w14 a3 c10)
         (goal w15 a0 x02) (goal w15 a1 x05) (goal w15 a2 x08) (goal w15 a3 c10)
         (des w0) (next-choose))
  (:goal (and (stopped a0) (stopped a1) (stopped a2) (stopped a3)
              (imply (des w0) (and (at a0 c00) (at a1 c02) (at a2 c05) (at a3 c08)))
              (imply (des w1) (and (at a0 x02) (at a1 c02) (at a2 c05) (at a3 c08)))
              (imply (des w2) (and (at a0 c00) (at a1 x05) (at a2 c05) (at a3 c08)))
              (imply (des w3) (and (at a0 x02) (at a1 x05) (at a2 c05) (at a3 c08)))
              (imply (des w4) (and (at a0 c00) (at a1 c02) (at a2 x08) (at a3 c08)))
              (imply (des w5) (and (at a0 x02) (at a1 c02) (at a2 x08) (at a3 c08)))
              (imply (des w6) (and (at a0 c00) (at a1 x05) (at a2 x08) (at a3 c08)))
              (imply (des w7) (and (at a0 x02) (at a1 x05) (at a2 x08) (at a3 c08)))
              (imply (des w8) (and (at a0 c00) (at a1 c02) (at a2 c05) (at a3 c10)))
              (imply (des w9) (and (at a0 x02) (at a1 c02) (at a2 c05) (at a3 c10)))
              (imply (des w10) (and (at a0 c00) (at a1 x05) (at a2 c05) (at a3 c10)))
              (imply (des w11) (and (at a0 x02) (at a1 x05) (at a2 c05) (at a3 c10)))
              (imply (des w12) (and (at a0 c00) (at a1 c02) (at a2 x08) (at a3 c10)))
              (imply (des w13) (and (at a0 x02) (at a1 c02) (at a2 x08) (at a3 c10)))
              (imply (des w14) (and (at a0 c00) (at a1 x05) (at a2 x08) (at a3 c10)))
              (imply (des w15) (and (at a0 x02) (at a1 x05) (at a2 x08) (at a3 c10))))))

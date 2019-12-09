; MAPF/DU domain (DEL version)
; Author: Thorsten Engesser
(define (domain mapfdu)
  (:types agent pos)
  (:predicates
     (at ?a - agent ?f - pos)
     (adj ?f1 ?f2 - pos)
     (goal ?a - agent ?f - pos)
     (stopped ?a - agent))
  (:action move
     :parameters (?a - agent ?p1 ?p2 - pos)
     :byagent ?a
     :precondition (and (at ?a ?p1) (adj ?p1 ?p2)
                        (not (exists (?a2 - agent) (at ?a2 ?p2)))
                        (not (stopped ?a)))
     :effect (and (not (at ?a ?p1))
                  (at ?a ?p2)))
  (:action announce
     :parameters (?a - agent ?p - pos)
     :byagent ?a
     :precondition (and (at ?a ?p) (goal ?a ?p))
     :effect (stopped ?a)))

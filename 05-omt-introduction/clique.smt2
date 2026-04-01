(set.option : produce-models true)
(declare-const A Bool)
(declare-const B Bool)
(declare-const C Bool)
(declare-const D Bool)

(assert(or (not B) (not D)))

(maximize (+
        (ite A 1 0)
        (ite B 1 0)
        (ite C 1 0)
        (ite D 1 0)
))
(check-sat)
(get-value (A B C D))
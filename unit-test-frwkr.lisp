; Exercise 1: DNA Count
; No. 1
; test case
; deftest
(deftest test-dna-count ()
  (check
    (multiple-value-bind (ng na nc nt) (dna-count "") (and (= ng 0) (= na 0) (= nc 0) (= nt 0)))
    (multiple-value-bind (ng na nc nt) (dna-count "tatc") (and (= ng 0) (= na 1) (= nc 1) (= nt 2)))
    (multiple-value-bind (ng na nc nt) (dna-count "TATG") (and (= ng 1) (= na 1) (= nc 0) (= nt 2)))
    (multiple-value-bind (ng na nc nt) (dna-count "AcGtc") (and (= ng 1) (= na 1) (= nc 2) (= nt 1)))))

; Exercise 1: DNA Count
; No. 2
; test case
; deftest
(deftest test-gc-ratio ()
  (check
    (not (gc-ratio ""))
    (equal (gc-ratio "AcGtc") 3/5)
    (equal (gc-ratio "tagac") 2/5)
    (equal (gc-ratio "AAT") 0)))


; Exercise 2: Next Prime
; No. 1
; test case
; deftest
(deftest test-next-prime ()
  (check
    (not (next-prime 6))
    (= (next-prime 5) 7)
    (= (next-prime 569) 571)))
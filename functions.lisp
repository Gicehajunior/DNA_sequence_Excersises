
(setq *print-case* :capitalize)

; Exercise 1:
; No. 1: - DNA Count
; Write a function called DNA-COUNT that counts and returns the number of each nucleotide in the given string sequence regardless of whether it's uppercase or lowercase.

; Your function must return 4 integer values each representing its respective nucleotide count.

; The unit test below includes test cases that your solution for this exercise must pass.

(defun dna-count(substring string)
  (do ((count -1 (+ count 1))
       (position -1 (search substring string :start2 (1+ position))))
      ((null position) count)))


(defvar *dna_sequence* "CACTGGCATGCAA") ;DNA SEQUENCE 

; nucleotides
(defvar *guanine* "G")
(defvar *adenine* "A")
(defvar *cytosine* "C")
(defvar *thymine* "T")

(write (dna-count *guanine* *dna_sequence*))
(write (dna-count *adenine* *dna_sequence*))
(write (dna-count *cytosine* *dna_sequence*))
(write (dna-count *thymine* *dna_sequence*))

(terpri)

; No. 2: GC-RATIO
; Write a function called GC-RATIO that computes the ratio of Guanine and Cytosine in the sequence. 
; The unit test below includes test cases that your solution for this exercise must pass.

(defun gc-ratio (*guanine_count* *cytosine_count*)
    (write (/ *guanine_count* *cytosine_count*))
)

(defvar *guanine_count* (dna-count *guanine* *dna_sequence*))
(defvar *cytosine_count* (dna-count *cytosine* *dna_sequence*))

(gc-ratio *guanine_count* *cytosine_count*)

(terpri)
; Exercise 2: Next Prime
; The problem of finding ways to test if numbers are prime has fascinated mathematicians since ancient times. 
; One way to test if a number is prime is to find the number’s divisors. 
; The program below finds the smallest integer divisor (greater than 1) of a given number n. 
; It does this by testing n for divisibility by successive integers starting with 2.
(defun divides? (a b)
    (= (rem b a) 0)) ; calculates the remainder of b/a and checks if it is zero.

(defun square (x) (* x x))

(defun find-divisor (n test-divisor)
    (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (t (find-divisor n (+ test-divisor 1)))))

(defun smallest-divisor (n)
    (find-divisor n 2))

(defun prime? (n)
    (= n (smallest-divisor n)))

(write (prime? '24))


; What you are asked

; No 1: Next Prime
; Using function PRIME? defined above, 
; write function NEXT-PRIME that takes a positive prime number n as a parameter, 
; and returns the smallest prime greater than n. See unit test below for examples of what this function returns.
(defun next-prime (n)
    (if (< (prime? n) n) 
        (write (prime? n))))


(next-prime '49)


NB. These are my solutions, in J, to the Dyalog APL Challenge 2016
NB. The problems are described here: http://studentcompetitions-general.s3.amazonaws.com/Dyalog%202016/2016_problems_phase1.pdf

NB. ===========================================================
NB. Problem 1: Statistics, mean
NB.
NB. Write a dfn that takes a numeric array as its 
NB. right argument and returns the mean (average) of the array.
NB. ===========================================================

mean =: +/ % #


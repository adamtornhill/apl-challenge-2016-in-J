NB. These are my solutions, in J, to the Dyalog APL Challenge 2016
NB. The problems are described here: http://studentcompetitions-general.s3.amazonaws.com/Dyalog%202016/2016_problems_phase1.pdf

NB. ===========================================================
NB. Problem 1: Statistics, mean
NB.
NB. Write a dfn that takes a numeric array as its 
NB. right argument and returns the mean (average) of the array.
NB. ===========================================================

mean =: +/ % #

NB. ===========================================================
NB. Problem 2 – Statistics - Median
NB.
NB. Write a dfn that takes a numeric array as its right argument and returns the median of the array. The median is
NB. the number separating the higher half of the vector from the lower half. The median can be found by
NB. arranging all the observations from lowest value to highest value and picking the middle one. If there is an even
NB. number of observations, then there is no single middle value; the median is then usually defined to be the
NB. mean of the two middle values
NB. ===========================================================

NB: (very) inspired by the implementation in stats/base.
sort =: /: ~
midpt=: -:@<:@#
median=: -:@(+/)@((<. , >.)@midpt { sort)

NB. ===========================================================
NB. Problem 4 – Just Meshing Around
NB.
NB. Write a dfn that takes vectors as its left and right arguments and returns them "meshed" into a single vector
NB. formed by alternately taking successive elements from each argument. The arguments do not have to be the
NB. same length.
NB. ===========================================================

NB: Only works when the arguments are of the same length! Need to fix that...
mesh =: , @: ,.
Calculator
Dan Reife

Plan:
Parse the input, character by character
Store the input in a doubly linked list

Parentheses method:
1. Search the list for parentheses; if there are any, recursively Parentheses the inside. If not call the Arithemetic method on the list

Arithmatic method:
1. Search for multiplication; multiply the numbers on either side and replace them and the * with the result in the list
2. Next search for division, checking the number after the / for equality with zero and if so, NaN
3. Next addition, then subtraction

Once the list has only one element, return it
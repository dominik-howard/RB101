## P: Understanding the problem

- Estalish the rules / define the boundaries of the problem
  - Assessing all available information about problem
  - Restating explicit requirements
  - Identifying implicit requirements
- Spend enough time here and don't rush

**General Example** 

Given a string, produce a new string with every other word removed

- Explicit requirements:
  - Input: String
  - Output: new string
  - Remove every other word from input string

- Question:
  - What do we mean by every other word?
  - How do we define a word in this context?
    - Words are delimited by spaces


## E: Examples and Test Cases

- Can confirm or reture assumptions
- Can help to answer questions about implicit requirements
- They can act as assertions which help to codify rules and boundaries of a problem


## D: Data Structures

- Help to reason with data more logically
- Help to interact with data at an implementation level
- Is part of the overall problem solving process
- Closely linked to algorithms
  - algorithm itself is a set of steps from input to output
    - involve strucuturing data in a certain way

## A: Algorithms

- Logical sequence of steps for accomplishing a task or objective
  -  Closely linked to data structures
  - Series of steps to structure data to produce the required output
- Stay abstract / high level
  - Avoid implementation detail
  - Don't worry about efficiency for now


## C: Implementing a solution in code

- Translating solution algorithim to code
- Think about algorithm in context of programming language
  - Language features and constraints
  - Characteristcs of data structures
  - Built in functions and methods
  - Syntax and coding patterns  
- Create test castes
- Code with intent




## Sum Even humber of rows

Imageine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer, the second row two integers, the third row three integers, and so on. Given an integer, representing the number of a particular row, return an integer representing the sum of all the integers in that row.

**Rules and Requirements** 

- Sequence of EVEN integers
- Sequence begins with two
- Integers are consecutive
- Sequence is grouped into rows
- Each row is incrementally largerthan the last: 1, 2, 3...
- Row number equals the number of elements in the row
 - Row 1 has one element
 - Row 2 has two elements
- Input: single integer
 - Itentifies a row, which is a subset of a sequence of integers
- output: a single integer
  - the sum of integers in the row identified by the input integer

- Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ...

2
4, 6
8, 10, 12
14, 16, 18, 20
.....

- How do we create the structure?

**Examples**

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 4 --> sum of integers in row: 68

2 --> 2
4, 6 --> 10
14, 16, 18, 20 --> 68


**Data Structure**

2
4, 6
8, 10, 12
14, 16, 18, 20
.....

- Overall structure represents a sequence
- Within that structure there are individual rows
- Individual rows in a set order in context of sequence
- indidivual rows contain integers
- can assume that integers are in a set order in the context of the sequence

[
  [2],
  [4,6],
  [8,10,12],
  [14,16,18,20],
  .....
]

**Algorithm**

1. Create an empty 'rows' array to contain all of the rows
2. Create a 'row' array and add it to the overall 'rows' array
3. Repeat step 2 until all the necessary rows have been created
  - All rows have been created when the length of the 'rows' array is equal to the input integer
4. Sum the final row
5. Return the sum 

*Problem: Create a row*

Rules: 
- Row is an array
- Array contains integers
- Integers are consecutive even numbers
- Integers in each row form part of an overall larger sequence
- Rows are of different lengths
- Input: the information needed to create the output
  - The start integer
  - The length of the row
- Output: the row itself: '[8. 10, 12]'

Examples: 
start: 2, length: 1 --> [2]
start: 4, length: 2 --> [4,6]
start: 8, length: 3 --> [8,10,12]
start 14, length: 4 --> [14,16,18,20]

Data structures: 
- An array of integers

Algorithm: 
1. Create an empty 'row' to contain the integers
2. Add starting integer
3. increment the starting integer by 2 to get the next integer in the sequence
4. repeat steps 2-3 until the array has reached the correct length
5. return the 'row' array

## Final Thoughts

- Not a completely linear process
- Be prepared to move back and forth between the steps
- Switch from implementation mode to abstract problem solving mode when necessary
- Don't try to problem solve at the code level
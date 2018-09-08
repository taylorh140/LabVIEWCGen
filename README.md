# LabVIEWCGen
Elementry C code Generator For LabVIEW

Pros
 Supports the following constucts:
 * I32
 * SubVI Calls
 * Add
 * multiply
 * Case Structures (kinda)
 
Cons
  * Supports nothing else
  * Requires all wires to be named

## How to Use

  1. Open the C_Converter project
  2. Open the Converter vi
  3. Select a Test vi in the "vi path" control
  4. Run the Converter vi to view the converter c code.
  
## method/theory

Given that LabVIEW is a flow based notation the convertion to c code seems obvious but there are some tricky bits. I have handled the converion in terms of wires meaning that each wire is a c variable, I do recongnize that this is not the most effecient route but there is a long road ahead if I want this thing to work on general code.

### Data structure

I presently handle each call as a preallocated rentrant vi. This means that each vi has its own memory for its inputs and outputs, which is what is stored in the memory. Each subVI gets its own typedef, the c function does not return anything and has a single parameter the context which i named \_C\_ because it looks contexty and is an unlikely name to be reused.

![Alt text](./Doc/test5d.png?raw=true "Test5.vi")

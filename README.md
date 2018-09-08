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


![Test5 vi block diagram](../master/Doc/Test5d.png?raw=true "Test5.vi")
![Test5 vi block diagram](../master/Doc/Test5d1.png?raw=true "Test5d1.vi")
![Test5 vi block diagram](../master/Doc/Test5d2.png?raw=true "Test5d2.vi")
![Test5 vi block diagram](../master/Doc/Test5d3.png?raw=true "Test5d3.vi")


The code above is converted into the following c code along with the data recommended for the header file:

#### Header:
```C
typedef struct Test5_tag
{
  int32_t OutVal;
  int32_t TrxVal;
  int32_t CSelect;
} Test5_t , * Test5_ptr_t;

void Test5(Test5_ptr_t _C_);
```

#### C code:
```C
void Test5(Test5_ptr_t _C_){
  int32_t Val_174;
  int32_t Val_127;
  int32_t Val_432;
  int32_t Val_160;
  int32_t Val_168;
  int32_t Val_205;
  int32_t Val_183 = _C_->CSelect;
  int32_t Val_179 = _C_->TrxVal;
  const int32_t Val_164 = 55;
  
  switch(Val_183){
      
      case  1 :
        Val_168 = Val_179;
        Val_160 = Val_164 * Val_168;
        
        /*Call To Test1*/
        _C_->Test1_1.B = Val_164;
        _C_->Test1_1.A = Val_160;
        Test1(&_C_->Test1_1);
        Val_432 =_C_->Test1_1.C;
        
        Val_174 = Val_432;
      break;
      
      case  2 :
        Val_174 = Val_205;
      break;
      
      default:
        Val_127 = Val_179;
        Val_174 = Val_127;
      break;
  }
  _C_->OutVal = Val_174;
}
```


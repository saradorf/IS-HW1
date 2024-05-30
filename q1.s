# Declare the assembly flavor to use the intel syntax.
.intel_syntax noprefix

# Define a symbol to be exported from this file.
.global my_function

# Declare symbol type to be a function.
.type my_function, @function

# Code follows below.

my_function:
    # This code reads the first argument from the stack into EBX.
    # (If you need, feel free to edit/remove this line).
    

    # <<<< PUT YOUR CODE HERE >>>>
    # TODO:
    # 1. Read the input to the function from EBX.
    # 2. Save the result in the register EAX.
    PUSH EBX
    PUSH EDX
    MOV EBX, DWORD PTR [ESP + 12]
    
    CMP EBX, 1
    JL ZERO

    # loop untill EAX ** 2 >= EBX
    MOV EAX, 0
    LOOP:
        INC EAX
        MOV EDX, EAX
        IMUL EDX, EAX
        CMP EDX, EBX
        JE END
        JL LOOP
    
    # we get to ZERO only if EDX > EBX
    ZERO:
        MOV EAX, 0 

    # we get to END when EAX has the correct value
    END:
        POP EDX
        POP EBX


    # This returns from the function (call this after saving the result in EAX).
    # (If you need, feel free to edit/remove this line).
    RET
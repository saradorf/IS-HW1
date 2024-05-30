# Declare the assembly flavor to use the intel syntax.
.intel_syntax noprefix

# Define a symbol to be exported from this file.
.global my_function

# Declare symbol type to be a function.
.type my_function, @function

# Code follows below.

my_function:
    PUSH EBX
    PUSH ECX

    # This code reads the first argument from the stack into EBX.
    # (If you need, feel free to edit/remove this line).
    MOV EBX, DWORD PTR [ESP + 12]

    # <<<< PUT YOUR CODE HERE >>>>
    # TODO:
    # 1. Read the input to the function from EBX.
    # 2. Save the result in the register EAX.
    CMP EBX, 1
    JL ZERO

    # loop from one to EBX and find the square of the number
    MOV EAX, 0
    LOOP:
        INC EAX
        MOV ECX, EAX
        IMUL ECX, EAX
        CMP ECX, EBX
        JE END
        JB LOOP
    
    ZERO:
        MOV EAX, 0
        JMP END

    END:
        POP ECX
        POP EBX


    # This returns from the function (call this after saving the result in EAX).
    # (If you need, feel free to edit/remove this line).
    RET



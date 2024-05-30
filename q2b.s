# Declare the assembly flavor to use the intel syntax.
.intel_syntax noprefix

# Define a symbol to be exported from this file.
.global my_function

# Declare symbol type to be a function.
.type my_function, @function

# Code follows below.

my_function:
    # <<<< PUT YOUR CODE HERE >>>>
    # TODO:
    # 1. Read the input to the function from the stack.
    # 2. Save the result in the register EAX (and then return!).
    PUSH EBP
    MOV EBP, ESP
    PUSH EBX
    PUSH EDX
    PUSH ECX

    # Read the input to the function from the stack (n)
    MOV EBX, [EBP + 8]

    # Base case: n = 0 (or n < 0)
    MOV EAX, 0
    CMP EBX, 0
    JLE END

    # Base case: n = 1
    MOV EAX, 1
    CMP EBX, 1
    JE END

    # fibonnaci loop
    MOV ECX, 2
    MOV EDX, 1
    MOV EAX, 1
    LOOP:
        CMP ECX, EBX
        JGE END
        PUSH EAX
        IMUL EAX, EAX
        IMUL EDX, EDX
        ADD EAX, EDX
        POP EDX
        INC ECX
        JMP LOOP

    END:
        POP ECX
        POP EDX
        POP EBX
        MOV ESP, EBP
        POP EBP
        RET
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
    # 3. Make sure to include a recursive function call (the recursive function
    #    can be this function, or a helper function defined later in this file).
    PUSH EBP
    MOV EBP, ESP
    PUSH EBX
    PUSH EDX

    # Read the input to the function from the stack (n)
    MOV EBX, [EBP + 8]

    # Base case: n = 0
    MOV EAX, 0
    CMP EBX, 0
    JLE END

    # Base case: n = 1
    MOV EAX, 1
    CMP EBX, 1
    JE END

    # Recursive case: n -1
    DEC EBX
    PUSH EBX
    CALL my_function
    ADD ESP, 4

    MOV EDX, EAX
    IMUL EDX, EAX

    # Recursive case: n -2
    MOV EBX, [EBP + 8]
    SUB EBX, 2
    PUSH EBX
    CALL my_function
    ADD ESP, 4
    IMUL EAX, EAX

    ADD EAX, EDX

    END:
        POP EDX
        POP EBX
        MOV ESP, EBP
        POP EBP
        RET
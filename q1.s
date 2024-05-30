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
    MOV EBX, DWORD PTR [ESP + 4]

    # <<<< PUT YOUR CODE HERE >>>>
    # TODO:
    # 1. Read the input to the function from EBX.
    # 2. Save the result in the register EAX.

    # This returns from the function (call this after saving the result in EAX).
    # (If you need, feel free to edit/remove this line).
    RET

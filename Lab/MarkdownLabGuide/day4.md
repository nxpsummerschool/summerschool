---
title: "Lab 4 exercises"
date:  June 25, 2024
output: pdf_document
---


1. Manual exercise: Write a simple program that does some aditions(make sure they are not optimized). For example:
    ~~~~C
            uint8_t test=0;
            test=test+24;
            test=test+33;
    ~~~~
	
    Send `test` over UART. Using the dissasembly view, the registers and breakpoints, modify the program counter to skip the: +33 adition. 
	To do this, you will need to identify the `adds` command in the dissasembly view that must be skipped and skip it by modifying the PC register. Check in Hercules if you receive the modified result. 
	This showcases a basic attack on an embedded target.

**Note**: To open the dissasembly view right click on any entry in CALL STACK. In order to step through assembly instructions you will need to activate the Instruction Stepping Mode found on the debug pannel after stop.
![Debug](pics/dissasemblyview.png "Debug"){ width=800px}

2. Implement a non time constant memory compare. For example, as an input we receive a input via UART of 3 bytes, where each element can have values between 0 and 2. Non time constant means that we check each byte and and the first mismatch we return "FAIL" on UART, if all bytes pass we return "PASS". Add a "secret key" to compare against on the microcontroller.

    1. Add a delay (1-2 seconds) such that we can distinguish when the function fails after 1 byte or 2 or 3. This is the non time constant part.
    2. Try to see if you can guess the secret password just by using Hercules and seeing how fast it fails. How many attempts do we need to crack the code?
    3. Change the implementtion to be time constant.

3. Implement the Caesar cipher using a TLV encoding on UART. Have separate commands for encryption and decryption. Shift by 3 characters.

4. Use source files from aes to implement a chipher with commands for encryption and decryption. In `Project Files\armgcc\CMakeLists.txt` add `"${ProjDirPath}/../AES.c"` to `add_executable(${MCUX_SDK_PROJECT_NAME}`.
	Use https://www.toolhelper.cn/en/SymmetricEncryption/AES to create a reference to compare against.

    The AES algorithm works on blocks of 16 bytes (input/output):
    Data must be sliced into 16 byte chunks.

5. Implement CBC mode of operation.

    In CBC mode, each plaintext block is XORed with the previous ciphertext block before encryption. The first block uses an IV (Initialization Vector) instead. This helps hide patterns in the data.
    Encrypt the message below.

    `See you at 13 o'clock in class, do not be late!!!`

    Modify input data for decryption algorithm in such way the decrypted text still appears valid.

    !Hint if you change one byte from IV only corresponding byte from first block will be altered.

6. Implement CBC MAC

	CBC-MAC (Cipher Block Chaining Message Authentication Code) is a MAC algorithm based on the CBC mode of a block cipher. It always uses an Initialization Vector (IV) set to zero.

7. Implement CTR mode of operation. (Optional can be done in day5)

    CTR (Counter) mode uses a counter value that is encrypted with a block cipher. The resulting ciphertext is then XORed with the plaintext to produce the final encrypted output. The counter is incremented for each block of plaintext.

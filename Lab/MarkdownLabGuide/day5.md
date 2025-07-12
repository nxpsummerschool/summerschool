---
title: "Lab 5 exercises"
date:  June 26, 2025
output: pdf_document
---


1. Implement missing AES cipher modes (from previous lab).

2. Working with big numbers.
    a. In cryptography, working with big numbers that exceeds usual data types size is common. Even simple operations have to be performed on buffers.
    Implement a function that increments a counter on 16 bytes.
![Counter on 16 bytes](pics/incrementIV.png "Counter on 16 bytes"){ width=800px}
    b. Create test scenarios to check the implementation. What happens at overflow?

    c. Optional: Implement big number multiplication (find a way to multiply numbers on e.g. 30 bytes each).

3. Implement CTR mode of operation.
CTR (Counter) mode uses a counter value that is encrypted with a block cipher. The
resulting ciphertext is then XORed with the plaintext to produce the final encrypted
output. The counter is incremented for each block of plaintext.
![CTR](pics/CTR.png "CTR"){ width=800px}

4. Using the already implemented Cipher, implement the AES CCM (simplified) operation mode presented below.

![CCM Encryption](pics/CCM_encryption.png "CCM Encryption"){ width=800px}
![CCM Decryption](pics/CCM_decryption.png "CCM Decryption"){ width=800px}


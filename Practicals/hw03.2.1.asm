.data
  prompt: .asciz "Enter a 3 character string: "

.text
main: la a0, prompt #print prompt
  li a7, 4
  ecall

  li a0, 4 # allocate 4 bytes
  li a7, 9 #stores address in a0
  ecall

  li a1, 4 #read 4 bytes into memory located at address stored in a0
  li a7, 8
  ecall

  li a7, 10
  ecall

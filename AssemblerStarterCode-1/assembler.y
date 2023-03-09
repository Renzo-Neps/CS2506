%{
#include <stdlib.h>
#include <stdio.h>

enum instruction_format { IF_R, IF_I, IF_UI, IF_S, IF_B, IF_J };

static struct instruction {
  enum instruction_format format;
  int funct3 : 3;
  int funct7 : 7;
  int imm : 20;
  int opcode : 7;
  int rd : 5;
  int rs1 : 5;
  int rs2 : 5;
} instruction;

static void printbin(int val, char bits);
static int bit_range(int val, char begin, char end);
static void print_instruction(struct instruction);
int yylex();
void yyerror(char* s);
%}

%start program
%union {
  long l;
}
%token <l> REGISTER NEWLINE COMMA LEFT_PAREN RIGHT_PAREN MINUS IMMEDIATE
%token ADD SUB ADDI LW SW BEQ J AUIPC
%type <l> imm

%%
program : segments
;
segments : segments segment
| segment
;
segment : %empty
| text
;
text : text NEWLINE instruction
| instruction
;
instruction : r-type
{
}
;
r-type : add
{
}
;
add: FILL_IN_WITH_TOKENS
{
}
;
imm : MINUS IMMEDIATE
{
$$ = -1 * $2;
}
| IMMEDIATE
{
$$ = $1;
}
;
%%
static void print_instruction(struct instruction instruction) {
  switch (instruction.format) {
    case IF_R:
      break;
    case IF_I:
      break;
    case IF_UI:
      break;
    case IF_S:
      break;
    case IF_B:
      break;
    case IF_J:
      break;
    default:
      exit(-1);
  }
  printf("\n");
}
static void printbin(int val, char bits) {
  for (char i = bits - 1; i >= 0; i--) {
    if (val & (1 << i)) {
      putchar('1');
    } else {
      putchar('0');
    }
  }
}

static int bit_range(int val, char begin, char end) {
  int mask = ((1 << end) - 1) ^ ((1 << begin) - 1);
  return (val & mask) >> begin;
}

void yyerror(char *msg){
    // If your assembler cannot parse input it will exit, make sure to test locally using the tests on canvas
}

int main(){
 #ifdef YYDEBUG
 int yydebug = 1;
 #endif /* YYDEBUG */
 yyparse();
 return 0;
}

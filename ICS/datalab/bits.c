/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:

Replace the "return" statement in each function with one
or more lines of C code that implements the function. Your code 
must conform to the following style:

int Funct(arg1, arg2, ...) {
    /* brief description of how your implementation works */
    int var1 = Expr1;
    ...
        int varM = ExprM;

    varJ = ExprJ;
    ...
        varN = ExprN;
    return ExprR;
}

Each "Expr" is an expression using ONLY the following:
1. Integer constants 0 through 255 (0xFF), inclusive. You are
not allowed to use big constants such as 0xffffffff.
2. Function arguments and local variables (no global variables).
3. Unary integer operations ! ~
4. Binary integer operations & ^ | + << >>

Some of the problems restrict the set of allowed operators even further.
Each "Expr" may consist of multiple operators. You are not restricted to
one operator per line.

You are expressly forbidden to:
1. Use any control constructs such as if, do, while, for, switch, etc.
2. Define or use any macros.
3. Define any additional functions in this file.
4. Call any functions.
5. Use any other operations, such as &&, ||, -, or ?:
6. Use any form of casting.
7. Use any data type other than int.  This implies that you
cannot use arrays, structs, or unions.


You may assume that your machine:
1. Uses 2s complement, 32-bit representations of integers.
2. Performs right shifts arithmetically.
3. Has unpredictable behavior when shifting an integer by more
than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
/*
 * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
 */
int pow2plus1(int x) {
    /* exploit ability of shifts to compute powers of 2 */
    return (1 << x) + 1;
}

/*
 * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
 */
int pow2plus4(int x) {
    /* exploit ability of shifts to compute powers of 2 */
    int result = (1 << x);
    result += 4;
    return result;
}

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
    the coding rules are less strict.  You are allowed to use looping and
    conditional control.  You are allowed to use both ints and unsigneds.
    You can use arbitrary integer and unsigned constants.

    You are expressly forbidden to:
    1. Define or use any macros.
    2. Define any additional functions in this file.
    3. Call any functions.
    4. Use any form of casting.
    5. Use any data type other than int or unsigned.  This means that you
    cannot use arrays, structs, or unions.
    6. Use any floating point data types, operations, or constants.


    NOTES:
    1. Use the dlc (data lab checker) compiler (described in the handout) to 
    check the legality of your solutions.
2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
    that you are allowed to use for your implementation of the function. 
    The max operator count is checked by dlc. Note that '=' is not 
    counted; you may use as many of these as you want without penalty.
    3. Use the btest test harness to check your functions for correctness.
    4. Use the BDD checker to formally verify your functions
    5. The maximum number of ops for each function is given in the
    header comment for each function. If there are any inconsistencies 
    between the maximum ops in the writeup and in this file, consider
    this file the authoritative source.

    /*
     * STEP 2: Modify the following functions according the coding rules.
     * 
     *   IMPORTANT. TO AVOID GRADING SURPRISES:
     *   1. Use the dlc compiler to check that your solutions conform
     *      to the coding rules.
     *   2. Use the BDD checker to formally verify that your solutions produce 
     *      the correct answers.
     */


#endif

//1
/* 
 * bitNor - ~(x|y) using only ~ and & 
 *   Example: bitNor(0x6, 0x5) = 0xFFFFFFF8
 *   Legal ops: ~ &
 *   Max ops: 8
 *   Rating: 1
 */
int bitNor(int x, int y) {
    // ~(x|y) = ~x & ~y
    return ~x & ~y;
}

/* 
 * TMax - return maximum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmax(void) {
    /*
     * the maximum two's complement integer is 0111 1111... 1111
     * so it equals to ~10000..0
     */
    return ~(1 << 31);
}
//2
/* 
 * implication - return x -> y in propositional logic - 0 for false, 1
 * for true
 *   Example: implication(1,1) = 1
 *            implication(1,0) = 0
 *   Legal ops: ! ~ ^ |
 *   Max ops: 5
 *   Rating: 2
 */
int implication(int x, int y) {
    /*
     * x -> y = not x or y = !x | y
     */
    return (!x) | y;
}
/* 
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n) {
    /*
     * if x >= 0, just x >> n
     * if x < 0 and x's last n bits are not all zero, then (x >> n) + 1
     * to check if x < 0, use x >> 31 (0xffffffff if x < 0 else 0)
     * to check if x's last n bits are not all zero, use x & 11...1(n 1s)
     * to generate 11..1(n 1s), use ~(11..1,00..0(31-n 0s))
     * and (11..1,00..0(31-n -s)) = 0x80000000 >> (31 - n)
     */
   return (x >> n) + ((x >> 31) & !!(x & ~(1 << 31 >> (32 + ~n))));
}
/* 
 * isNegative - return 1 if x < 0, return 0 otherwise 
 *   Example: isNegative(-1) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int isNegative(int x) {
    // if x < 0, x>> 31 = 0xffffffff else x >> 31 = 0x0
    return !!(x>>31);
}
//3
/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
    /* if x != 0, return 0xffffffff & y | 0x0 & z
     * else return 0x0 & z | 0xffffffff & z
     * if x == 0, !x = 1, 1 << 31 >> 31 = 0xffffffff
     * if x != 0, !x = 0, 0 << 31 >> 31 = 0x0
     */
    int p = !x << 31 >> 31;
    return (~p & y) | (p & z);
}
/*
 * rotateRight - Rotate x to the right by n
 *   Can assume that 0 <= n <= 31
 *   Examples: rotateRight(0x87654321,4) = 0x18765432
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 25
 *   Rating: 3
 */
int rotateRight(int x, int n) {
    /*
     * answer equals to x logical rightshift n + x's last n bits logical leftshift n
     * logical rightshift = (x >> n) & p, p = (00..0(n 0s)11..1)
     * so if n != 0, p = ~(1 << 31 >> (n - 1)) else 0xffffffff
     * use conditional to get p
     * x's last n bits: x & q, q = 00..011..1(n 1s)
     * q = ~(1 << 31 >> (31 - n))
     */
    int t = 1 << 31;
    int c = !n << 31 >> 31;
    int p = (~c & ~(t >> (n + 1 + ~1))) | (c & ~0);
    int q = ~(t >> (32 + ~n));
    return (p & (x >> n)) + ((q & x) << (33 + ~n));
}
//4
/* 
 * absVal - absolute value of x
 *   Example: absVal(-1) = 1.
 *   You may assume -TMax <= x <= TMax
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 10
 *   Rating: 4
 */
int absVal(int x) {
    /* use conditional
     * p to show if x < 0
     */
    int p = !(x >> 31) << 31 >> 31;
    return (p & x) | (~p & (~x + 1));
}
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {
    /*
     * or all bits to last one, so just have to test last bit
     * to or all bits, use divide and rule
     */
    x = x | (x >> 1);
    x = x | (x >> 2);
    x = x | (x >> 4);
    x = x | (x >> 8);
    x = x | (x >> 16);
    return (x & 1) ^ 1;
}
/* 
 * greatestBitPos - return a mask that marks the position of the
 *               most significant 1 bit. If x == 0, return 0
 *   Example: greatestBitPos(96) = 0x40
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 70
 *   Rating: 4 
 */
int greatestBitPos(int x) {
    /*
     * if x = 00..0,11..1, then just return x - (x >> 1)
     * else, convert x to that format.
     * to achieve that goal, all bits should or with bits before it
     * use divide and rule like the method used in bang
     * need to take care of >> is arithmetic right shift
     */
    int y = x;
    x = x | (x >> 1);
    x = x | (x >> 2);
    x = x | (x >> 4);
    x = x | (x >> 8);
    x = x | (x >> 16);
    y = x;
    x = ((x >> 1) & ~(1 << 31));
    return y + ~x + 1;

}
//float
/* 
 * float_abs - Return bit-level equivalent of absolute value of f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument..
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 2
 */
unsigned float_abs(unsigned uf) {
    /*
     * take out exp and significant to check if uf == NaN
     * if not, just set first bit to zero
     */
    unsigned exp = 0xff << 23;
    unsigned significand = 0x007fffff;
    if ((uf & exp) == exp && (uf & significand) != 0) {
        return uf;
    }
    return uf & ~(1 << 31);
}
/* 
 * float_pwr2 - Return bit-level equivalent of the expression 2.0^x
 *   (2.0 raised to the power x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 * 
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while 
 *   Max ops: 30 
 *   Rating: 4
 */
unsigned float_pwr2(int x) {
    /*
     * the range of exp is -126 to 127. so if x > 127, return inf
     * if x >= -126, because sgn and significand bits are all zero, 
     * just make exp bits = x + 127, which means return (x + 127) <<23
     * if x < -126 and x >= -149, then exp = 0 and significand find the 
     * corresponding position and set it to 1.
     */
    if (x > 127) return 0x7f800000;
    if (x >= -126) return (x + 127) << 23;
    if (x < -149) return 0;
    return 1 << (149 + x);
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
    /*
     * if x < 0, let x = -x and add sign bit to last answer.
     * exp = the position the highest positive bit + 127
     * significand = the highest positive bit's folowing 23 bits.
     * if x have more bits after significand, should consider the problem of round
     * I implement the extract significand by x << (31+127-exp) >> 8, so if x 
     * have more bits, it should be at last 8 bits.
     * if the remaining part is bigger than 0x80, answer should add 1
     * if the remaining part == 0x80, should consider the last bit of significand
     * when the last bit of significand == 1, answer should add 1.
     */
    unsigned ret;
    int T = 1 << 31;
    unsigned sgn = x & T;
    int exp;
    if (x == 0) return 0;
    if (x == 0x80000000) return 0xcf000000;
    if (x < 0) x = -x;
    for (exp=30; exp>=0 && (x&(1<<exp))==0; exp--);
    x = (x << (31 - exp)) & ~T;
    ret = sgn | ((127 + exp) << 23) | (x >> 8);
    if ((x & 0xff) > 0x80) ret ++;
    else if ((x & 0xff) == 0x80 && (x & 0x100) != 0) ret++;
    return ret;
}

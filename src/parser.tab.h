#ifndef PARSER_TAB_H
#define PARSER_TAB_H

typedef union {
    int num;
    float fnum;
    char* str;
} YYSTYPE;

extern YYSTYPE yylval;

/* Tokens */
#define INT 256
#define CHAR 257
#define FLOAT 258
#define IF 259
#define ELSE 260
#define WHILE 261
#define FOR 262
#define ID 263
#define NUM 264
#define NUM_FLOAT 265
#define EQ 266
#define NEQ 267
#define GEQ 268
#define LEQ 269
#define AND 270
#define OR 271
#define NOT 272

#endif
#ifndef COMMON_MACROS
#define COMMON_MACROS

/* Set a certain bit in any register */
#define SET_BIT(REG,BIT) (REG|=(1<<BIT))

/* Clear a certain bit in any register */
#define CLEAR_BIT(REG,BIT) (REG&=(~(1<<BIT)))

/* Toggle a certain bit in any register */
#define TOGGLE_BIT(REG,BIT) (REG^=(1<<BIT))

/* Rotate right the register value with specific number of rotates */
#define ROR(REG,num) ( REG= (REG>>num) | (REG<<(8-num)) )

/* Rotate left the register value with specific number of rotates */
#define ROL(REG,num) ( REG= (REG<<num) | (REG>>(8-num)) )

/* Check if a specific bit is set in any register and return true if yes */
#define BIT_IS_SET(REG,BIT) ( REG & (1<<BIT) )

/* Check if a specific bit is cleared in any register and return true if yes */
#define BIT_IS_CLEAR(REG,BIT) ( !(REG & (1<<BIT)) )

/* Clear a register */
#define CLEAR_REG(REG) (REG = 0 )

/* Set a register */
#define SET_REG(REG,VALUE) (REG=VALUE)

/* Set a shifted value in a register*/
#define REG_VALUE_SHIFT(REG,VALUE,SHIFT) (REG |= (VALUE << SHIFT))

#define HWREG(X,Y)				(*((volatile uint8*)(((uint8)X)+((uint8)Y))))
#define HWOR(X,Y)				(*((volatile uint8*)(((uint8)X)|((uint8)Y))))

#define GET_AVERAGE(AVG,ARRAY,NB)  (AVG=(ARRAY[0]+ARRAY[1]+ARRAY[2]+ARRAY[3]+ARRAY[4])/NB) 

#endif

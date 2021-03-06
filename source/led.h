/*
 * led.h
 *  Created on: Dec 6, 2018
 *      Author: Roberto Baquerizo, Vance Farren
 */

#ifndef LED_H_
#define LED_H_

#include "memory_map.h"

#define RED						(18)
#define RED_SHIFT			(1 << RED)
#define GREEN					(19)
#define GREEN_SHIFT		(1 << GREEN)
#define BLUE					(1)
#define BLUE_SHIFT		(1 << BLUE)

#define RED_ON				(GPIOB_PCOR = RED_SHIFT)
#define RED_OFF				(GPIOB_PSOR = RED_SHIFT)
#define RED_TOGGLE		(GPIOB_PTOR = RED_SHIFT)

#define GREEN_ON			(GPIOB_PCOR = GREEN_SHIFT)
#define GREEN_OFF			(GPIOB_PSOR = GREEN_SHIFT)
#define GREEN_TOGGLE	(GPIOB_PTOR = GREEN_SHIFT)

#define BLUE_ON				(GPIOD_PCOR = BLUE_SHIFT)
#define BLUE_OFF			(GPIOD_PSOR	= BLUE_SHIFT)
#define BLUE_TOGGLE		(GPIOD_PTOR = BLUE_SHIFT)

/* Initialize LED's of KL25Z FRDM Board
 *
 * @param[in]:		void
 * @returns:			void
 */
void LED_init( void );

#endif /* LED_H_ */

/***************************************************
 * ************ Author: Menna Nagy *****************
 * ************ Date: 7-11-2023      ***************
 **************************************************/

#include "LBit_Math.h"
#include "LSTD_Types.h"

#include "MDIO_Interface.h"

#include <util/delay.h>

int main(void)
{
    DIO_voidSetPortDirection(DIO_PORTA, OUTPUT_PORT);

	while (1)
	{
		for (int i = 0; i < 8; i++)
		{
			DIO_voidSetPinValue(DIO_PORTA, i, HIGH);
            _delay_ms(500);
			DIO_voidSetPinValue(DIO_PORTA, i, LOW);
        }
	}

	return 0;
}

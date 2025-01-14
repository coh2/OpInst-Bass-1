/**
  Generated Interrupt Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    interrupt_manager.h

  @Summary:
    This is the Interrupt Manager file generated using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description:
    This header file provides implementations for global interrupt handling.
    For individual peripheral handlers please see the peripheral driver for
    all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
        Device            :  PIC18F26Q10
        Driver Version    :  2.12
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.31 and above or later
        MPLAB 	          :  MPLAB X 5.45
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#include "interrupt_manager.h"
#include "mcc.h"

void  INTERRUPT_Initialize (void)
{
    // Enable Interrupt Priority Vectors
    INTCONbits.IPEN = 1;

    // Assign peripheral interrupt priority vectors

    // SSPI - high priority
    IPR3bits.SSP1IP = 1;

    // BCLI - high priority
    IPR3bits.BCL1IP = 1;


    // TMRI - low priority
    IPR0bits.TMR0IP = 0;    

    // CLCI - low priority
    IPR5bits.CLC1IP = 0;    

    // CLCI - low priority
    IPR5bits.CLC2IP = 0;    

    // CLCI - low priority
    IPR5bits.CLC3IP = 0;    

    // CLCI - low priority
    IPR5bits.CLC4IP = 0;    

    // CLCI - low priority
    IPR6bits.CLC5IP = 0;    

    // CLCI - low priority
    IPR6bits.CLC6IP = 0;    

    // CLCI - low priority
    IPR6bits.CLC7IP = 0;    

    // CLCI - low priority
    IPR6bits.CLC8IP = 0;    

    // IOCI - low priority
    IPR0bits.IOCIP = 0;    

}

void __interrupt() INTERRUPT_InterruptManagerHigh (void)
{
   // interrupt handler
    if(PIE3bits.SSP1IE == 1 && PIR3bits.SSP1IF == 1)
    {
        MSSP1_InterruptHandler();
    }
    else if(PIE3bits.BCL1IE == 1 && PIR3bits.BCL1IF == 1)
    {
        MSSP1_InterruptHandler();
    }
    else
    {
        //Unhandled Interrupt
    }
}

void __interrupt(low_priority) INTERRUPT_InterruptManagerLow (void)
{
    // interrupt handler
    if(PIE0bits.TMR0IE == 1 && PIR0bits.TMR0IF == 1)
    {
        TMR0_ISR();
    }
    else if(PIE5bits.CLC1IE == 1 && PIR5bits.CLC1IF == 1)
    {
        CLC1_ISR();
    }
    else if(PIE5bits.CLC2IE == 1 && PIR5bits.CLC2IF == 1)
    {
        CLC2_ISR();
    }
    else if(PIE5bits.CLC3IE == 1 && PIR5bits.CLC3IF == 1)
    {
        CLC3_ISR();
    }
    else if(PIE5bits.CLC4IE == 1 && PIR5bits.CLC4IF == 1)
    {
        CLC4_ISR();
    }
    else if(PIE6bits.CLC5IE == 1 && PIR6bits.CLC5IF == 1)
    {
        CLC5_ISR();
    }
    else if(PIE6bits.CLC6IE == 1 && PIR6bits.CLC6IF == 1)
    {
        CLC6_ISR();
    }
    else if(PIE6bits.CLC7IE == 1 && PIR6bits.CLC7IF == 1)
    {
        CLC7_ISR();
    }
    else if(PIE6bits.CLC8IE == 1 && PIR6bits.CLC8IF == 1)
    {
        CLC8_ISR();
    }
    else if(PIE0bits.IOCIE == 1 && PIR0bits.IOCIF == 1)
    {
        PIN_MANAGER_IOC();
    }
    else
    {
        //Unhandled Interrupt
    }
}
/**
 End of File
*/

 /**
   CLC5 Generated Driver File
 
   @Company
     Microchip Technology Inc.
 
   @File Name
     clc5.c
 
   @Summary
     This is the generated driver implementation file for the CLC5 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs
 
   @Description
     This source file provides implementations for driver APIs for CLC5.
     Generation Information :
         Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.7
         Device            :  PIC18F26Q10
         Driver Version    :  2.11
     The generated drivers are tested against the following:
         Compiler          :  XC8 2.31 and above or later
         MPLAB             :  MPLAB X 5.45
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
 
 /**
   Section: Included Files
 */

#include <xc.h>
#include "clc5.h"
#include "../encoder.h"

/**
  Section: CLC5 APIs
*/

void CLC5_Initialize(void)
{
    // Set the CLC5 to the options selected in the User Interface

    // LC5G1POL not_inverted; LC5G2POL not_inverted; LC5G3POL inverted; LC5G4POL not_inverted; LC5POL not_inverted; 
    CLC5POL = 0x04;
    // LC5D1S CLCIN4 (CLCIN4PPS); 
    CLC5SEL0 = 0x04;
    // LC5D2S CLCIN5 (CLCIN5PPS); 
    CLC5SEL1 = 0x05;
    // LC5D3S CLCIN5 (CLCIN5PPS); 
    CLC5SEL2 = 0x05;
    // LC5D4S CLCIN5 (CLCIN5PPS); 
    CLC5SEL3 = 0x05;
    // LC5G1D3N disabled; LC5G1D2N disabled; LC5G1D4N disabled; LC5G1D1T enabled; LC5G1D3T disabled; LC5G1D2T disabled; LC5G1D4T disabled; LC5G1D1N disabled; 
    CLC5GLS0 = 0x02;
    // LC5G2D2N disabled; LC5G2D1N disabled; LC5G2D4N disabled; LC5G2D3N disabled; LC5G2D2T enabled; LC5G2D1T disabled; LC5G2D4T enabled; LC5G2D3T enabled; 
    CLC5GLS1 = 0xA8;
    // LC5G3D1N disabled; LC5G3D2N disabled; LC5G3D3N disabled; LC5G3D4N disabled; LC5G3D1T disabled; LC5G3D2T enabled; LC5G3D3T enabled; LC5G3D4T enabled; 
    CLC5GLS2 = 0xA8;
    // LC5G4D1N disabled; LC5G4D2N disabled; LC5G4D3N disabled; LC5G4D4N disabled; LC5G4D1T disabled; LC5G4D2T enabled; LC5G4D3T enabled; LC5G4D4T enabled; 
    CLC5GLS3 = 0xA8;
    // LC5EN enabled; INTN disabled; INTP enabled; MODE 2-input D flip-flop with R; 
    CLC5CON = 0x95;

    // Clear the CLC interrupt flag
    PIR6bits.CLC5IF = 0;
    // Enabling CLC5 interrupt.
    PIE6bits.CLC5IE = 1;
}

void CLC5_ISR(void)
{
    // Clear the CLC interrupt flag
    PIR6bits.CLC5IF = 0;
    encoder_clc_isr(2, 1);
}

bool CLC5_OutputStatusGet(void)
{
    return(CLC5CONbits.LC5OUT);
}
/**
 End of File
*/

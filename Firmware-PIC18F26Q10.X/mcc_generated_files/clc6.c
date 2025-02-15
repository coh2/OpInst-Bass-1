 /**
   CLC6 Generated Driver File
 
   @Company
     Microchip Technology Inc.
 
   @File Name
     clc6.c
 
   @Summary
     This is the generated driver implementation file for the CLC6 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs
 
   @Description
     This source file provides implementations for driver APIs for CLC6.
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
#include "clc6.h"
#include "../encoder.h"

/**
  Section: CLC6 APIs
*/

void CLC6_Initialize(void)
{
    // Set the CLC6 to the options selected in the User Interface

    // LC6G1POL not_inverted; LC6G2POL not_inverted; LC6G3POL inverted; LC6G4POL not_inverted; LC6POL not_inverted; 
    CLC6POL = 0x04;
    // LC6D1S CLCIN5 (CLCIN5PPS); 
    CLC6SEL0 = 0x05;
    // LC6D2S CLCIN4 (CLCIN4PPS); 
    CLC6SEL1 = 0x04;
    // LC6D3S CLCIN4 (CLCIN4PPS); 
    CLC6SEL2 = 0x04;
    // LC6D4S CLCIN4 (CLCIN4PPS); 
    CLC6SEL3 = 0x04;
    // LC6G1D3N disabled; LC6G1D2N disabled; LC6G1D4N disabled; LC6G1D1T enabled; LC6G1D3T disabled; LC6G1D2T disabled; LC6G1D4T disabled; LC6G1D1N disabled; 
    CLC6GLS0 = 0x02;
    // LC6G2D2N disabled; LC6G2D1N disabled; LC6G2D4N disabled; LC6G2D3N disabled; LC6G2D2T enabled; LC6G2D1T disabled; LC6G2D4T enabled; LC6G2D3T enabled; 
    CLC6GLS1 = 0xA8;
    // LC6G3D1N disabled; LC6G3D2N disabled; LC6G3D3N disabled; LC6G3D4N disabled; LC6G3D1T disabled; LC6G3D2T enabled; LC6G3D3T enabled; LC6G3D4T enabled; 
    CLC6GLS2 = 0xA8;
    // LC6G4D1N disabled; LC6G4D2N disabled; LC6G4D3N disabled; LC6G4D4N disabled; LC6G4D1T disabled; LC6G4D2T enabled; LC6G4D3T enabled; LC6G4D4T enabled; 
    CLC6GLS3 = 0xA8;
    // LC6EN enabled; INTN disabled; INTP enabled; MODE 2-input D flip-flop with R; 
    CLC6CON = 0x95;

    // Clear the CLC interrupt flag
    PIR6bits.CLC6IF = 0;
    // Enabling CLC6 interrupt.
    PIE6bits.CLC6IE = 1;
}

void CLC6_ISR(void)
{
    // Clear the CLC interrupt flag
    PIR6bits.CLC6IF = 0;
    encoder_clc_isr(2, -1);
}

bool CLC6_OutputStatusGet(void)
{
    return(CLC6CONbits.LC6OUT);
}
/**
 End of File
*/

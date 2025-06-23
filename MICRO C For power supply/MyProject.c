
sbit LCD_RS at RC0_bit;
sbit LCD_EN at RC1_bit;
sbit LCD_D4 at RC2_bit;
sbit LCD_D5 at RC3_bit;
sbit LCD_D6 at RC4_bit;
sbit LCD_D7 at RC5_bit;
sbit LCD_RS_Direction at TRISC0_bit;
sbit LCD_EN_Direction at TRISC1_bit;
sbit LCD_D4_Direction at TRISC2_bit;
sbit LCD_D5_Direction at TRISC3_bit;
sbit LCD_D6_Direction at TRISC4_bit;
sbit LCD_D7_Direction at TRISC5_bit;

void main() {
    ADCON1 = 0x07;
    TRISA = 11111111;
    TRISB = 00000000;
    TRISC = 00000000;
    portb=0;
    Lcd_Init();
    Lcd_Out(1,1,"the Circuit is ready to use");
    Delay_ms(500);
    while (1) {
    if (porta.b0==1){
       portb.b0=1;
       Lcd_Cmd(_LCD_CLEAR);
       Lcd_Out(1, 1, "Output: 12V");
       Delay_ms(500);
    }
    else if(porta.b1==1){
         portb.b1=1;
         Lcd_Cmd(_LCD_CLEAR);
         Lcd_Out(1, 1, "Output: 9V");
         Delay_ms(500);
    }
    else if(porta.b2==1){
         portb.b2==1;
         Lcd_Cmd(_LCD_CLEAR);
         Lcd_Out(1, 1, "Output: 5V");
         Delay_ms(500);
    }



    else if(porta.b3==1){
         portb.b3=1;
         Lcd_Cmd(_LCD_CLEAR);
         Lcd_Out(1, 1, "Output: 3,3V");
         Delay_ms(500);
    }
    else{
         Lcd_Cmd(_LCD_CLEAR);
         Lcd_Out(1,1,"the Circuit is ready to use");
         Delay_ms(500);
    
     }
     }
}
    

    




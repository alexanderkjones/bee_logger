// Maurice Ribble 
// 4-17-2008
// http://www.glacialwanderer.com/hobbyrobotics

// This code tests the DS1307 Real Time clock on the Arduino board.
// The ds1307 works in binary coded decimal or BCD.  You can look up
// bcd in google if you aren't familior with it.  There can output
// a square wave, but I don't expose that in this code.  See the
// ds1307 for it's full capabilities.

#include "WProgram.h" // Required for byte type

#ifndef DS1307a_h
#define DS1307a_h

#define DS1307_I2C_ADDRESS 0x68

// Declare DS1307 as object calling wire.begin
// functions setYY, setdates easily, set time easily, grab date, time, utc

//Declare testFunction Char Array Return

    byte decToBcd(byte val);
    byte bcdToDec(byte val);
    void setDateDs1307(byte second,        // 0-59
                   byte minute,        // 0-59
                   byte hour,          // 1-23
                   byte dayOfWeek,     // 1-7
                   byte dayOfMonth,    // 1-28/29/30/31
                   byte month,         // 1-12
                   byte year);         // 0-99
    void getDateDs1307(byte *second,
              byte *minute,
              byte *hour,
              byte *dayOfWeek,
              byte *dayOfMonth,
              byte *month,
              byte *year);
    String getUTC(byte *second,
          byte *minute,
          byte *hour,
          byte *dayOfWeek,
          byte *dayOfMonth,
          byte *month,
          byte *year);
            

#endif

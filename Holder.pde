/*

#include "SD.h"
#include "Wire.h"
#include "DS1307.h"


//Set up variables using the SD utility library functions:
Sd2Card card;
SdVolume volume;
SdFile root;
SdFile file;

// Initialize Sensors
int ldrPin = 0;
int tmpPin = 1;
int fxPin = 3;

//Initiailize Data String
String dataString;

// SD Link
int cardDetect = 8;
int chipSelect = 10;
int cardInit = false;

// Initialize Log Resolution in millis
int logDelay = 60000;

//Initialize DS1307 Variables
byte second, minute, hour, dayOfWeek, dayOfMonth, month, year;

void setup()
{
  Serial.begin(9600);
  
  //SD IO
  pinMode(cardDetect, INPUT);
  pinMode(chipSelect, OUTPUT);
  /* make sure that the default chip select pin is set to
  output, even if you don't use it:
  pinMode(10, OUTPUT);*/
  
  //Set DS1307 Date Time, Leave Commented Out Otherwise
  /*second = 45;
  minute = 53;
  hour = 21;
  dayOfWeek = 5;
  dayOfMonth = 20;
  month = 7;
  year = 12;
  setDateDs1307(second, minute, hour, dayOfWeek, dayOfMonth, month, year);
  
  test_function();
}

void loop(){
  // See if Card is Present
  if (!digitalRead(cardDetect)) {

    // Attempt to initialize card
    if (!card.init(SPI_HALF_SPEED, chipSelect)) {
      Serial.println("ERRROR : Card Failed to Initialize.");
      while(1){
      }
    } 
    else if (!cardInit) {
      Serial.println("Card Initialized.");
      cardInit = true;
    }
    
    // initialize a FAT volume
  if (!volume.init(card)) Serial.println("volume.init");
  
  // open the root directory
  if (!root.openRoot(volume)) Serial.println("openRoot");
    
    //Grab Time
    getDateDs1307(&second, &minute, &hour, &dayOfWeek, &dayOfMonth, &month, &year);
   
    //Grab Data
    dataString = "";
    
    dataString += getUTC(&second, &minute, &hour, &dayOfWeek, &dayOfMonth, &month, &year);
    dataString += "Temp: ";
    dataString += analogRead(tmpPin);
    dataString += " Light: ";
    dataString += analogRead(ldrPin);
    dataString += "Weight: ";
    dataString += analogRead(fxPin);
    
    Serial.println(dataString);
    
    file.open(root, "Test.txt", O_CREAT | O_APPEND | O_WRITE);
    if(file.isOpen()){
      Serial.println("File OPEN");
      file.println(dataString);
      file.close();
    }else{
      Serial.println("File Error");
    }
  }
  else{
    cardInit = false;
  }
  
  delay(logDelay);
}


void test_function(){
  Serial.println ("Test");
}
*/



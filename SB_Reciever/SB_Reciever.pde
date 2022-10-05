//Digital Scoreboard Reciever from Wireless via NRF--->MCU--->UART--->USB---COMPort
//By Kenny Neutron

PFont SevenSegFont;
PFont ArialNarrow;


//SB Variables
int GTime_Min=10;
int GTime_Sec=0;
int GTime_Millis=0;

int ShotClock=24;
int ShotClockMillis=0;

int HomeScore=123;
int GuestScore=124;

int HomeFoul=2;
int GuestFoul=3;

int HomeTOut=8;
int GuestTOut=9;

int Period=3;

void setup() {
  size(1900, 1000);

  SevenSegFont=createFont("7SegmentFont.ttf", 48);
  ArialNarrow=createFont("ArialNarrow7.ttf", 48);

  background(0);
}


void draw() {

  DrawData_GameTime();
  DrawData_ShotClock();
  DrawData_HomeScore();
  DrawData_GuestScore();
  DrawData_FoulANDTimeOut();
  DrawData_Period();

  strokeWeight(1);
  stroke(#ffff00);
  fill(#ffff00);
  triangle(600, 575, 600, 275, 400, 425);
  rect(600, 350, 100, 150);

  strokeWeight(1);
  stroke(#ffff00);
  fill(#ffff00);
  triangle(1325, 575, 1325, 275, 1525, 425);
  rect(1225, 350, 100, 150);
}

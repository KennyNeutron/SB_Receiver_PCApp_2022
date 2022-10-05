void DrawData_GameTime() {
  String str_GTime;
  String str_GTimeMIN;
  String str_GTimeSEC;

  if (GTime_Min<10) {
    str_GTimeMIN="    "+str(GTime_Min);
  } else {
    str_GTimeMIN=str(GTime_Min);
  }

  if (GTime_Sec<10) {
    str_GTimeSEC="0"+str(GTime_Sec);
  } else {
    str_GTimeSEC=str(GTime_Sec);
  }

  str_GTime=str_GTimeMIN+" : "+str_GTimeSEC;

  fill(255);
  strokeWeight(0);
  textFont(ArialNarrow);
  textSize(50);
  textAlign(CENTER, TOP);
  text("GAME TIME", width/2, 10);

  fill(#ff7700);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(200);
  textAlign(CENTER, CENTER);
  text(str_GTime, width/2, 160);

  fill(#ff7700);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(100);
  textAlign(CENTER, CENTER);
  text(str(GTime_Millis), 1375, 100);
}


void DrawData_ShotClock() {

  String str_ShotClock=" ";

  str_ShotClock=str(ShotClock);

  fill(255);
  strokeWeight(0);
  textFont(ArialNarrow);
  textSize(70);
  textAlign(CENTER, TOP);
  text("SHOTCLOCK", width/2, 560);

  fill(#00ff00);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(350);
  textAlign(CENTER, TOP);
  text(str_ShotClock, width/2, 630);

  fill(#00ff00);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(175);
  textAlign(CENTER, TOP);
  text(str(ShotClockMillis),1300, 630);
}


void DrawData_HomeScore() {
  String str_HScore=" ";

  if (HomeScore>=100) {
    str_HScore=str(HomeScore);
  } else if (HomeScore>=10&&HomeScore<100) {
    str_HScore="  "+str(HomeScore);
  } else if (HomeScore<10) {
    str_HScore="    "+str(HomeScore);
  }

  fill(255);
  strokeWeight(0);
  textFont(ArialNarrow);
  textSize(100);
  textAlign(CENTER, TOP);
  text("HOME", 250, 700);


  fill(#ff0000);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(200);
  textAlign(LEFT, TOP);
  text(str_HScore, 0, 780);
}

void DrawData_GuestScore() {
  String str_GScore=" ";

  if (GuestScore>=100) {
    str_GScore=str(GuestScore);
  } else if (GuestScore>=10&&GuestScore<100) {
    str_GScore="  "+str(GuestScore);
  } else if (GuestScore<10) {
    str_GScore="    "+str(GuestScore);
  }

  fill(255);
  strokeWeight(0);
  textFont(ArialNarrow);
  textSize(100);
  textAlign(CENTER, TOP);
  text("GUEST", 1650, 700);


  fill(#ff0000);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(200);
  textAlign(LEFT, TOP);
  text(str_GScore, 1400, 780);
}

void DrawData_FoulANDTimeOut() {

  String str_HFoul= " ";
  String str_GFoul= " ";
  String str_HTOut= " ";
  String str_GTOut= " ";

  str_HFoul=str(HomeFoul);
  str_GFoul=str(GuestFoul);
  str_HTOut=str(HomeTOut);
  str_GTOut=str(GuestTOut);


  //Home
  fill(255);
  strokeWeight(0);
  textFont(ArialNarrow);
  textSize(50);
  textAlign(CENTER, TOP);
  text("TimeOut", 250, 50);


  fill(#0000ff);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(200);
  textAlign(CENTER, TOP);
  text(str_HTOut, 250, 100);

  fill(255);
  strokeWeight(0);
  textFont(ArialNarrow);
  textSize(50);
  textAlign(CENTER, TOP);
  text("Foul", 250, 350);


  fill(#00ff00);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(200);
  textAlign(CENTER, TOP);
  text(str_HFoul, 250, 400);



  //Guest
  fill(255);
  strokeWeight(0);
  textFont(ArialNarrow);
  textSize(50);
  textAlign(CENTER, TOP);
  text("TimeOut", 1650, 50);


  fill(#0000ff);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(200);
  textAlign(CENTER, TOP);
  text(str_GTOut, 1650, 100);

  fill(255);
  strokeWeight(0);
  textFont(ArialNarrow);
  textSize(50);
  textAlign(CENTER, TOP);
  text("Foul", 1650, 350);


  fill(#00ff00);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(200);
  textAlign(CENTER, TOP);
  text(str_GFoul, 1650, 400);
}

void DrawData_Period() {
  String str_Period=" ";

  if (Period>=5) {
    str_Period="OT";
  } else {
    str_Period=str(Period);
  }

  fill(255);
  strokeWeight(0);
  textFont(ArialNarrow);
  textSize(50);
  textAlign(CENTER, TOP);
  text("Period", width/2+10, 300);


  fill(#ff33cc);
  strokeWeight(0);
  textFont(SevenSegFont);
  textSize(150);
  textAlign(CENTER, TOP);
  text(str_Period, width/2, 350);
}

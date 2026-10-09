color shadow_grey = color(112,114,100);
color stroke_light_grey = color (195,193,199);
color wall_grey = color(235,236,240);
color text = color (70,70,70);

//colour holds 
color purple_hold = color(188, 28, 252);


// to change too many lines *****************************************
String week_1 = "Week 1";
String week_2 = "Week 2";
String week_3 = "Week 3";
String week_4 = "Week 4";
String week_5 = "Week 5";

//list 20 best climbs per week 
String[] climbs_w_1 = {};
String[] climbs_w_2 = {};
String[] climbs_w_3 = {};
String[] climbs_w_4 = {};
String[] climbs_w_5 = {};
//String[] all_climbs = 




void setup(){
  fullScreen();
  background(wall_grey);
}



//void holds_setup(String[]){
  
  
}
 
 
 
void draw(){
  //----------dark portions volumes on wall -------------------------------------
  fill(shadow_grey);
  stroke(shadow_grey);
  
  //top left volume
  triangle(0,0,0,380,1100,0);
  
  //top right volume 
  quad(802,402,1000,470,2000,300,2000,100);
  
  //bottom left volume
  quad(1095,664, 950, 800,0, 1010, 0, 900);
  
  
 //------------light portions volumes on wall -----------------------------------
  
  //noFill();
  fill(stroke_light_grey);
  stroke(stroke_light_grey);
  strokeWeight(3);
  
  //top right volume
  quad(1700,-10,1000,250,800,400,2000,100);
  
  //bottom left volume
  quad(0,700,600,500,1100,660,0,900);
  
  //bottom right volume 
  triangle(800,1115,1800,800, 2000,1700);
  
  //-----------------text------------------------------
  fill(text);
  textSize(25);
  text(week_1,1370,1100);
  text(week_2, 300, 1100);
  text(week_3, 25 , 830);
  text(week_4, 1500, 170);
  text(week_5, 25, 40);
}

//-----------------holds------------------------------

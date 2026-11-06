import java.util.Comparator;

//---------------------------------------------declearing----------------------------
color shadow_grey = color(112,114,100);
color stroke_light_grey = color (195,193,199);
color wall_grey = color(235,236,240);
color text = color (70,70,70);


String week_1 = "Week 1";
String week_2 = "Week 2";
String week_3 = "Week 3";
String week_4 = "Week 4";
String week_5 = "Week 5";



String [] raw_data_climbs;


ArrayList<DataRow> data = new ArrayList<DataRow>();
ArrayList<HoldsSpecs> holds_specs = new ArrayList<HoldsSpecs>();



//---------------------------------------------setup function-----------------------------------------

void setup(){
  fullScreen();
  background(wall_grey);
  
  raw_data_climbs = loadStrings("Dear_data_Sheet.csv");
  
  sort_raw_data(raw_data_climbs);
  setup_holds(data);
  
}


  
 //---------------------------------------------draw function-----------------------------------------
 
void draw(){
  
  draw_background();
  draw_holds(holds_specs);
  
  
  
  
  
  
}

//-------------------------------------------------------setup holds--------------------------------------------
void setup_holds(ArrayList<DataRow> data) {
  
  int next_x_week_1 = 1615;
  int next_y_week_1 = 1000;
  int next_x_week_2 = 20;
  int next_y_week_2 = 1020;
  int next_x_week_3 = 10;
  int next_y_week_3 = 880;
  int counter_w_1 = 1;
  int counter_w_2 = 1;
  int counter_w_3 = 1;
  int current_x_w_1 = 0;
  int current_y_w_1 = 0;
  int current_x_w_2 = 0;
  int current_y_w_2 = 0;
  int current_x_w_3 = 0;
  int current_y_w_3 = 0;
  int current_grade;
  
  
  for (int i = 0; i < data.size(); i++){
    float r = random(1.1,6.9);
    int type_hold = int(r);
    if (data.get(i).get_week() == 1) {
       println("test");
       current_x_w_1 = next_x_week_1;
       current_y_w_1 = next_y_week_1;
    
      if (counter_w_1 == 9){
        next_y_week_1 -= 100;
        next_x_week_1 = 1580;
        counter_w_1 += 1;
      } else if (counter_w_1 == 15){
        next_y_week_1 -= 100;
        next_x_week_1 = 1600;
        counter_w_1 += 1; 
      } else if (counter_w_1 == 18){
        next_y_week_1 -= 100;
        next_x_week_1 = 1600;
        counter_w_1 += 1; 
      } else {
        next_x_week_1 -= 100;
        counter_w_1 += 1;
      }
      current_grade = data.get(i).get_grade();                             // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      if (current_grade == 0) {
        current_grade = 1;
      }
      
      HoldsSpecs current_hold_w_1 = new HoldsSpecs(type_hold, current_x_w_1, current_y_w_1, current_grade, data.get(i).get_nb_attempts());
      holds_specs.add(current_hold_w_1);
    }
    
      
    
    
    if (data.get(i).get_week() == 2) {
      current_x_w_2 = next_x_week_2;
      current_y_w_2 = next_y_week_2;
      if (counter_w_2 == 4){
        next_x_week_2 = 650;
        next_y_week_2 = 940; 
        counter_w_2 += 1;
      }else if (counter_w_2 == 5){
        next_x_week_2 = 980;
        next_y_week_2 = 780;
        counter_w_2 += 1;
     }else if (counter_w_2 < 10 && counter_w_2 > 5 ){
        next_x_week_2 += 150;
        next_y_week_2 -= 75;
        counter_w_2 += 1;
    }else if (counter_w_2 == 2){
        next_x_week_2 = 350;
        next_y_week_2 = 970;
        counter_w_2 += 1;
    }else if (counter_w_2 == 10){
        next_x_week_2 = 1150;
        next_y_week_2 = 560;
        counter_w_2 += 1;
    }else if (counter_w_2 == 11){
        next_x_week_2 = 800 ;
        next_y_week_2 = 450;
        counter_w_2 += 1;
    }else if (counter_w_2 == 12){
      next_x_week_2 = -3;
      next_y_week_2 = 450;
      counter_w_2 += 1; 
    }else if (counter_w_2 > 12){
        next_x_week_2 += 170;
        next_y_week_2 -= 70;
        counter_w_2 += 1;
    }else{
      next_x_week_2 +=170;
      counter_w_2 += 1;
    }
      
      current_grade = data.get(i).get_grade();                // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      if (current_grade == 0) {
        current_grade = 1;
      }
      
      HoldsSpecs current_hold_w_2 = new HoldsSpecs(type_hold, current_x_w_2, current_y_w_2,current_grade, data.get(i).get_nb_attempts());
      holds_specs.add(current_hold_w_2);
      }
      
    if (data.get(i).get_week() == 3) {
      current_x_w_3 = next_x_week_3;
      current_y_w_3 = next_y_week_3;
      if (counter_w_3 == 8){
        next_x_week_3 = 5;
        next_y_week_3 += 40; 
        counter_w_3 += 1;
      }else if (counter_w_3 == 15){
        next_x_week_3 = 2;
        next_y_week_3 = 650;
        counter_w_3 += 1;
      }else if (counter_w_3 == 19){
        next_x_week_3 = 525;
        next_y_week_3 = 450;
        counter_w_3 += 1;
      }else if (counter_w_3 > 15 && counter_w_3 < 19){
        next_x_week_3 +=150;
        next_y_week_3 -= 40;
        counter_w_3 += 1; 
      }else{
        next_x_week_3 +=120;
        next_y_week_3 -= 25;
        counter_w_3 += 1; 
      }
      
      
      
      
      current_grade = data.get(i).get_grade();                             // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      if (current_grade == 0) {
        current_grade = 1;
      }
      
      HoldsSpecs current_hold_w_3 = new HoldsSpecs(type_hold, current_x_w_3, current_y_w_3, current_grade, data.get(i).get_nb_attempts());
      holds_specs.add(current_hold_w_3);
    }       
  }
  
}

//---------------------------------------------------draw holds---------------------------------------------
void draw_holds(ArrayList<HoldsSpecs>holds_specs){
 
  // red = 1, green = 2 , yellow = 3, blue = 4, purple = 5 
  // crimp = 1 , jug = 2, pocket = 3, pinch = 4, x = 5, volume = 6 
  
 
  
  
  for (int i = 0; i < holds_specs.size(); i++){
    int current_type = holds_specs.get(i).get_type_hold();
    int current_x_position = holds_specs.get(i).get_x_position();
    int current_y_position = holds_specs.get(i).get_y_position();
    int current_colour = holds_specs.get(i).get_colour();
    int current_chalk_level = holds_specs.get(i).get_chalk_level();
    
    PImage img = loadImage(current_colour + "_" + current_type + "_" + current_chalk_level + ".png");
    
    image(img, current_x_position, current_y_position);
    
    
    
  }
}




  
//-------------------------------------------------------sort data------------------------------------------
void sort_raw_data(String [] raw_data_climbs){
  
  int nb_climbs_week_1 = 0;
  int nb_climbs_week_2 = 0;
  int nb_climbs_week_3 = 0;
  
  for (int i = 1; i < raw_data_climbs.length; i++){
    String[] current_week = split(raw_data_climbs[i], ','); // ----- split the row into elements 
    int week = Integer.parseInt(current_week[0]);
    int grade = Integer.parseInt(current_week[1]);
    int nb_attemps = Integer.parseInt(current_week[2]);
    String gym = current_week[3];
    
    DataRow data_row_current_week = new DataRow(week, grade, nb_attemps, gym);
    data.add(data_row_current_week);
  }
  data.sort(Comparator.comparing(DataRow::get_week).thenComparing(Comparator.comparing(DataRow::get_grade).reversed()).thenComparing(DataRow::get_nb_attempts));
  println(data);
  
  
  
  for ( int i = 0; i < data.size(); i++){
    if (data.get(i).get_week() == 1) {
      nb_climbs_week_1 += 1;
      if (nb_climbs_week_1 > 20){
        data.remove(i);
        i -= 1;
      }
    }
    if (data.get(i).get_week() == 2){
      nb_climbs_week_2 += 1;
      if (nb_climbs_week_2 > 20){
        data.remove(i);
        i -= 1;
      }
    }
    if (data.get(i).get_week() == 3){
      nb_climbs_week_3 += 1;
      if (nb_climbs_week_3 > 20){
        data.remove(i);
        i -= 1;
      }
    }
  }
      
 println(data);    
      
    
}

//---------------------------------------------draw background function---------------------------------------
void draw_background(){
   //-----dark portions volumes on wall -------
  fill(shadow_grey);
  stroke(shadow_grey);
  
  //top left volume
  triangle(0,0,0,450,1100,0);
  
  //top right volume 
  quad(802,402,1120,540,2000,350,2000,100);
  
  //bottom left volume
  quad(1095,664, 950, 840,0, 1050, 0, 900);
  
  //---light portions volumes on wall-----------
  
  //noFill();
  fill(stroke_light_grey);
  stroke(stroke_light_grey);
  strokeWeight(3);
  
  //top right volume
  quad(1700,-10,1000,200,800,400,2000,100);
  
  //bottom left volume
  quad(0,650,600,450,1100,660,0,900);
  
  //bottom right volume 
  triangle(650,1115,1800,600, 2000,1700);
  
  //-----------------text------------------------------
  fill(text);
  textSize(25);
  text(week_1,1370,1100);
  text(week_2, 300, 1100);
  text(week_3, 25 , 830);
  text(week_4, 1500, 170);
  text(week_5, 25, 40);
}







//---------------------------------------------DataRow class ----------------------------------

class DataRow {
  int week;
  int grade;
  int nb_attempts; 
  String gym;
  
  DataRow(int week, int grade, int nb_attempts, String gym) {
    this.week = week;
    this.grade = grade;
    this.nb_attempts = nb_attempts; 
    this.gym = gym;
  }
  int get_week(){
    return this.week;
  }
  
  int get_grade(){
    return this.grade;
  }
  
  int get_nb_attempts(){
    return this.nb_attempts;
  }
  
  @Override
   public String toString() {
        return "(" + week + ", " + grade + ", " + nb_attempts + ", " + gym + ")";
   }
    
}

//---------------------------------------------HoldsSpecs class ----------------------------------
class HoldsSpecs {
  int type_hold; 
  int x_position; 
  int y_position; 
  int colour;
  int chalk_amount;
  
  HoldsSpecs(int type_hold, int x_position, int y_position, int colour, int chalk_amount) {
    this.type_hold = type_hold; 
    this.x_position = x_position;
    this.y_position = y_position; 
    this.colour = colour; 
    this.chalk_amount = chalk_amount;
  }
  int get_type_hold(){
    return this.type_hold;
  }
  
  int get_x_position(){
    return this.x_position;
  }
  
  int get_y_position(){
    return this.y_position;
  }
  
  int get_colour(){
    if (colour == 1){
      return 1;
    }
    else {
      return this.colour;
    }
  }
  
  int get_chalk_level(){
    if (chalk_amount == 1){
    return 0 ;
    }
    if (chalk_amount < 4 && chalk_amount != 1){
      return 1; 
    }
    else {
      return 2;
    }
    
  }
  
  @Override
   public String toString() {
        return "(" + type_hold + ", " + x_position + ", " + y_position + ", " + colour + ")" + chalk_amount;
   }
    
  
}



 

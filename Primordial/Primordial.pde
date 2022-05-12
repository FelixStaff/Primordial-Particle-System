//<a=180,b=17> normal
//<a=79.6,b=-0.8> intercambio celular
float K = 4;
float Beta = 17;
float v = 0.67*K;
float alpha = 180;
float N = 1;
float sense = 5*K;
float r = 2*K;
StopWatchTimer time = new StopWatchTimer();
ArrayList<cell> sys = new ArrayList<cell> ();

void setup(){
  noStroke();
  size(600,600);
  for (int a = 0; a<N+0; a++){
    sys.add(new cell());
  }
    time.start();
}

void draw(){
    noStroke();
  background(120);
  for (int a=0;a<sys.size();a++){
    sys.get(a).PrMov(sys,a);
    sys.get(a).show();
  }
  for (int a=0;a<sys.size();a++){
    sys.get(a).update();
    
  }
  if (sys.size()<1000){
  if (time.getElapsedTime() > 100){
    for(int a = 0;a<10;a++){
  time.start();
  sys.add(new cell());
  sys.get(sys.size()-1).pos = new PVector(random(0,width)+random(-3,3),random(0,height));
    }
  }}
  else{ 
  if (time.getElapsedTime() > 1000){
  time.start();
  for(int a = 0;a<5;a++){
  sys.add(new cell());
  sys.get(sys.size()-1).pos = new PVector(random(0,width)+random(-3,3),random(0,height));
  }
  }
  }
}

void mousePressed(){
  for(int a = 0;a<3;a++){
  sys.add(new cell());
  sys.get(sys.size()-1).pos = new PVector(mouseX+random(-3,3),mouseY);
  }
}



class cell{
  PVector pos = new PVector(0,0);
  PVector vel = new PVector(0,0);
  float angle = PI;
  int Nc = 0;
    cell(){
      pos = new PVector(random(0,width),random(0, height));
      //alpha = random(0,TWO_PI);
      vel = new PVector(0.67*v,0).rotate(angle);
    }
    
    void update(){
      pos.add(vel);
      actP(pos);
    }
    
    void PrMov(ArrayList<cell> Conjunto , int index ){
      Nc = 0;
      int R = 0;
      int L = 0;
      for (int a=0;a<sys.size();a++){
        if ( index != a ){
          PVector diff = PVector.sub(pos,sys.get(a).pos);
          if (diff.mag() < sense){
            Nc++;
            if (dotp(diff,vel) < 0)R++;
            else L++;
          }
        }
      }
      vel.rotate(radians(alpha) - Nc * radians(Beta) * sign(R - L));
    }
    void show(){
      fill(255);
      if (Nc > 3) fill(255);
      if (Nc > 12) fill(0,255,0);
      if (Nc > 30) fill(255,0,0);
      if (Nc > 40) fill(0,0,255);
      if (Nc > 95) fill(#BB10DE);
      if (Nc > 155) fill(#0DFFED);
      ellipse(pos.x,pos.y,r,r);
      noFill();
      //stroke(0);
      ellipse(pos.x,pos.y,sense,sense);
    }
}

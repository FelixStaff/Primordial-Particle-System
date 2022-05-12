float dotp(PVector v1, PVector v2){
  return v1.x*v2.y - v1.y*v2.x;
}
void actP(PVector p){
  if (p.x < 0 ) {
    p.x = width - p.x;
  }else{
    if (p.x > width)
    p.x = p.x - width;
  }
  if (p.y < 0 ) {
    p.y = height - p.y;
  }else{
    if (p.x > height)
    p.y = p.y - height;
  }
}
int sign(float value){
  if (value == 0)return 0;
  if (value > 0) return 1;
  else return -1;

}

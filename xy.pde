void xyzAxis(float len){
  // x axis
  fill(220,10,10);
  pushMatrix();
  translate(len/2,0,0);
  box(len,1,1);
  popMatrix();
  
  // y axis
  fill(10,220,10);
  pushMatrix();
  translate(0,len/2,0);
  box(1,len,1);
  popMatrix();
}

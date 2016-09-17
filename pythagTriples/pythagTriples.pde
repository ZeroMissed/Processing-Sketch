for(int a = 1; a < 1000; a++) {
 float c = (sq(a) + 4)/4;
 float b = c - 2;
 if(c == int(c)) 
   println(a + ", " + int(b) + ", " + int(c));
}
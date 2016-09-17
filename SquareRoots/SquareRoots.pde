for(float a = 0; a < 1000; a++){
   for(float b = 0; b < 1000; b++) {
      if(sqrt(a+b) == (sqrt(a) + sqrt(b)))
        println("Found it! " + int(a) + ", " + int(b));
   }
}
for (float i = 1871; i > 0; i--) {
  if (int(sqrt(i)) == sqrt(i)) { //checks whether it's a decimal or not
    if ((1871 - int(i - sqrt(i))) < 132)
      println("He was born in " + int(i - sqrt(i)) + " and his age was " + int(sqrt(i)) + ". He lived to be " + (1871 - int(i - sqrt(i))) + " years old!"); //prints birth and age
    else
      println("He was born in " + int(i - sqrt(i)) + " and his age was " + int(sqrt(i)) + ". He lived to be " + (1871 - int(i - sqrt(i))) + " years old, but silly human, the oldest human to live, died at 122 years, 164 days."); //prints birth and age
  }
}
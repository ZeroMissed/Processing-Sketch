IntList numbers = new IntList();
IntList primes = new IntList();

for(int i = 0; i <= 1000000; i++) {
    primes.append(i);
  }
  println(primes.size());
  for(int n = primes.size() - 3; n >= 0; n--) {
    for(int i = 2; i < 10000; i++) {
      if(n%i == 0) 
        primes.remove(n);
    }
  }
    

for(int i = 2; i < 100000; i+=2) {
  numbers.append(i);
}
for(int n = numbers.size() - 1; n >= 0; n--) {
 for(int i = 0; i < primes.size() - 1; i++) {
   if(numbers.get(n)%primes.get(i) == 0) {
     numbers.remove(n);
     break;
 }
 for(int r = 2; r < 100000; r+=2) {
   if(float(numbers.get(n))/float(r) - numbers.get(n)/r == 0.5) 
     numbers.remove(n);
 }
 
}
}
println(primes);
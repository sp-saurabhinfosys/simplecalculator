String prime(int num){
  bool isPrime = true;
  for(int i=2;i<=num/2;i++)
    {
      print(num);
      if(num%i==0)
        {
          isPrime = false;
          //return "Number is composite";
          break;
        }

    }
  if(isPrime){
    return "$num is prime";
  }
  else{
    return "$num is not prime";
  }
}
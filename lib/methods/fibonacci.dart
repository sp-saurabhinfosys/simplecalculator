List<dynamic> fibo(int num)
{
  List fibonacci = List();
  int n1 = 0;
  int n2 = 1;
  int n3 = 0;
  int i=2;
  fibonacci.add(n1);
  fibonacci.add(n2);
  print(fibonacci);
  do{
    n3 = n1 + n2;
    n1 = n2;
    n2 = n3;
    if(n3<num)
    fibonacci.add(n3);
    i++;
  }while(n3<num);
 /* while(n3<num){



  }*/
  print(fibonacci);
  return fibonacci;

}
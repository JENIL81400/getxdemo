 import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class getclass extends GetxController
{
  RxInt c=0.obs;

  RxInt sum = 0.obs;
  RxInt sub =0.obs;
  RxInt mul =0.obs;
  RxInt div =0.obs;
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();


  void getval(String text1,String text2,int t)
  {
    int n1=num.parse(text1).toInt();
    int n2=num.parse(text2).toInt();


    if(t==1)
      {
        sum.value=n1+n2;
      }
    if(t==2)
      {
        sub.value=n1-n2;
      }
    if(t==3)
      {
        mul.value=n1*n2;
      }
    if(t==4)
      {
        div.value=n1~/n2;
      }
  }

  incre()
  {
    c++;
  }
  decre()
  {
    c--;
  }
}
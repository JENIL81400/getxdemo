import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/getclass.dart';

void main() {
  runApp( MaterialApp(
    home: getdemo1(),
  ));
}

class getdemo extends StatelessWidget {

  getclass m=Get.put(getclass());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: () {
            m.incre();
          }, child: Text("+")),
           Obx(() => Text("${m.c}")),
          ElevatedButton(onPressed: () {
            m.decre();
          }, child: Text("-")),
        ],
      ),
    );
  }
}

class getdemo1 extends StatelessWidget {

  getclass m=Get.put(getclass());
  TextEditingController t1=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(controller: m.t1,),
            TextField(controller: m.t2,),
            Row(mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ElevatedButton(onPressed: () {
                  m.getval(m.t1.text,m.t2.text, 1);
                }, child: Text("Sum")),
                Obx(() => Text("sum=${m.sum.value}")),

                ElevatedButton(onPressed: () {
                  m.getval(m.t1.text,m.t2.text, 2);
                }, child: Text("sub")),
                Obx(() => Text("sub=${m.sub.value}")),

                ElevatedButton(onPressed: () {
                  m.getval(m.t1.text,m.t2.text, 3);
                }, child: Text("mul")),
                Obx(() => Text("mul=${m.mul.value}")),

                ElevatedButton(onPressed: () {
                  m.getval(m.t1.text,m.t2.text, 4);
                }, child: Text("div")),
                Obx(() => Text("div=${m.div.value}")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:test(),
  ));
}
class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  int sum=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextField(controller: t1,),
            TextField(controller: t2,),
            ElevatedButton(onPressed:(){
              String a=t1.text;
              String b=t2.text;
              int n1=int.parse(a);
              int n2=int.parse(b);
              sum=n1+n2;
              setState((){});
            },child:Icon(Icons.add_sharp),),
            Text('$sum')
          ],
        ),
      ),
    );
  }
}




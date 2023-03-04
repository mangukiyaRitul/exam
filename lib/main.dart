import 'package:exam/main.dart';
import 'package:flutter/material.dart';

void main()
{

  runApp(exam());

}
class exam extends StatefulWidget {
  const exam({Key? key}) : super(key: key);


  @override
  State<exam> createState() => _examState();
}

class _examState extends State<exam> {

  int sum=0;
  String result="";
  Color c1 = Colors.white;
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {



//   double width=MediaQuery.of(context).size.width;
//   double heidth=MediaQuery.of(context).size.height;
// //double apppbarheidth=kToolbarHeight;
//     double statusbarheidth=MediaQuery.of(context).padding.top;
//     double bottombarheidth=MediaQuery.of(context).padding.bottom;
//     double bodyheidth=heidth-statusbarheidth-bottombarheidth;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(

            margin: EdgeInsets.fromLTRB(10, 50, 10, 10),
            child: Column(

              children: [

                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                  ),
                  controller: num1,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),

                    ),
                    controller: num2,
                  ),
                ),

                ElevatedButton(onPressed: (){

                  setState(() {
                    sum = int.parse(num1.text) + int.parse(num2.text);
                     if(sum>=10 && sum<20 )
                       {
                         c1=Colors.red;
                       }
                     else if(sum>=20 && sum<30)
                     {
                       c1=Colors.blue;
                     }
                     else if(sum>=30 && sum<40 )
                     {
                       c1=Colors.green;
                     }
                     else if(sum>=40 && sum<50)
                     {
                       c1=Colors.deepOrange;
                     }
                     else if(sum>=50 && sum<60)
                     {
                       c1=Colors.teal;
                     }
                     else if(sum>=60 && sum<70)
                     {
                       c1=Colors.purple;
                     }
                     else if(sum>=70 && sum<80)
                     {
                       c1=Colors.black87;
                     }
                     else if(sum>=80 && sum<90)
                     {
                       c1=Colors.grey;
                     }
                      // result = sum.toString();

                  });
                }, child: Text("sum",style: TextStyle(fontSize: 20),)),


              Container(
                height:30 ,
                width: 30,
                child:  Text("$sum",style: TextStyle(fontSize: 25)),
              ),
                Container(
                  height: 40,
                  width: 200,
                  color: c1,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

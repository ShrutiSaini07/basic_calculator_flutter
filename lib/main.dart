import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}
class MyHomePageState extends State<MyHomePage>{
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Calculator"),
      ),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 200,
              child: TextField(
                controller: no1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 2,
                      )
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: no2Controller,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.pinkAccent,
                        width: 2,
                      )
                  ),
                ),
              ),
            ),
              SizedBox(height: 40,),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var sum = no1+no2;
                      result = "$sum";

                      setState(() {

                      });
                    },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            primary: Colors.pinkAccent
                        ),
                        child:Text('Add',style: TextStyle(color: Colors.white,fontSize: 18),)),

                    SizedBox(
                      width: 20,
                    ),

                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var sub = no1-no2;
                      result = "$sub";

                      setState(() {

                      });
                    },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            primary: Colors.pinkAccent
                        ),
                        child:Text('Sub',style: TextStyle(color: Colors.white,fontSize: 18) ,)),
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var mul = no1*no2;
                      result = "$mul";

                      setState(() {

                      });
                    },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            primary: Colors.pinkAccent
                        ),
                        child:Text('Mul',style: TextStyle(color: Colors.white,fontSize: 18),)),

                    SizedBox(
                      width: 20,
                    ),

                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());

                      var div = no1/no2;
                      result = "$div";

                      setState(() {

                      });
                    },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            primary: Colors.pinkAccent
                        ),
                        child:Text('Div',style: TextStyle(color: Colors.white,fontSize: 18),)),
                  ],
                ),
                Padding(padding: EdgeInsets.all(21),
                child: Text(result,style: TextStyle(fontSize: 25),),)
              ],
            ),
          ],
        ),
      ),
    );
  }

}

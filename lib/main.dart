import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(toolbarHeight: 30, backgroundColor: Colors.black,
          title: Align(alignment: Alignment.center,
              child: Text('Tasbeeh counter')),
        ),
        body: Counter(),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var counter = 0;
  var c1;
  var c2;
  var c3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black87),
      //Color:Colors.pink,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                  c1=0;
                  c2=0;
                  c3=0;
                });
              },
              mini:true,
              child: Icon(Icons.clear),
              backgroundColor:Colors.red,
            ),
          ),

          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: TextButton(onPressed: () {setState(() {
            });  }, child: Text("SubhanAllah"),),
          ),
          Center(child: Text('The counter is : \t $c1',style: TextStyle(color: Colors.white)),),
          c1==33? Icon(Icons.check_box,color: Colors.red,):Icon(Icons.check_box_outline_blank,color: Colors.red,),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: TextButton(onPressed: () {setState(() {
            });  }, child: Text("Alhamdulillah"),),
          ),
          Center(child: Text('The counter is : \t $c2',style: TextStyle(color: Colors.white),),),
          c2==33? Icon(Icons.check_box,color: Colors.red,):Icon(Icons.check_box_outline_blank,color: Colors.red,),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: TextButton(onPressed: () { setState(() {
            }); }, child: Text("Allahuakbar"),),
          ),
          Center(child: Text('The counter is : \t $c3',style: TextStyle(color: Colors.white)),),
          c3==33? Icon(Icons.check_box,color: Colors.red,):Icon(Icons.check_box_outline_blank,color: Colors.red,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[ FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter--;
                  c1=f1(counter);
                  c2=f2(counter);
                  c3=f3(counter);
                  exception(counter);
                });
              },
              child: Icon(Icons.exposure_minus_1),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
              backgroundColor:Colors.black87,
            ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    counter++;
                    c1=f1(counter);
                    c2=f2(counter);
                    c3=f3(counter);
                    exception(counter);
                  });
                },
                child: Icon(Icons.plus_one),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                backgroundColor:Colors.black87,
              ),
           ]
          ),


        ],
      ),
    );
  }
  int f1(int c){
    if(c<34) {
      return (c);
    }
    return(33);
  }
  int f2(int c){
    if(c>33 && c<67) {
      return (c % 33);
    }
    else if(c>66)
      return(33);
    else
      return(0);
  }
  int f3(int c){
    if(c>66 && c<100) {
      return (c % 66);
    }
    else if(c>99)
      return(33);
    else
      return(0);
  }
  void exception(int c){
    if(c>99){
      c1=0;
      c2=0;
      c3=0;
      counter=0;
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(5, 99, 231, 1),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 20,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
                  ),
                  child: Stack(
                        alignment: Alignment.bottomCenter,
                        overflow: Overflow.visible,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              children: [
                                InkWell(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          spreadRadius: 10,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    child:Center(
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                        size: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Image(image: AssetImage('images/1-01.png'), width: 100, height: 50,),
                                SizedBox(
                                  width: 100,
                                ),
                                Column(
                                  children: [
                                    Text( 'Sports',
                                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold,color: Colors. blueAccent),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image(image: AssetImage('images/Rectangle 2.png',),width: 82,height: 21, ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: -35,

                            child: Image(image: AssetImage('images/Group 3.png'),width: 300,height: 70,),
                          ),

                        ],

                      ),

                  ),
              ),
              Expanded(
                flex:10,child: Container(
              ),),
              Expanded(flex:70,
                  child: Container(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('CONDITIONS:', style: TextStyle( fontWeight: FontWeight.bold, fontSize:18.0,color: Colors.white )),
                    SizedBox(
                      height: 10,
                    ),

                      Text('line1\nline2\nline3', style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.white),),
                    SizedBox(
                      height: 10,
                    ),
                      Text('READ ALL CONDITIONS!', style: TextStyle(decoration: TextDecoration.underline,fontSize: 10,fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0,right: 40.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Text('Rank 1',style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                               ),),
                               SizedBox(
                                 width: 20,
                               ),
                               Text('Rs. 10', style: TextStyle(
                                 fontWeight: FontWeight.bold,
                                 fontSize: 20,
                               ),),
                             ],
                            ),

                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(15.0)),
                              border: Border.all(color: Colors.white, width: 3)
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      containerBox(textname: 'Rank 2', cost: 'Rs. 8', colour: Colors.grey,),
                      SizedBox(
                        height: 5,
                      ),
                      containerBox(textname: 'Rank 3', cost: 'Rs. 6', colour: Colors.brown,),
                      SizedBox(
                        height: 5,
                      ),
                      containerBox(textname: 'Rank 4-10', cost: 'Rs. 3', colour: Colors.blue,),
                      SizedBox(
                        height: 5,
                      ),
                      containerBox(textname: 'Rank 11-20', cost: 'Rs. 2', colour: Colors.blue,),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left:40.0, right: 40.0),
                          child: Container(
                            child: Center(
                              child: Text(
                                'Start Game',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                      color: Colors.white
                                  ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.all(Radius.circular(20.0),),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),

                    ],
                    ),
                  ),),
              Divider(
                thickness: 5.0,
                color: Colors.red,
              ),
              Expanded(
                  flex: 15,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          bottamiconwidget(iconname: 'Special Pass', imagename: 'images/Group 2723.png',),
                          bottamiconwidget(iconname: 'Leaderboard', imagename: 'images/Group 2724.png',),
                          bottamiconwidget(iconname: 'Home', imagename: 'images/Group 2725.png',),
                          bottamiconwidget(iconname: 'Features', imagename: 'images/Group 2726.png',),
                          bottamiconwidget(iconname: 'Game Types', imagename: 'images/Group 2727.png',),


                        ],
                      ),
                    ),
                  )),
            ],
        ),
        ),
      ),
    );
  }
}

class containerBox extends StatelessWidget {
  final textname;
  final cost;
  final Color colour;
  containerBox({@required this.textname, @required this.cost, @required this. colour});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 40.0,right: 40.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('$textname',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                  color: Colors.white,
              ),),
              SizedBox(
                width: 20,
              ),
              Text('$cost', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                  color: Colors.white,
              ),),
            ],
          ),
          decoration: BoxDecoration(
              color: colour,
              border: Border.all(color: Colors.white, width: 3)
          ),
        ),
      ),
    );
  }
}

class bottamiconwidget extends StatelessWidget {
  final iconname;
  final imagename;
  bottamiconwidget({@required this.iconname, @required this.imagename});
  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Text('$iconname',style: TextStyle(fontSize: 10,color: Colors.white),),
       Image(image: AssetImage('$imagename',),width: 50, height: 50,),
     ],

    );
  }
}


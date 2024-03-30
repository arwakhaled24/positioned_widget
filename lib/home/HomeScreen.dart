import 'package:flutter/material.dart';
import 'package:project_youtube1/home/yes.dart';

class HomeScreen extends StatefulWidget {
  static const String route= "routeName";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  List<double> post = [50, 75,0];
  List<double> posr=[25,50,0];
  int index = 0;
  int indexr=0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "ARWA",
          style: TextStyle(
            fontSize: 28,
          ),
        )),
        backgroundColor: Color(000),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Do you love ARWA ?" ,style: TextStyle(fontSize: 22),),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                   Text("and arwa also loves you 💋");
                   Navigator.pushReplacementNamed(context, YES.routename);
                }, child: Text("YES")),
              SizedBox(width: 20),
              Container(
                alignment:Alignment.center ,
                width: 120,
                height: 150,
                child: Stack(
                  children:[ Positioned(
                   top: post[index],
                    right: posr[indexr],
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          index++;
                          if(index==3){
                            index =0;
                            indexr++;
                          }
                          // post = post +30;
                        });
                      },
                      child: Text("NO"),
                    ),
                  ),
                ]
                ),
              ),
        ]),
        ],
      ),
    );
  }
}

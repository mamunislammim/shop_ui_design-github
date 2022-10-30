
import 'package:flutter/material.dart';

import 'first_screen.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4cccc),
      body: Column(
        children: [
          SizedBox(height: 35,),
          Stack(
               children: [
             Image.asset('image/icons/my.png'),
             Padding(
               padding: const EdgeInsets.only(top: 80),
               child: Image.asset('image/icons/shop.png'),
             )
               ]
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FirstScreen()));
            },
            child: Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: SizedBox(
                height: 50,
                child: Card(
                    color: Colors.red,
                    child: Center(child: Text("Let's Start",style: TextStyle(fontSize: 25,color: Colors.greenAccent),))),
              ),
            ),
          )
        ],
      )
    );
  }
}


//
// Icons.add_box_outlined,
// Icons.snowshoeing,
// Icons.timer_outlined,
// Icons.person,
// Icons.mobile_friendly,
// Icons.male,
// Icons.microwave_rounded
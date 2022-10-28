import 'package:flutter/material.dart';
 import 'package:ui_design_shop_github/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {


  int _selectedIndex = 0;

    _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height ;
     double w =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.add_box_outlined,
          color: Colors.redAccent,
          size: 25,
        ),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: Color(0xffbca6d5),
            radius: 10,
            child: Icon(
              Icons.shopping_cart_checkout_outlined,
              color: Colors.redAccent,
              size: 15,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
              backgroundColor: Color(0xffbca6d5),
              radius: 12,
              foregroundImage: AssetImage('image/bbb.png',)
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 8, right: 8),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: SizedBox(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18)),
                        labelText: "Search",
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.redAccent,
                  image: DecorationImage(
                    alignment: Alignment.center,
                      image: AssetImage('image/icons/filter.png'))
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('image/poster.jpg')
                )
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 5, bottom: 5, left: 6, right: 6),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          size: 22,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "All",
                          style: TextStyle(color: Colors.redAccent),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 6, right: 6),
                    child: Row(
                      children: [
                        Image.asset('image/sh.png',height: 15,width: 15,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Footwear",
                          style: TextStyle(color: Colors.grey,fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 6, right: 6),
                    child: Row(
                      children: [
                        Image.asset('image/watch.png',height: 15,width: 20,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Watch",
                          style: TextStyle(color: Colors.grey,fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 6, right: 6),
                    child: Row(
                      children: [
                        Image.asset('image/tshirt.png',height: 15,width: 20,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "T Shirt",
                          style: TextStyle(color: Colors.grey,fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 6, right: 6),
                    child: Row(
                      children: [
                        Image.asset('image/sh.png',height: 10,width: 10,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Footwear",
                          style: TextStyle(color: Colors.grey,fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 6, right: 6),
                    child: Row(
                      children: [
                        Image.asset('image/sh.png',height: 10,width: 10,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Footwear",
                          style: TextStyle(color: Colors.grey,fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 6, right: 6),
                    child: Row(
                      children: [
                        Image.asset('image/sh.png',height: 15,width: 15,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Footwear",
                          style: TextStyle(color: Colors.grey,fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 6, right: 6),
                    child: Row(
                      children: [
                        Image.asset('image/watch.png',height: 15,width: 20,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Watch",
                          style: TextStyle(color: Colors.grey,fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 6, right: 6),
                    child: Row(
                      children: [
                        Image.asset('image/tshirt.png',height: 15,width: 20,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "T Shirt",
                          style: TextStyle(color: Colors.grey,fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 6, right: 6),
                    child: Row(
                      children: [
                        Image.asset('image/sh.png',height: 10,width: 10,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Footwear",
                          style: TextStyle(color: Colors.grey,fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 6, right: 6),
                    child: Row(
                      children: [
                        Image.asset('image/sh.png',height: 10,width: 10,),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "Footwear",
                          style: TextStyle(color: Colors.grey,fontSize: 11),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllProduct()));
                  });
                },
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3,bottom: 3,left: 5),
                    child: Row(
                      children: [
                        Text("View All",style: TextStyle(fontSize: 11),),
                        Icon(Icons.arrow_drop_down)
                      ],

                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: h ,
                    width: w,
                    child: Card(
                      color: Color(0xffdcecaa),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w/20),
                    child: Container(
                      height: h/3,
                      width: w/3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/sh.png'),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 5),
                    child:  Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text("New",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: h/5,left: w/20),
                    child: Column(
                      children: [
                        Text("Nike Shoes",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        Text("\$ 12.00",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  SizedBox(
                    height: h,
                    width: w,
                    child: Card(
                      color: Color(0xffFFA07A),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: h/3,
                      width: w/3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/gridview/sofa.png'),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: h/5,left: 20),
                    child: Column(
                      children: [
                        Text("Chair",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        Text("\$ 10.00",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  SizedBox(
                    height: h,
                    width: w,
                    child: Card(
                      color: Color(0xff56B1B9),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 20),
                    child: Container(
                      height: h/6,
                      width: w/6,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/watch.png'),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding:   EdgeInsets.only(top: h/5, left: w/12),
                    child: Text("Smart Watch",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding:   EdgeInsets.only(top: h/4.5,left: w/10),
                    child: Text("\$ 6.00",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  SizedBox(
                    height: h,
                    width: w,
                    child: Card(
                      color: Color(0xff60B8FC),
                    ),
                  ),

                  // love icon
                  Padding(
                    padding:  EdgeInsets.only(left: h/4.5,top: 10),
                    child: Icon(Icons.favorite,size: 25,color: Colors.red,),
                  ),

                  // add icon
                  Padding(
                    padding:   EdgeInsets.only(left: w/2.7,top: h/4.6),
                    child: Icon(Icons.add_circle,size: 25,color: Colors.red,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: 1),
                    child: Container(
                      height: h/5,
                      width: w/2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            // fit: BoxFit.cover,
                            image: AssetImage('image/shoes/s8.png'),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 5),
                    child:  Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text("New",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: h/5,left: 10),
                    child: Column(
                      children: [
                        Text("Jump Shoes",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        Text("\$ 5.00",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  SizedBox(
                    height: h,
                    width: w,
                    child: Card(
                      color: Color(0xffdcecaa),
                    ),
                  ),

                  // love icon
                  Padding(
                    padding:  EdgeInsets.only(left: h/4.5,top: 10),
                    child: Icon(Icons.favorite,size: 25,color: Colors.red,),
                  ),

                  // add icon
                  Padding(
                    padding:   EdgeInsets.only(left: w/2.7,top: h/4.6),
                    child: Icon(Icons.add_circle,size: 25,color: Colors.red,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: w/10),
                    child: Container(
                      height: h/3,
                      width: w/3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('image/sh.png'),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 5),
                    child:  Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text("New",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: h/5,left: 10),
                    child: Column(
                      children: [
                        Text("Nike Shoes",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        Text("\$ 12.00",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  SizedBox(
                    height: h,
                    width: w,
                    child: Card(
                      color: Color(0xffC0FFEE),
                    ),
                  ),

                  // love icon
                  Padding(
                    padding:  EdgeInsets.only(left: h/4.5,top: 10),
                    child: Icon(Icons.favorite,size: 25,color: Colors.red,),
                  ),

                  // add icon
                  Padding(
                    padding:   EdgeInsets.only(left: w/2.7,top: h/4.6),
                    child: Icon(Icons.add_circle,size: 25,color: Colors.red,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: w/10),
                    child: Container(
                      height: h/5,
                      width: w/2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('image/shoes/s2.png'),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5,left: 5),
                    child:  Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text("New",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: h/5,left: 10),
                    child: Column(
                      children: [
                        Text("Jump Shoes",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        Text("\$ 5.00",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedFontSize: 0,
        unselectedIconTheme: IconThemeData(color: Colors.grey,size: 22),
        selectedIconTheme: IconThemeData(color: Colors.redAccent,size: 33),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourite"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: "Shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.today_outlined), label: "Box"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),
        ],
      ),
    );
  }
}

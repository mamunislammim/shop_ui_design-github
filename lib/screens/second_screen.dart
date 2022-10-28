

import 'package:flutter/material.dart';

class ViewAllProduct extends StatefulWidget {
  const ViewAllProduct({Key? key}) : super(key: key);

  @override
  State<ViewAllProduct> createState() => _ViewAllProductState();
}

class _ViewAllProductState extends State<ViewAllProduct> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height ;
    double w =  MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff8e0e0),
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Color(0xfff8e0e0),
        leading: Icon(
          Icons.add_box_outlined,
          color: Colors.redAccent,
          size: 25,
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sports Shoes",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                child: InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: [
                        Text("Sort By",style: TextStyle(fontSize: 15),),
                        Icon(Icons.arrow_drop_down,size: 20,)
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
              Stack(
                children: [
                  SizedBox(
                    height: h,
                    width: w,
                    child: Card(
                      color: Color(0xfff4cccc),
                    ),
                  ),
                  // love icon
                  Padding(
                    padding:  EdgeInsets.only(left: h/4.5,top: 10),
                    child: Icon(Icons.favorite,size: 25,color: Colors.grey,),
                  ),

                  // add icon
                  Padding(
                    padding:   EdgeInsets.only(left: w/2.7,top: h/4.6),
                    child: Icon(Icons.add_circle,size: 25,color: Colors.red,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: w/20),
                    child: Container(
                      height: h/5,
                      width: w/3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            //fit: BoxFit.cover,
                            image: AssetImage('image/shoes/s3.png'),
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(top: h/5,left: 10),
                    child: Column(
                      children: [
                        Text("Red Shoes",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        Text("\$ 4.00",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),
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
                      color: Color(0xffddf0e4),
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
                            image: AssetImage('image/shoes/s4.png'),
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
                      color: Color(0xff7E8FAD),
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
                    padding:  EdgeInsets.only(left: 10),
                    child: Container(
                      height: h/5,
                      width: w/3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                           // fit: BoxFit.cover,
                            image: AssetImage('image/shoes/s5.png'),
                          )
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
                      color: Color(0xff918C94),
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
                    padding:  EdgeInsets.only(left: 10),
                    child: Container(
                      height: h/5,
                      width: w/3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                           // fit: BoxFit.cover,
                            image: AssetImage('image/shoes/s6.png'),
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
                      color: Color(0xff5ED795),
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
                    padding:  EdgeInsets.only(),
                    child: Container(
                      height: h/5,
                      width: w/2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                           // fit: BoxFit.cover,
                            image: AssetImage('image/shoes/s7.png'),
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
              Stack(
                children: [
                  SizedBox(
                    height: h,
                    width: w,
                    child: Card(
                      color: Color(0xfff4cccc),
                    ),
                  ),
                  // love icon
                  Padding(
                    padding:  EdgeInsets.only(left: h/4.5,top: 10),
                    child: Icon(Icons.favorite,size: 25,color: Colors.grey,),
                  ),

                  // add icon
                  Padding(
                    padding:   EdgeInsets.only(left: w/2.7,top: h/4.6),
                    child: Icon(Icons.add_circle,size: 25,color: Colors.red,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: w/20),
                    child: Container(
                      height: h/5,
                      width: w/3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            //fit: BoxFit.cover,
                            image: AssetImage('image/shoes/s3.png'),
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(top: h/5,left: 10),
                    child: Column(
                      children: [
                        Text("Red Shoes",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                        Text("\$ 4.00",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),
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
                      color: Color(0xffddf0e4),
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
                            image: AssetImage('image/shoes/s4.png'),
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
                      color: Color(0xff7E8FAD),
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
                    padding:  EdgeInsets.only(left: 10),
                    child: Container(
                      height: h/5,
                      width: w/3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            // fit: BoxFit.cover,
                            image: AssetImage('image/shoes/s5.png'),
                          )
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
                      color: Color(0xff918C94),
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
                    padding:  EdgeInsets.only(left: 10),
                    child: Container(
                      height: h/5,
                      width: w/3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            // fit: BoxFit.cover,
                            image: AssetImage('image/shoes/s6.png'),
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
                      color: Color(0xff5ED795),
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
                    padding:  EdgeInsets.only(),
                    child: Container(
                      height: h/5,
                      width: w/2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            // fit: BoxFit.cover,
                            image: AssetImage('image/shoes/s7.png'),
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

            ],
          )
        ],
      ),
    );
  }
}

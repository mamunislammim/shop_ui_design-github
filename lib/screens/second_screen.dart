import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ViewAllProduct extends StatefulWidget {
  const ViewAllProduct({Key? key}) : super(key: key);

  @override
  State<ViewAllProduct> createState() => _ViewAllProductState();
}

class _ViewAllProductState extends State<ViewAllProduct> {

  int _count = 1;

 void _itemAdd(){
    setState(() {
      _count ++;
     // print("Count = $_count");
    });
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xfff6edf1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.dashboard,
              color: Colors.pinkAccent,
              size: 20,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Colors.white,
              child: Badge(
                badgeContent:  Text(
                  '$_count',
                  style: const TextStyle(color: Colors.white),
                ),
                badgeColor: Colors.pinkAccent,
                child: const Icon(
                  Icons.shopping_cart_rounded,
                  color: Colors.grey,
                  size: 18,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('image/mamun.png'),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 8, right: 8),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: SizedBox(
                  height: 30,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(18)),
                        labelText: "Search",
                        suffixIcon: const Icon(Icons.search)),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding:
                const EdgeInsets.only(left: 5, right: 5),
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.pinkAccent,
                    image: const DecorationImage(
                        alignment: Alignment.center,
                        image: AssetImage('image/icons/filter.png'))),
              )
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Sports Shoes",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Row(
                      children: const [
                        Text(
                          "Sort By",
                          style: TextStyle(fontSize: 15,color: Colors.grey),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: h,
                    width: w,
                    child: const Card(
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: const Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),

                  // add icon
                  InkWell(
                    onTap: (){
                      setState(() {
                        _count++;
                       // print(_count);
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: const Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w / 10),
                    child: Container(
                      height: h / 3,
                      width: w / 3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('image/sh.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Nike Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 12.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                    child: Card(color: Colors.white),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),

                  // add icon
                  InkWell(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        child: Icon(
                          Icons.add_circle,
                          size: 25,
                          color: Colors.pinkAccent,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w / 10),
                    child: Container(
                      height: h / 5,
                      width: w / 2,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s2.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Card(
                      color: Colors.teal[200],
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                      color: Colors.white,
                    ),
                  ),
                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),

                  // add icon
                  Padding(
                    padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                    child: Icon(
                      Icons.add_circle,
                      size: 25,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w / 20),
                    child: Container(
                      height: h / 5,
                      width: w / 3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        //fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s3.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Card(
                      color: Colors.brown[300],
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Red Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 4.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                    child: const Card(
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),

                  // add icon
                  InkWell(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: const Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w / 10),
                    child: Container(
                      height: h / 5,
                      width: w / 2,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s4.png'),
                      )),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                    child: const Card(
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: const Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),

                  // add icon
                  InkWell(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: const Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: h / 5,
                      width: w / 3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s5.png'),
                      )),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: const Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),

                  // add icon
                  InkWell(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: const Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      height: h / 5,
                      width: w / 3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s6.png'),
                      )),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, left: 5),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                    child: const Card(
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: const Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),

                  // add icon
                  InkWell(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: const Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Container(
                      height: h / 5,
                      width: w / 2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s7.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),

                  // add icon
                  InkWell(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1),
                    child: Container(
                      height: h / 5,
                      width: w / 2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s8.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                      color: Colors.white,
                    ),
                  ),
                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),

                  // add icon
                  InkWell(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w / 20),
                    child: Container(
                      height: h / 5,
                      width: w / 3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        //fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s3.png'),
                      )),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Red Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 4.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),

                  // add icon
                  GestureDetector(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: w / 10),
                    child: Container(
                      height: h / 5,
                      width: w / 2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s4.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),

                  // add icon
                  GestureDetector(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      height: h / 5,
                      width: w / 3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s5.png'),
                      )),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: Icon(
                      Icons.favorite,
                      size: 25,
                      color: Colors.red,
                    ),
                  ),

                  // add icon
                  GestureDetector(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Container(
                      height: h / 5,
                      width: w / 3,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s6.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),

                  // add icon
                  GestureDetector(
                   onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Container(
                      height: h / 5,
                      width: w / 2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s7.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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
                      color: Colors.white,
                    ),
                  ),

                  // love icon
                  Padding(
                    padding: EdgeInsets.only(left: h / 4.5, top: 10),
                    child: Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),

                  // add icon
                  GestureDetector(
                    onTap: _itemAdd,
                    child: Padding(
                      padding: EdgeInsets.only(left: w / 2.7, top: h / 4.6),
                      child: Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 1),
                    child: Container(
                      height: h / 5,
                      width: w / 2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s8.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 9),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const [
                        Text(
                          "Jump Shoes",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 5.00",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
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

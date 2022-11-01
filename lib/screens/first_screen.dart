import 'package:flutter/material.dart';
 import 'package:badges/badges.dart';
import 'package:ui_design_shop_github/screens/test_second.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List<String> categoryName = [
    'All',
    'T Shirt',
    'Watch',
    'Shoes',
    'Electronics',
    'Fashion',
    'Cosmetics'
  ];

  List<String> categoryIcons = [
    "image/house.png",
    "image/tshirt.png",
    "image/watch.png",
    "image/sh.png",
    "image/electronics.png",
    "image/fashion.png",
    "image/mamun.png",

  ];
  int selectedIndex = 0;
  int _bottomSelectIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _bottomSelectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xfff6edf1),
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
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
                badgeContent: const Text(
                  '1',
                  style: TextStyle(color: Colors.white),
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
                padding: const EdgeInsets.only(left: 5, right: 5),
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
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('image/poster.jpg'))),
          ),
          const SizedBox(
            height: 10,
          ),
          
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 5, bottom: 5, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Icon(
          //                 Icons.add_box_outlined,
          //                 size: 22,
          //                 color: Colors.redAccent,
          //               ),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "All",
          //                 style: TextStyle(color: Colors.redAccent),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 8, bottom: 8, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Image.asset('image/sh.png',height: 15,width: 15,),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "Footwear",
          //                 style: TextStyle(color: Colors.grey,fontSize: 13),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 8, bottom: 8, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Image.asset('image/watch.png',height: 15,width: 20,),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "Watch",
          //                 style: TextStyle(color: Colors.grey,fontSize: 11),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 8, bottom: 8, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Image.asset('image/tshirt.png',height: 15,width: 20,),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "T Shirt",
          //                 style: TextStyle(color: Colors.grey,fontSize: 11),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 8, bottom: 8, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Image.asset('image/sh.png',height: 10,width: 10,),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "Footwear",
          //                 style: TextStyle(color: Colors.grey,fontSize: 11),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 8, bottom: 8, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Image.asset('image/sh.png',height: 10,width: 10,),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "Footwear",
          //                 style: TextStyle(color: Colors.grey,fontSize: 11),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 8, bottom: 8, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Image.asset('image/sh.png',height: 15,width: 15,),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "Footwear",
          //                 style: TextStyle(color: Colors.grey,fontSize: 13),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 8, bottom: 8, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Image.asset('image/watch.png',height: 15,width: 20,),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "Watch",
          //                 style: TextStyle(color: Colors.grey,fontSize: 11),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 8, bottom: 8, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Image.asset('image/tshirt.png',height: 15,width: 20,),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "T Shirt",
          //                 style: TextStyle(color: Colors.grey,fontSize: 11),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 8, bottom: 8, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Image.asset('image/sh.png',height: 10,width: 10,),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "Footwear",
          //                 style: TextStyle(color: Colors.grey,fontSize: 11),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Card(
          //         child: Padding(
          //           padding: const EdgeInsets.only(
          //               top: 8, bottom: 8, left: 6, right: 6),
          //           child: Row(
          //             children: [
          //               Image.asset('image/sh.png',height: 10,width: 10,),
          //               SizedBox(
          //                 width: 3,
          //               ),
          //               Text(
          //                 "Footwear",
          //                 style: TextStyle(color: Colors.grey,fontSize: 11),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 50.0,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: categoryIcons.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = i;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 7, right: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(categoryIcons[i]),
                            // Icon(
                            //   categoryIcons[i],
                            //   color: selectedIndex == i ? Colors.pinkAccent : Colors.grey,
                            // ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              categoryName[i],
                              style: TextStyle(
                                  color: selectedIndex == i
                                      ? Colors.pinkAccent
                                      : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestSecond()));
                  });
                },
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3, left: 5),
                    child: Row(
                      children: const [
                        Text(
                          "View All",
                          style: TextStyle(fontSize: 11),
                        ),
                        Icon(Icons.arrow_drop_down)
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
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestSecond()));
                  });
                },
                child: Stack(
                  children: [
                    SizedBox(
                      height: h,
                      width: w,
                      child: const Card(
                        color: Color(0xffedf7be),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: w / 20),
                      child: Container(
                        height: h / 3,
                        width: w / 3,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('image/sh.png'),
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
                      padding: EdgeInsets.only(top: h / 5, left: w / 20),
                      child: Column(
                        children:const [
                          Text(
                            "Nike Shoes",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          Text("\$ 12.00",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    height: h,
                    width: w,
                    child: const Card(
                      color: Color(0xfffbe5ec),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: h / 3,
                      width: w / 3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('image/gridview/sofa.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 20),
                    child: Column(
                      children: const [
                        Text(
                          "Chair",
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$ 10.00",
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
                      color: Color(0xffbeedf7),
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
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Container(
                      height: h / 6,
                      width: w / 6,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('image/watch.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: w / 12),
                    child: const Text(
                      "Smart Watch",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 4.5, left: w / 10),
                    child: const Text(
                      "\$ 6.00",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  SizedBox(
                    height: h,
                    width: w,
                    child: const Card(
                      color: Color(0xfff9d1f2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Container(
                      height: h / 5,
                      width: w / 2,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        // fit: BoxFit.cover,
                        image: AssetImage('image/shoes/s8.png'),
                      )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h / 5, left: 10),
                    child: Column(
                      children: const[
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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _bottomSelectIndex,
        onTap: _onItemTapped,
        selectedFontSize: 0,
        unselectedIconTheme: const IconThemeData(color: Colors.grey, size: 22),
        selectedIconTheme: const IconThemeData(color: Colors.redAccent, size: 33),
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: "Shopping"),
          BottomNavigationBarItem(
              icon: Icon(Icons.today_outlined), label: "Box"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Account"),
        ],
      ),
    );
  }
}

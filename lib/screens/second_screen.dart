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
     // body: ListView(
     //    padding: const EdgeInsets.only(left: 8, right: 8),
     //    children: [
     //      Row(
     //        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     //        children: [
     //          Flexible(
     //            child: SizedBox(
     //              height: 30,
     //              child: TextField(
     //                decoration: InputDecoration(
     //                    filled: true,
     //                    fillColor: Colors.white,
     //                    border: OutlineInputBorder(
     //                        borderSide: BorderSide.none,
     //                        borderRadius: BorderRadius.circular(18)),
     //                    labelText: "Search",
     //                    suffixIcon: const Icon(Icons.search)),
     //              ),
     //            ),
     //          ),
     //          const SizedBox(
     //            width: 10,
     //          ),
     //          Container(
     //            padding:
     //            const EdgeInsets.only(left: 5, right: 5),
     //            height: 30,
     //            width: 50,
     //            decoration: BoxDecoration(
     //                borderRadius: BorderRadius.circular(18),
     //                color: Colors.pinkAccent,
     //                image: const DecorationImage(
     //                    alignment: Alignment.center,
     //                    image: AssetImage('image/icons/filter.png'))),
     //          )
     //        ],
     //      ),
     //      // ignore: prefer_const_constructors
     //      SizedBox(
     //        height: 10,
     //      ),
     //      Row(
     //        mainAxisAlignment: MainAxisAlignment.spaceBetween,
     //        children: [
     //          const Text(
     //            "Sports Shoes",
     //            style: TextStyle(
     //              fontSize: 15,
     //              color: Colors.black,
     //              fontWeight: FontWeight.bold,
     //            ),
     //          ),
     //          Card(
     //            child: InkWell(
     //              onTap: () {},
     //              child: Padding(
     //                padding: const EdgeInsets.only(left: 5),
     //                child: Row(
     //                  children: const [
     //                    Text(
     //                      "Sort By",
     //                      style: TextStyle(fontSize: 15,color: Colors.grey),
     //                    ),
     //                    Icon(
     //                      Icons.arrow_drop_down,
     //                      size: 20,
     //                    )
     //                  ],
     //                ),
     //              ),
     //            ),
     //          ),
     //        ],
     //      ),
     //      const SizedBox(
     //        height: 10,
     //      ),
     //      ListView.builder(
     //          itemCount: length,
     //          itemBuilder: (_,index){
     //            if(length == 0){
     //              print("MMM");
     //              return Container(
     //                height: 150,
     //                width: 150,
     //                color: Colors.green,
     //              );
     //            }
     //            else if(length == 1){
     //              return Container(height: 150,
     //                width: 150,
     //                color: Colors.amberAccent,
     //              );
     //            }
     //            else{
     //              return Row(
     //                children: [
     //                  Expanded(
     //                      child: Padding(
     //                        padding: const EdgeInsets.all(5.0),
     //                        child: Container(
     //                          height: 200,
     //                          decoration: BoxDecoration(
     //                            color: Colors.white,
     //                            borderRadius: BorderRadius.circular(18),
     //                          ),
     //                          child: Column(
     //                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
     //                            children: [
     //                              Expanded(
     //                                flex: 2,
     //                                child: Padding(
     //                                  padding: const EdgeInsets.all(8.0),
     //                                  child: Row(
     //                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
     //                                    children: [
     //                                      Container(
     //                                          padding: EdgeInsets.only(top: 3,bottom: 10,left: 4,right: 4),
     //                                          decoration: BoxDecoration(
     //                                              borderRadius: BorderRadius.circular(17),
     //                                              color: Colors.teal
     //                                          ),
     //                                          child: Text("New")),
     //                                      Icon(Icons.favorite_border),
     //                                    ],
     //                                  ),
     //                                ),
     //                              ),
     //                              Expanded(
     //                                flex: 6,
     //                                child: Padding(
     //                                  padding: const EdgeInsets.only(left: 10,right: 5,bottom: 5),
     //                                  child: Image.asset(DataList().data[index].imageName,fit: BoxFit.fill,),
     //                                ),
     //                              ),
     //                              Expanded(
     //                                flex: 2,
     //                                child: Padding(
     //                                  padding: const EdgeInsets.only(left: 10,right: 10),
     //                                  child: Row(
     //                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
     //                                    children: [
     //                                      Column(
     //                                        children: [
     //                                          Text(DataList().data[index].shoesName),
     //                                          Text(DataList().data[index].price),
     //                                        ],
     //                                      ),
     //                                      Icon(Icons.add_box,color: Colors.pinkAccent,)
     //                                    ],
     //                                  ),
     //                                ),
     //                              ),
     //                            ],
     //                          ),
     //                        ),
     //                      )),
     //                  Expanded(
     //                      child: Padding(
     //                        padding: const EdgeInsets.all(5.0),
     //                        child: Container(
     //                          height: 200,
     //                          decoration: BoxDecoration(
     //                            color: Colors.white,
     //                            borderRadius: BorderRadius.circular(18),
     //                          ),
     //                          child: Column(
     //                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
     //                            children: [
     //                              Expanded(
     //                                flex: 2,
     //                                child: Padding(
     //                                  padding: const EdgeInsets.all(8.0),
     //                                  child: Row(
     //                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
     //                                    children: [
     //                                      Container(
     //                                          padding: EdgeInsets.only(top: 3,bottom: 10,left: 4,right: 4),
     //                                          decoration: BoxDecoration(
     //                                              borderRadius: BorderRadius.circular(17),
     //                                              color: Colors.teal
     //                                          ),
     //                                          child: Text("New")),
     //                                      Icon(Icons.favorite_border),
     //                                    ],
     //                                  ),
     //                                ),
     //                              ),
     //                              Expanded(
     //                                flex: 6,
     //                                child: Padding(
     //                                  padding: const EdgeInsets.only(left: 10,right: 5,bottom: 5),
     //                                  child: Image.asset(DataList().data[index].imageName,fit: BoxFit.fill,),
     //                                ),
     //                              ),
     //                              Expanded(
     //                                flex: 2,
     //                                child: Padding(
     //                                  padding: const EdgeInsets.only(left: 10,right: 10),
     //                                  child: Row(
     //                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
     //                                    children: [
     //                                      Column(
     //                                        children: [
     //                                          Text(DataList().data[index].shoesName),
     //                                          Text(DataList().data[index].price),
     //                                        ],
     //                                      ),
     //                                      Icon(Icons.add_box,color: Colors.pinkAccent,)
     //                                    ],
     //                                  ),
     //                                ),
     //                              ),
     //                            ],
     //                          ),
     //                        ),
     //                      ))
     //                ],
     //              );
     //            }
     //          })
     //    ],
     //  ),
    );
  }
}

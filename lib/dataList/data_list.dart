import 'package:flutter/material.dart';
import 'package:ui_design_shop_github/models/data_nodels.dart';

class DataList {
  final List<ShoesModels> _data = [
    ShoesModels(
        shoesName: "Nike Shoes",
        price: "\$12.00",
        imageName: "image/shoes/s2.png",
        newText: "newText",
        iconAdd: const Icon(Icons.add_circle),
        iconLove: const Icon(Icons.favorite_border)),
    ShoesModels(
        shoesName: "Nike Shoes",
        price: "\$12.00",
        imageName: "image/shoes/s3.png",
        newText: "newText",
        iconAdd: const Icon(Icons.add_circle),
        iconLove: const Icon(Icons.favorite_border)),
    ShoesModels(
        shoesName: "Nike Shoes",
        price: "\$12.00",
        imageName: "image/shoes/s4.png",
        newText: "newText",
        iconAdd: const Icon(Icons.add_circle),
        iconLove: const Icon(Icons.favorite_border)),
    ShoesModels(
        shoesName: "Nike Shoes",
        price: "\$12.00",
        imageName: "image/shoes/s5.png",
        newText: "newText",
        iconAdd: const Icon(Icons.add_circle),
        iconLove: const Icon(Icons.favorite_border)),
  ];


      Future<List<ShoesModels>> getData()async{
       await Future.delayed(const Duration(seconds: 30));
        return _data;
      }
}

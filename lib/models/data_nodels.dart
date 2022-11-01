import 'package:flutter/cupertino.dart';

class ShoesModels {
  String shoesName;
  String price;
  String imageName;
  String? newText;
  Icon iconAdd;
  Icon? iconLove;
  ShoesModels({required this.shoesName, required this.price,required this.imageName, this.newText,required this.iconAdd,this.iconLove});
}

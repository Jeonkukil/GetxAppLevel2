import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:level2app/model/proudct_model.dart';
import 'package:level2app/data/services.dart';

class Controller extends GetxController{

  var productList = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
  fetchData();
  }

  void fetchData() async {
    var products = await Services.fetchProducts();
    if(products !=null) {
      productList.value = products;
    }
  }
}
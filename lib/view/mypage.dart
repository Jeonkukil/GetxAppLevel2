import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:level2app/controller/controller.dart';
import 'package:level2app/view/product_tile.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chaf Shop'),
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.view_list_rounded),
          ),
          IconButton(onPressed: () {

          },
              icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Obx( () => GridView.builder(
                // 그리드 뷰가 어떤 모양을 가질지 결정해줌
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return ProductTile(
                    controller.productList[index],
                  );
                },
              itemCount: controller.productList.length,
            ),
          ),
        ),
      ),
    );
  }
}

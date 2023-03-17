import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(drawerEdgeDragWidth: Get.bottomBarHeight,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: "home", icon: Icon(Icons.home_outlined,color: Colors.black,)),
        BottomNavigationBarItem(label:"search",icon: Icon(Icons.search,color: Colors.black,)),
        BottomNavigationBarItem(label : "add",icon: Icon(Icons.add,color: Colors.black,)),
        BottomNavigationBarItem(label:"profile",icon: Icon(Icons.person,color: Colors.black,))
      ],
backgroundColor: Colors.green,
onTap:(int){}
      ),

appBar: AppBar(

  leading: IconButton(
    onPressed: (){},
    icon: const Icon(Icons.camera_alt_outlined,color: Colors.black,),
  ),
  actions: [
    IconButton(onPressed: (){}, icon: const Icon(Icons.send,color: Colors.black,))

  ],
  title: const Text("instagram",style: TextStyle(
    color: Colors.black
  ),),
      centerTitle: true,
  elevation: 0,
  backgroundColor: Colors.white,
  shadowColor: Colors.white,
),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(

              scrollDirection: Axis.horizontal,

              child: Row(
mainAxisSize: MainAxisSize.max,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
IconButton(
iconSize: 80,
  onPressed: (){

  },splashRadius: 1,
  icon:   const CircleAvatar(
      radius: 70,
      child:
        Icon(Icons.verified_user)
    ),
)
  ,
],
              ),
            ),
            const Divider(
              thickness: 1,

            )
          ],
        ),
      )
    );
  }
}

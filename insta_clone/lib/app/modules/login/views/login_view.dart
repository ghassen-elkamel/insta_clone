import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(



        title: const Text("instagram",style: TextStyle(
            color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
      ),
      body:  Column(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: TextEditingController(),
        decoration: const InputDecoration(
            label:Text("username"),
            border: OutlineInputBorder(
            borderSide: BorderSide()
            )
        )

            ),
          )   ,  Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: TextEditingController(),
        decoration: const InputDecoration(
            label:Text("password"),border: OutlineInputBorder(
          borderSide: BorderSide()
        )
        ),

            ),
          ),
          TextButton(onPressed: (){},
          style:  const ButtonStyle(
shape:MaterialStatePropertyAll(RoundedRectangleBorder(
  borderRadius:BorderRadius.all(Radius.circular(20))
)
),
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            minimumSize: MaterialStatePropertyAll(Size(200,50 ))
            
          ), child: const Text("login"),),
          TextButton(onPressed:(){} ,style: const ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.blue)
          ), child: const Text("register"),)
        ],
      ),
    );
  }
}

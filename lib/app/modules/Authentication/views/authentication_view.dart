import 'package:app_animation/app/data/callservices.dart';
import 'package:app_animation/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  const AuthenticationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.only(top: 90, bottom: 20, right: 10, left: 10),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/download.jpg'),
                radius: 80,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Form(
                  key:controller.globalKey,
                  child: Column(
                  children: [
                    TextFormField(
                      controller: controller.UserName,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: 'enter name',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                      validator: (Value){
                        if(Value == null ||Value.isEmpty){
                          return 'please enter your name';
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: controller.UserId,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.safety_check),
                        labelText: 'enter Id',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                      validator: (Value){
                        if(Value == null ||Value.isEmpty){
                          return 'please enter your name';
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: Get.width,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.black), // Set your desired color here
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                            ),
                          ),
                          onPressed: () {
                            if(controller.globalKey.currentState!.validate()){
                              controller.SaveNameAndId(controller.UserName.text, controller.UserId.text);
                              Callservices().onUserLogin(controller.UserId.text, controller.UserName.text);
                              Get.offAndToNamed(Routes.HOME);
                            }
                          },
                          child: Text(
                            'Log IN ',
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                )),
              )
            ],
          ),
        ));
  }
}

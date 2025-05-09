import 'package:app_animation/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('new app')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller.Name,
              decoration: InputDecoration(
              labelText: 'name',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              )
            ),),
            SizedBox(
              height: 15,
            ),
             TextField(
              controller: controller.ID,
              decoration: InputDecoration(
              labelText: 'enter Id',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              )
            ),),
            SizedBox(
              height: 30,
            ),
            ZegoSendCallInvitationButton(
              isVideoCall: true,
              //You need to use the resourceID that you created in the subsequent steps.
              //Please continue reading this document.
              resourceID: "chatapp",
              invitees: [
                ZegoUIKitUser(
                  id: controller.ID.text ,
                  name: controller.Name.text,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

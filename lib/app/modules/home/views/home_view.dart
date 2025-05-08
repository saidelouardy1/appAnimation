import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: const Text('new app')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ZegoSendCallInvitationButton(
   isVideoCall: true,
   //You need to use the resourceID that you created in the subsequent steps. 
   //Please continue reading this document.
   resourceID: "zegouikit_call",
   invitees: [
      // ZegoUIKitUser(
      //    id: targetUserID,
      //    name: targetUserName,
      // ),
   ],
)
,
      ),
    );
  }
}

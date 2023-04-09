import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'main_page_controller.dart';

class MainPageView extends GetView<MainPageController> {
  const MainPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(
              "https://scontent.fbkk12-5.fna.fbcdn.net/v/t39.30808-6/312181686_810614620303197_1172555098388138250_n.png?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGwB2cmo_dxpxu5n2zuFjG6P0naN9OEsEk_Sdo304SwSadWjbObKhSXJGyXCDXCY-TC3RTWpRA_bYYWPLN_TDRO&_nc_ohc=Ya-Yt_hZnVsAX9wJa_m&_nc_zt=23&_nc_ht=scontent.fbkk12-5.fna&oh=00_AfBlND1uUbw9CBSoOuaNhz_WudgJGNBjybwxpWGQoqFUdw&oe=6436F4FC",
              scale: 3,
            ),
            Text(
              'MainPageView is working',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

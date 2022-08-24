// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, duplicate_ignore, sized_box_for_whitespace, unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madina_pay/ui/home.dart';

import '../../controllers/auth_controller.dart';
import 'background.dart';

class Login extends GetWidget<AuthController> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Background(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Image.asset(
                      'assets/logo-madina.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              labelStyle: TextStyle(color: Colors.grey),
                              suffixIcon:
                                  Icon(CupertinoIcons.person_crop_circle),
                              labelText: 'Username',
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Obx(() => TextField(
                              decoration: InputDecoration(
                                labelStyle: TextStyle(color: Colors.grey),
                                suffixIcon: IconButton(
                                    icon: controller.hidePwd.value == true
                                        ? Icon(
                                            CupertinoIcons.eye_slash_fill,
                                            color: Colors.grey,
                                          )
                                        : Icon(
                                            CupertinoIcons.eye_fill,
                                          ),
                                    onPressed: () =>
                                        controller.hidePwd.toggle()),
                                labelText: 'Password',
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue)),
                              ),
                              obscureText: controller.hidePwd.value,
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5)),
                          color: Colors.blue,
                          minWidth: MediaQuery.of(context).size.width,
                          height: 50.0,
                          child: Text("Log in",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          onPressed: () {
                            Get.offAll(Home());
                            // controller.postLogin(
                            //     controller.usernameController.text,
                            //     controller.passwordController.text);
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

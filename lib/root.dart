// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:madina_pay/controllers/auth_controller.dart';
import 'package:madina_pay/ui/auth/login.dart';

import 'ui/home.dart';

class Root extends GetWidget<AuthController> {
  GetStorage box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return box.read("token") == null ? Login() : Home();
  }
}

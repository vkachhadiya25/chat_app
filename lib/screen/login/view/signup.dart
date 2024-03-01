import 'package:chat_app/utils/customTextFiled.dart';
import 'package:chat_app/utils/fire_helper/fire_helper.dart';
import 'package:chat_app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Registration to user",
                    style: txtBold18,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Get chatting with friends and family today by\nsigning up for our chat app!",
                    style: txtBook14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFiled(label: "Name"),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFiled(
                    label: "email",
                    controller: txtEmail,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFiled(
                    label: "Password",
                    controller: txtPassword,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFiled(label: "ConfirmPassword"),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () async {
                      String msg = await FireAuthHelper.fireAuthHelper.singUp(
                          email: txtEmail.text, password: txtPassword.text);
                      Get.back();
                      Get.snackbar(msg, "");
                    },
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      color: const Color(0xffF3F6F6),
                      child: Center(
                        child: Text(
                          "RegistrationButton",
                          style: txtBook16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

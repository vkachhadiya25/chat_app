import 'package:chat_app/utils/customTextFiled.dart';
import 'package:chat_app/utils/fire_helper/fire_helper.dart';
import 'package:chat_app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login to user",
                    style: txtBold18,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                      "Connect\nfriends\neasily &\nquickly",
                    style: txtBook14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () async {
                            String msg=await FireAuthHelper.fireAuthHelper.googleSignIn();
                            Get.snackbar(msg, "Login success fully");
                            if(msg=="success")
                            {
                              Get.offAllNamed('home');
                            }
                          },
                          child: socialContainer("assets/img/google.png")),
                      socialContainer("assets/img/iphone.png"),
                      socialContainer("assets/img/facebook.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(
                        width: 10,
                      ),
                      Text("OR"),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextFiled(
                    label: "Email",
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
                    height: 100,
                  ),
                  InkWell(
                    onTap: () async {
                      String msg = await FireAuthHelper.fireAuthHelper.singIn(
                          email: txtEmail.text, password: txtPassword.text);
                      Get.snackbar(msg, "");
                      if (msg == "success") {
                        Get.offAllNamed('home');
                      }
                    },
                    child: Container(
                      height: 48,
                      width: double.infinity,
                      color: const Color(0xffF3F6F6),
                      child: Center(
                          child: Text(
                            "Login In",
                            style: txtBook16,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Forget Password",
                    style: txtMedium14,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                      onTap: () {
                        Get.toNamed('signUp');
                      },
                      child: Text(
                        "createNewAccount",
                        style: txtMedium14,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container socialContainer(String path) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 48,
      width: 48,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Image.asset(
        path,
        height: 45,
        width: 45,
      ),
    );
  }
}


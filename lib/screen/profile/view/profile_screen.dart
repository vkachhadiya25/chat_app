import 'package:chat_app/screen/home/model/home_model.dart';
import 'package:chat_app/utils/customTextFiled.dart';
import 'package:chat_app/utils/fire_helper/db_helper.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController txtName = TextEditingController();
  TextEditingController txtBio = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtImage = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Profile"),
          actions: const [
            Icon(Icons.edit),
          ],
        ),
        body: Column(
          children: [
            const CircleAvatar(
              radius: 60,
            ),
            CustomTextFiled(
              label: "Name",
              controller: txtName,
              labelColor: Colors.green,
            ),
            CustomTextFiled(
              label: "Bio",
              controller: txtBio,
              labelColor: Colors.green,
            ),
            CustomTextFiled(
              label: "Mobile No.",
              controller: txtMobile,
              labelColor: Colors.green,
            ),
            CustomTextFiled(
              label: "Addresses",
              controller: txtAddress,
              labelColor: Colors.green,
            ),
            CustomTextFiled(
              label: "Email",
              controller: txtEmail,
              labelColor: Colors.green,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  HomeModel h1 = HomeModel(
                    name: txtName.text,
                    image: txtImage.text,
                    address: txtAddress.text,
                    bio: txtBio.text,
                    email: txtEmail.text,
                    mobile: txtMobile.text,
                  );
                  FireDbHelper.fireDbHelper.addProfileData(h1);
                },
                child: const Text("Save")),
          ],
        ),
      ),
    );
  }
}

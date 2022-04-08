import 'dart:io';
//: if true
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ethnicity/strings/color_string.dart';
import 'package:ethnicity/strings/string.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../Widget/app_button_widget.dart';
import '../auth_services/auth.dart';
import '../strings/font_string.dart';
import '../strings/text_string.dart';

class SetProfileImage extends StatefulWidget {
  const SetProfileImage(
      {Key? key, required this.pageController, required this.selectedIndex})
      : super(key: key);
  final int selectedIndex;
  final PageController pageController;

  @override
  State<SetProfileImage> createState() => _SetProfileImageState();
}

class _SetProfileImageState extends State<SetProfileImage> {
  File? image1;

  Future getImage({required ImageSource source}) async {
    XFile? image = await ImagePicker()
        .pickImage(source: source, maxWidth: 720.0, imageQuality: 90);

    setState(
      () {
        image1 = File(image!.path);
      },
    );
  }
//  @override
// void initState() {
//     widget.pageController!= PageController();
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1366,
          ),
          const Text(
            TextString.setCompnyLogo,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.sourceSansSemiBold,
            ),
            maxLines: 2,
          ),
          const SizedBox(
            height: 61,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet<void>(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                backgroundColor: const Color(0xff202F44),
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, bottom: 11, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 20),
                          GestureDetector(
                              onTap: () {
                                getImage(source: ImageSource.gallery);
                                Navigator.of(context).pop();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.photo_library_outlined,
                                    size: 20,
                                    color: Color(0xff202F44),
                                  ),
                                  // Image.asset(
                                  //   'assets/Alumnb.png',
                                  //   width: 20,
                                  //   height: 20,
                                  // ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  Text(
                                    "Album",
                                    style: TextStyle(
                                      fontFamily: sourceSansRegular,
                                      color: Color(0xff202F44),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              )),
                          const SizedBox(height: 5),
                          const Divider(
                            thickness: 1,
                            color: Color(0xff202F44),
                          ),
                          GestureDetector(
                            onTap: () {
                              getImage(source: ImageSource.camera);
                              Navigator.of(context).pop();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.photo_camera_outlined,
                                  color: Color(0xff202F44),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 9,
                                ),
                                Text(
                                  "Camera",
                                  style: TextStyle(
                                    fontFamily: sourceSansRegular,
                                    color: Color(0xff202F44),
                                    fontSize: 16,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3.5,
                    height: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      border: Border.all(
                        color: ColorString.bluelight,
                        style: BorderStyle.solid,
                        width: 3,
                      ),
                      color: ColorString.theamColor,
                    ),
                    child: image1 == null
                        ? const Center(
                            child: Icon(
                              Icons.business_outlined,
                              color: ColorString.buttonColor,
                              size: 40,
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.file(
                              image1!,
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                ),
                Positioned(
                  right: -8,
                  bottom: 5,
                  child: Container(
                    height: 38,
                    width: 38,
                    child: const ImageIcon(
                      AssetImage(TextString.editImage),
                      color: Colors.white,
                      size: 25,
                    ),
                    decoration: BoxDecoration(
                      color: ColorString.buttonColor,
                      border: Border.all(
                        color: const Color(0xff181829),
                        style: BorderStyle.solid,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          AppButton(
            radius: 6,
            color: ColorString.buttonColor,
            text: TextString.next,
            fontFamily: Fonts.sourceSansSemiBold,
            textColor: const Color(0xffFFFFFF),
            height: 53,
            width: double.infinity,
            onPressed: () async {
              setState(() {
                widget.selectedIndex != 2;
              });

              if (image1 == null) return;
              try {
                await FirebaseStorage.instance
                    .ref("profile/${AuthService.currentUser?.uid}")
                    .putFile(image1!);
                final String? url = await FirebaseStorage.instance
                    .ref("profile/${AuthService.currentUser?.uid}")
                    .getDownloadURL();

                if (url == null) return;
                AuthService.currentUser?.profileImg = url;

                await FirebaseFirestore.instance
                    .doc("users/${AuthService.currentUser?.uid}")
                    .update({'imageUrl': AuthService.currentUser?.profileImg});
              } on FirebaseException catch (e) {
                 print(e);
                // print("wefwehfuewfweufw${AuthService.currentUser?.profileImg}");
              }

              widget.pageController.animateToPage(2,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            },
          ),
        ]),
      ),
    );
  }
}

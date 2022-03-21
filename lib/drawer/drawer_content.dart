

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Widget/drawer_row_widget.dart';
import '../strings/string.dart';




class CustomDrawerContent extends StatefulWidget {
  const CustomDrawerContent({Key? key, required this.context})
      : super(key: key);
  final BuildContext context;

  @override
  State<CustomDrawerContent> createState() => _CustomDrawerContentState();
}

class _CustomDrawerContentState extends State<CustomDrawerContent> {
  
  // final ImagePicker _picker = ImagePicker();
  // String refName = 'UserImage';
  // File? file;

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor:const  Color(0xff222232),
      body: Padding(
        padding: const EdgeInsets.only(left:24.0,top: 55,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 54),
            Padding(
              padding: const EdgeInsets.only(right:100.0),
              child: Row(children: [

                 Container(
                   
                      height: 30,
                      width: 26,
                      decoration:const  BoxDecoration(
                      //  color: const Color(0xff222232),
                     

                      //  borderRadius: BorderRadius.circular(12),

                      ),
                      child:SvgPicture.asset(

                        'assets/images/message.svg',
                       



                      )
                    ),
                  const   SizedBox(width: 7,),

                  const    Text(
                "Fantech Labs",
                style:  TextStyle(
                   
                    color: Color(0xff979797),
                    fontFamily:sourceSansRegular ,
                    fontSize: 18),
              ),
           const  Spacer(),


 Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      color: const Color(0xff181829),

                      borderRadius: BorderRadius.circular(12),
                      // shape: BoxShape.circle,
                      // color: checkBoxValueTwo
                      // ? const Color(0xff0A7302)
                      // : const Color(0xff898A8A)
                    ),
                    child: const Icon(
                      Icons.close_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),


              ],),
            ),
         
         

            const SizedBox(height: 77),
            DrawerRowWidget(
              onTap: () {},
              iconData: Icons.home_outlined,
              iconColor: Colors.white,
              
           //  imageUrl: 'assets/images/Group.png',
              title: 'Home',
            ),
            const SizedBox(height: 33),
            DrawerRowWidget(
              onTap: () {},
              
              title: 'Suppliers ',
              imageUrl: 'assets/images/supply.png',
            ),

            const SizedBox(height: 33),
            DrawerRowWidget(
              onTap: () {},
              imageUrl: 'assets/images/payment.png',
              title: 'Payments',
            ),

            const SizedBox(height: 33),
            DrawerRowWidget(
              onTap: () {},
              imageUrl: 'assets/images/support.png',
              title: 'Support',
            ),
            const Spacer(),
            DrawerRowWidget(
              onTap: () {
                // AppDialog().showOSDialog(context, "Confirm",
                //     "Are you sure you want to log out?", "Yes", () async {
                //   try {
                //     await FirebaseAuth.instance.signOut();
                //     Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(builder: (context) => const SignIn()),
                //     );

                //     AppStatic.currentUser = UserModel();
                //   } catch (e) {
                //     print(e);
                //   }
                // }, secondButtonText: "No", secondCallback: () {});
              },
              imageUrl: 'assets/logout.png',
              title: 'Log out',
              textColor: const Color(0xff1B78B1),
              imgColor: const Color(0xff1B78B1),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            // const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  // void pickImage(ImageSource imageSource) async {
  //   var photo = await _picker.pickImage(source: imageSource, imageQuality: 40);
  //   if (photo != null) {
  //     setState(() {
  //       file = File(photo.path);
  //     });
  //   }
  //   await updateUserImages(file);
  // }

  }

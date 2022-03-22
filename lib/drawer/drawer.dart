import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';

import 'drawer_content.dart';
import 'drawer_page_body.dart';

class CustomDrawerApp extends StatefulWidget {
  const CustomDrawerApp({Key? key}) : super(key: key);

  @override
  _CustomDrawerAppState createState() => _CustomDrawerAppState();
}

class _CustomDrawerAppState extends State<CustomDrawerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const  Color(0xff181829),
      body: SlideDrawer(
          isRotate: false,
          // offsetFromRight: MediaQuery.of(context).size.width / 2.8,
          child:const  CustomDrawerPageContent(),
          drawer: CustomDrawerContent(context: context)),
    );
  }
}

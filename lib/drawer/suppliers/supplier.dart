import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Widget/input_field_widget.dart';
import '../../strings/string.dart';

class Supplier extends StatefulWidget {
  const Supplier({Key? key}) : super(key: key);

  @override
  State<Supplier> createState() => _SupplierState();
}

class _SupplierState extends State<Supplier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu_outlined,
                size: 25,
              )),
        ),
        backgroundColor: const Color(0xff181829),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.add_outlined,
              size: 25,
            ),
          ),
        ],
        centerTitle: false,
        title: const Text(
          'Supplier',
          style: TextStyle(
              fontSize: 24,
              color: Color(0xffFFFFFF),
              fontFamily: sourceSansRegular,
              fontWeight: FontWeight.w400),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(children: [
          InPutFieldWidget(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                  left: 19.0, top: 24, bottom: 24, right: 14),
              child: SvgPicture.asset(
                'assets/images/Search.svg',
                // height: 4.0,
                // width: 4.0,
                // allowDrawingOutsideViewBox: true,
              ),
            ),
            contentPadding: const EdgeInsets.only(
              top: 23,
              bottom: 23,
              left: 18,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff181829),
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            fillcolor: const Color(0xff222232),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff222232)),
              borderRadius: BorderRadius.circular(15.0),
            ),
            hintColor: const Color(0xff707070),
            hint: 'Search by supplier business name',
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 30),
          const SupplierTile(),
          const SizedBox(height: 8),
          const SupplierTile(),
          const SizedBox(height: 8),
          const SupplierTile(),
          const SizedBox(height: 8),
          const SupplierTile(),
          const SizedBox(height: 8),
          const SupplierTile(),
          const SizedBox(height: 8),
          const SupplierTile(),
          const SizedBox(height: 8),
          const SupplierTile(),
          const SizedBox(height: 8),
        ]),
      ),
    );
  }
}

class SupplierTile extends StatelessWidget {
  const SupplierTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 37,
              width: 37,
              decoration: BoxDecoration(
                color: const Color(0xff222232),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/magento.png',

                  height: 22,
                  width: 22,
                  // allowDrawingOutsideViewBox: true,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Magento Solution Partner',
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontFamily: sourceSansSemiBold,
                  ),
                ),
                Text(
                  'Employees: 3100',
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff65656B),
                      fontFamily: sourceSansRegular,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: 11),
        const Divider(
          thickness: 2,
          color: Color(0xff222232),
        )
      ],
    );
  }
}

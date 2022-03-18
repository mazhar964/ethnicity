import 'package:ethnicity/strings/string.dart';
import 'package:flutter/material.dart';

import '../Widget/app_button_widget.dart';
import '../Widget/creatprofile_tile.dart';
import '../Widget/input_field_widget.dart';

class EthnicityStats extends StatefulWidget {
  const EthnicityStats({Key? key}) : super(key: key);

  @override
  State<EthnicityStats> createState() => _EthnicityStatsState();
}

class _EthnicityStatsState extends State<EthnicityStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 50,
            ),
            const CreateProfileTile(
              color: Color(0xffD4D6F6),
              color4: Color(0xffF9437D),
              width5: 12,
              width3: 18,
            ),
            const SizedBox(
              height: 47,
            ),
            const Text(
              "Fill in ethnicity stats",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 24,
                fontFamily: sourceSansSemiBold,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 8),
            const Text(
              "Give count below",
              style: TextStyle(
                color: Color(0xff65656B),
                fontSize: 16,
                fontFamily: sourceSansRegular,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 26),
            const Text(
              "White",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontFamily: sourceSansRegular,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: InPutFieldWidget(
                    width: 159,

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffFFFFFF), width: 1.5),
                      borderRadius: BorderRadius.circular(8.0),
                    ),

                    hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                    //isPassword: isPassword,
                    hint: 'English ',
                    hintfontSize: 16,

                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: InPutFieldWidget(
                    width: 159,

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffFFFFFF), width: 1.5),
                      borderRadius: BorderRadius.circular(8.0),
                    ),

                    hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                    //isPassword: isPassword,
                    hint: 'Welsh',
                    hintfontSize: 16,

                    //  labelText: 'E-Mail',
                    //  validator: passwordValidator,
                    // suffixIcon: GestureDetector(
                    //   onTap: () {
                    //     setState(() {
                    //       isPassword = !isPassword;
                    //     });
                    //   },
                    //   child: Icon(
                    //     isPassword ? Icons.visibility_off : Icons.visibility,
                    //     color: const Color(0xff9FA5BB),
                    //   ),
                    // ),
                    keyboardType: TextInputType.number,

                    // onChanged: (String? value) {
                    //   setState(() {
                    //     password = value!;
                    //   });
                    // },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: InPutFieldWidget(
                    width: 159,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffFFFFFF), width: 1.5),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                    hint: 'Scottish ',
                    hintfontSize: 16,
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: InPutFieldWidget(
                    width: 159,

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffFFFFFF), width: 1.5),
                      borderRadius: BorderRadius.circular(8.0),
                    ),

                    hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                    //isPassword: isPassword,
                    hint: 'Northern Irish',
                    hintfontSize: 16,

                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: InPutFieldWidget(
                    width: 159,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffFFFFFF), width: 1.5),
                      borderRadius: BorderRadius.circular(8.0),
                    ),

                    hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                    //isPassword: isPassword,
                    hint: 'British Irish',
                    hintfontSize: 16,

                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: InPutFieldWidget(
                    width: 159,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffFFFFFF), width: 1.5),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                    hint: 'Gypsy',
                    hintfontSize: 16,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: 216,

              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'Other White background',
              hintfontSize: 16,

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 28),
            const Text(
              "Black",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: sourceSansRegular,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'Caribbean',

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,

              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
              //isPassword: isPassword,
              hint: 'African',

              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 17,
            ),
            InPutFieldWidget(
              width: 216,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),
              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
              hint: 'Other Black background',
              hintfontSize: 16,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 26),
            const Text(
              "Mixed",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: sourceSansRegular,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),
              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
              hint: 'White and Black Caribbean',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),
              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
              hint: 'White and Black African',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'White & Asians',

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: 216,

              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'Other Mixed ethnic',
              hintfontSize: 16,

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 26),
            const Text(
              "White American",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: sourceSansRegular,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),
              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
              hint: 'African American',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'American Indian',

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),
              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
              hint: 'Alaska Native',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 26),
            const Text(
              "Asian American",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: sourceSansRegular,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'Native Hawaiian',

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,

              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'Pacific Islander',

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 26),
            const Text(
              "Asian/Asian British",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: sourceSansRegular,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: InPutFieldWidget(
                    width: 159,

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffFFFFFF), width: 1.5),
                      borderRadius: BorderRadius.circular(8.0),
                    ),

                    hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                    //isPassword: isPassword,
                    hint: 'Indian',
                    hintfontSize: 16,

                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: InPutFieldWidget(
                    width: 159,

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffFFFFFF), width: 1.5),
                      borderRadius: BorderRadius.circular(8.0),
                    ),

                    hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

                    //isPassword: isPassword,
                    hint: 'Pakistani',
                    hintfontSize: 16,

                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: InPutFieldWidget(
                    width: 159,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffFFFFFF), width: 1.5),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                    hint: 'Bangladeshi ',
                    hintfontSize: 16,
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: InPutFieldWidget(
                    width: 159,

                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffFFFFFF), width: 1.5),
                      borderRadius: BorderRadius.circular(8.0),
                    ),

                    hintColor: const Color(0xffFFFFFF).withOpacity(0.50),
                    //isPassword: isPassword,
                    hint: 'Chinese',
                    hintfontSize: 16,

                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: 216,

              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'Other Asian ethnic',
              hintfontSize: 16,

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 26),
            const Text(
              "Other",
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: sourceSansRegular,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'Arab',

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 14),
            InPutFieldWidget(
              width: double.infinity,

              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xffFFFFFF), width: 1.5),
                borderRadius: BorderRadius.circular(8.0),
              ),

              hintColor: const Color(0xffFFFFFF).withOpacity(0.50),

              //isPassword: isPassword,
              hint: 'Other ethnic group',

              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 28),
            AppButton(
              radius: 6,
              color: const Color(0xffF85F6A),
              text: "Next",
              fontFamily: sourceSansSemiBold,
              textColor: const Color(0xffFFFFFF),
              height: 53,
              width: double.infinity,
              onPressed: () async {
                //Get.to(const SetProfileImage());
              },
            ),
          ]),
        ),
      ),
    );
  }
}

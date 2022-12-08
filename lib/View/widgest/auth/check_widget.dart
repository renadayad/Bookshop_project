import 'package:bookshop/Logic/Controller/auth_controller.dart';
import 'package:bookshop/Routes/routes.dart';
import 'package:bookshop/utils/text_utils.dart';
import 'package:bookshop/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({super.key});
  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (_) {
      return Row(
        children: [
          InkWell(
            onTap: () {
              controller.CheckBox();
            },
            child: Container(
              height: 2.11.h,
              width: 4.58.w,
              decoration: BoxDecoration(
                  color: labalColor, borderRadius: BorderRadius.circular(4)),
              child: controller.isCheckBox
                  ? Icon(
                      Icons.done,
                      size: 15,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.crop_square_rounded,
                      size: 15,
                      color: Colors.white,
                    ),
            ),
          ),
          SizedBox(
            width: 2.54.w,
          ),
          TextUtils(
            text: "Remember me ",
            color: labalColor,
            fontWeight: FontWeight.normal,
            fontsize: 9.sp,
          ),
          SizedBox(
            width: 3.05.w,
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: (() {
                    Get.toNamed(Routes.forgotpasswordScreen);
                  }),
                  child: TextUtils(
                      text: "Don't remember the password? ",
                      color: labalColor,
                      fontWeight: FontWeight.normal,
                      fontsize: 7.sp,
                      underLine: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      );
    });
  }
}

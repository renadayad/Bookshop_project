import 'package:bookshop/utils/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationWidget extends StatelessWidget {
  NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextUtils(
          fontsize: 12.sp,
          fontWeight: FontWeight.w300,
          text: "Notification",
          color: Colors.black,
        ),
        Switch(
          activeTrackColor: Colors.green,
          activeColor: Colors.green,
          value: false,
          onChanged: (_) {},
        ),
      ],
    );
  }
}

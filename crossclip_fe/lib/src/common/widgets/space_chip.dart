import 'package:crosslip_fe/src/chat/chat_screen.dart';
import 'package:crosslip_fe/src/common/utils/mediaquerysizing.dart';
import 'package:crosslip_fe/src/common/utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpaceChip extends StatelessWidget {
  final Color chipColor;
  final String chipText;
  final String chipEmoji;
  const SpaceChip(
      {super.key,
      required this.chipColor,
      required this.chipText,
      required this.chipEmoji});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigate(context, ChatScreen());
        ;
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
        padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
        width: double.infinity,
        height: MediaQuerySizing.height(context, 10),
        decoration: BoxDecoration(
          color: chipColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '#$chipText',
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(width: 4.w),
            Text(
              chipEmoji,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

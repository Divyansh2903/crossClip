import 'package:crosslip_fe/src/common/constants/dev_consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildTextField(String hint, TextEditingController controller,
    bool isMultiLine, BuildContext context,
    {List<TextInputFormatter> inputFormatters = const [],
    String? errorText = "",
    TextInputType textinputType = TextInputType.text,
    String? counterText,
    Function(String)? onChanged}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 8.0.sp),
    child: TextField(
      onChanged: onChanged,
      keyboardType: textinputType,
      inputFormatters: inputFormatters,
      controller: controller,
      cursorColor: DevConsts.spaceChipColor,
      maxLines: isMultiLine ? 4 : 1,
      decoration: InputDecoration(
        suffixIcon: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.attach_file),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {},
            ),
          ],
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 1.0, horizontal: 12.0),
        errorText: errorText?.isNotEmpty == true ? errorText : null,
        counterText: counterText ?? null,
        hintText: hint,
        hintStyle: TextStyle(color: Color.fromRGBO(100, 100, 100, 1)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        filled: true,
        fillColor: Color.fromRGBO(241, 241, 241, 1),
      ),
    ),
  );
}

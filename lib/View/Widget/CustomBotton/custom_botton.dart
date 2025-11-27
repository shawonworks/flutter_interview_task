import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final Color color;
  final IconData? icon;
  final Decoration? decoration;
  final Color borderColor;
  final double borderWidth;
  final Color textColor;

  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.color = const Color.fromRGBO(19, 159, 37, 1),
    this.icon,
    this.decoration,
    this.borderColor = Colors.white,
    this.borderWidth = 2.0,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
          color: color,
          borderRadius: BorderRadius.circular(15.h.w),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  color: Colors.black,
                  size: 20.h,
                ),
                SizedBox(width: 8.w),
              ],
              Text(
                text,
                style: TextStyle(
                  fontSize: 18.h,
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBoomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBoomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomBoomNavBar> createState() => _CustomBoomNavBarState();
}

class _CustomBoomNavBarState extends State<CustomBoomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavItem(Icons.home_outlined, 0),
              _buildNavItem(Icons.play_circle_outline, 1),
              _buildNavItem(Icons.lightbulb_outline, 2),
              _buildNavItem(Icons.menu_book_outlined,3),
              _buildNavItem(Icons.person_outline, 4),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    bool isSelected = widget.currentIndex == index;

    return GestureDetector(
      onTap: () => widget.onTap(index),
      child: Container(
        padding:  EdgeInsets.symmetric(vertical: 12.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 28.h,
              color: isSelected ? Colors.blue : Colors.grey.shade400,
            ),
             SizedBox(height: 6.h),
            if (isSelected)
              Container(
                height: 5.h,
                width: 5.w,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

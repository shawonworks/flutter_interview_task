import 'package:flutter/material.dart';

class CustomRoleTab extends StatefulWidget {
  const CustomRoleTab({super.key});

  @override
  State<CustomRoleTab> createState() => _CustomRoleTabState();
}

class _CustomRoleTabState extends State<CustomRoleTab> {
  bool isStudent = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isStudent = true;
              });
            },
            child: Column(
              children: [
                Text(
                  'Student',
                  style: TextStyle(
                    fontWeight: isStudent ? FontWeight.w700 : FontWeight.w500,
                    color: isStudent ? const Color(0xFF0A6BC8) : Colors.black54,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 3,
                  decoration: BoxDecoration(
                    color: isStudent ? const Color(0xFF0A6BC8) : Colors.transparent,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isStudent = false;
              });
            },
            child: Column(
              children: [
                Text(
                  'Teacher',
                  style: TextStyle(
                    fontWeight: !isStudent ? FontWeight.w700 : FontWeight.w500,
                    color: !isStudent ? const Color(0xFF0A6BC8) : Colors.black54,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  height: 3,
                  decoration: BoxDecoration(
                    color: !isStudent ? const Color(0xFF0A6BC8) : Colors.transparent,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
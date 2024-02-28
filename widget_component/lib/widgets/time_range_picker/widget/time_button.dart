import 'package:flutter/material.dart';
import 'package:widget_component/const/colors.dart';

class TimeButton extends StatelessWidget {
  final Map<String, dynamic> timeItem;
  final VoidCallback onTap;
  final bool enable;

  const TimeButton({
    required this.timeItem,
    required this.onTap,
    this.enable = true,
    Key? key,
  }) : super(key: key);

  Color _buildColorButton() {
    if (timeItem['active']) return MyColor.fourth;
    if (enable == false) return Colors.red.shade100;
    return Colors.white;
  }

  Color _buildColorText() {
    if (timeItem['active']) return MyColor.fourth;
    if (enable == false) return Colors.grey.shade300;
    return Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enable ? onTap : null, // Enable onTap only if enable is true
      child: Container(
        width: 55,
        height: 40,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: _buildColorButton(),
          borderRadius: const BorderRadius.all(Radius.circular(6)),
        ),
        child: Center(
          child: Text(
            '${timeItem['time'].hour}:${timeItem['time'].minute}',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
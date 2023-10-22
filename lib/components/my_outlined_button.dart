import 'package:flutter/material.dart';

import '../colors/colors.dart';

class MyOutlinedButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String text;

  const MyOutlinedButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyOutlineButtonState();
}

class MyOutlineButtonState extends State<MyOutlinedButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(
            width: 2, // 使用传递的边框宽度
            color: Colors.black, // 设置边框颜色
          ),
          color: (_isHovered) ? ColorNames.gray3 : ColorNames.gray4,
        ),
        child: Text(
          //test
          widget.text,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

}
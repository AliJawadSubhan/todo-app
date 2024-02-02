import 'package:flutter/material.dart';

class AnimatedContainerThreeD extends StatefulWidget {
  const AnimatedContainerThreeD({
    super.key,
    required this.child,
    this.height,
    this.width,
    this.ontap,
    this.shadowColor = const Color(0xFF010101),
    this.containerColor = Colors.white,
  });

  final Widget child;
  final double? height;
  final double? width;
  final Color containerColor;
  final Color shadowColor;
  final ontap;
  @override
  State<AnimatedContainerThreeD> createState() =>
      _AnimatedContainerThreeDState();
}

class _AnimatedContainerThreeDState extends State<AnimatedContainerThreeD> {
  double yaxis = 12;

  double xaxis = 12;

  // Initial container height
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (!isPressed) {
          setState(() {
            isPressed = true;
            yaxis = 6;
            xaxis = 6;
            // widget.height = widget.height! - 12;
            // containerHeight = 145;
          });

          await Future.delayed(const Duration(milliseconds: 200));

          setState(() {
            yaxis = 12;
            xaxis = 12;

            isPressed = false;
          });
        }
        widget.ontap();
        debugPrint(yaxis.toString());
      },
      child: AnimatedContainer(
        // height: 20,
        height: widget.height,
        // width: 120,
        width: widget.width,
        // curve: Curves.bounceIn,
        duration: const Duration(milliseconds: 120),
        decoration: BoxDecoration(
          // color: Colors.grey.shade300,
          color: widget.containerColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xFF010101),
          ),
          boxShadow: [
            BoxShadow(
              color: widget.shadowColor,
              offset: Offset(xaxis, yaxis),
            ),
          ],
        ),
        child: widget.child,
      ),
    );
  }
}

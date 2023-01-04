import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    this.elevation = 5,
    this.headingWidget,
    this.bodyWidget,
    this.backgroundColor,
    this.shadowColor,
    this.height,
    this.onPress,
  }
  );
  final double? elevation;
  final Widget? headingWidget;
  final Widget? bodyWidget;
  final double? height;
  final Color? backgroundColor;
  final Color? shadowColor;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
        height: height,
        child: GestureDetector(
          onTap: onPress,

          child: Card(
            elevation: elevation,
            shadowColor: shadowColor,
            color: backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: headingWidget,
                ),
                Container(
                  child: bodyWidget,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CreativeContainer extends StatefulWidget {
  const CreativeContainer({
    Key? key,
    this.height,
    this.width,
  this.color1,
  this.color2,
  this.title,
  this.textColor,
  this.subtitle,
  this.subTitleColor,
  this.padding
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? color1;
  final Color? color2;
  final String? title;
  final Color? textColor;
  final String? subtitle;
  final Color? subTitleColor;
  final EdgeInsetsGeometry? padding;

  @override
  State<CreativeContainer> createState() => _CreativeContainerState();
}

class _CreativeContainerState extends State<CreativeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          colors: [widget.color1 ?? const Color(0xffcb1841) , widget.color2 ?? const Color(0xff2604de)],
              begin: Alignment.topLeft,
          end: Alignment.bottomLeft
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 12,
            offset: Offset(0,6)
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: const EdgeInsets.all(5.0),
            child: Text(
              '${widget.title}',
              style: TextStyle(
                color: widget.textColor
              ),
            ),
          ),  Padding(padding:const EdgeInsets.all(5.0),
            child: Text(
              '${widget.subtitle}',
              style: TextStyle(
                  color: widget.textColor
              ),
            ),
          )
        ],
      ),
    );
  }
}

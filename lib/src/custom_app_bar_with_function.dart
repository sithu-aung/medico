import 'package:flutter/material.dart';

PreferredSize buildCustomAppBarWithFunction(
  BuildContext context,
  String name,
  Function onBackPress,
  Color backgroundColor,
  Color textColor,
) {
  return PreferredSize(
    preferredSize: Size(
      MediaQuery.of(context).size.width,
      kToolbarHeight + 8,
    ),
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [backgroundColor, backgroundColor])),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    onBackPress();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: textColor,
                  )),
              Text(
                name,
                style: TextStyle(color: textColor),
              ),
              Container(
                width: 12.0,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

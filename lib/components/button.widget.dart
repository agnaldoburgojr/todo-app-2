import 'package:flutter/material.dart';

class TDButton extends StatelessWidget {
  final String text;
  final String image;
  final Function callback;
  final double width;

  const TDButton(
      {Key key,
      @required this.text,
      this.image,
      @required this.callback,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).primaryColor,
        width: width != null ? width : 250,
        child: FlatButton(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              image != null ? Image.asset(image, width: 32) : SizedBox(),
              image != null ? SizedBox(width: 10) : SizedBox(),
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          onPressed: callback,
        ));
  }
}

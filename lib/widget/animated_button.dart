import 'package:flutter/material.dart';

class AnimatedButton extends StatefulWidget {
  final bool isPressed;
  final String titlel;
  final Function onPressed;
  final bool enable;

  const AnimatedButton(
      {this.titlel, this.enable = true, this.isPressed, this.onPressed});

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.onPressed,
      child: InkWell(
        child: AnimatedContainer(
          height: widget.isPressed ? 60 : 75,
          width: widget.isPressed ? 60 : 200,
          curve: Curves.easeIn,
          duration: const Duration(seconds: 1),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
              horizontal: widget.isPressed ? 10 : 15,
              vertical: widget.isPressed ? 10 : 10),
          decoration: BoxDecoration(
            color: widget.enable ? Colors.blue[800] : Colors.blue[300],
            borderRadius: BorderRadius.circular(5),
          ),
          child: !widget.isPressed
              ? Text(
                  widget.titlel,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              : CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                ),
        ),
      ),
    );
  }
}

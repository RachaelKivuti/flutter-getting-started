import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double _height = 100.0;
  double _width = 100.0;

  //method for updating width variable
  void _increaseWidth() {
    //update state
    setState(() {
      //If _width is greater than or equal to 320.0, it sets _width to 100.0, Otherwise, it increments _width by 50.0.
      _width = _width >= 320.0 ? 100.0 : _width += 50.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.elasticOut,
        color: Colors.amber,
        height: _height,
        width: _width,
        child: ElevatedButton(
          child: Text('Tap to\nGrow Width\n$_width'),
          onPressed: () {
            _increaseWidth();
        },
        ),
        ),
      ],
    );
  }
}

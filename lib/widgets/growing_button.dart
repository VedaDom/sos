import 'dart:math';

import 'package:flutter/material.dart';

class GrowingButton extends StatefulWidget {
  late final Color? color;
  GrowingButton({Key? key, this.color}) : super(key: key) {
    color ?? const Color(0xff0075c2);
  }

  @override
  State<GrowingButton> createState() => _GrowingButtonState();
}

class _GrowingButtonState extends State<GrowingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
    );
    _startAnimation();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.stop();
    _controller.reset();
    _controller.repeat(
      period: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 300.0,
      child: Stack(
        children: [
          CustomPaint(
            painter: SpritePainter(
              _controller,
              widget.color!,
            ),
            child: const SizedBox(
              width: 300.0,
              height: 300.0,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.color,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.shield,
              color: Color(0xffce102f),
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}

class SpritePainter extends CustomPainter {
  final Animation<double> _animation;
  final Color color;

  SpritePainter(this._animation, this.color) : super(repaint: _animation);

  void circle(Canvas canvas, Rect rect, double value) {
    double opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);
    Color color = this.color.withOpacity(opacity);

    double size = rect.width / 2;
    double area = size * size;
    double radius = sqrt(area * value / 4);

    final Paint paint = Paint()..color = color;
    canvas.drawCircle(rect.center, radius, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);

    for (int wave = 3; wave >= 0; wave--) {
      circle(canvas, rect, wave + _animation.value);
    }
  }

  @override
  bool shouldRepaint(SpritePainter oldDelegate) {
    return true;
  }
}

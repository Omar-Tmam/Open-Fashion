import 'package:flutter/material.dart';

class CustomAnimation extends StatefulWidget {
  final Widget child;
  final Duration duration;
  const CustomAnimation({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 1800),
  });

  @override
  State<CustomAnimation> createState() => _CustomAnimationState();
}

class _CustomAnimationState extends State<CustomAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl = AnimationController(vsync: this, duration: widget.duration)
    ..forward();
  late final Animation<double> _anim = CurvedAnimation(parent: _ctrl, curve: Curves.easeOut);

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _anim,
      builder: (_, __) {
        final lead = (_anim.value - 0.05).clamp(0.0, 1.0);
        final tail = _anim.value.clamp(0.0, 1.0);
        if (_anim.value == 1.0) return widget.child;
        return ShaderMask(
          blendMode: BlendMode.dstIn,
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: const [Colors.black, Colors.transparent],
              stops: [lead, tail],
            ).createShader(bounds);
          },
          child: widget.child,
        );
      },
    );
  }
}

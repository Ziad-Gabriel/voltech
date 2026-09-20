import 'package:flutter/material.dart';

class NavButtons extends StatefulWidget {
  final int currentIndex;
  final Function(int index) onTap;
  const NavButtons({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<NavButtons> createState() => _NavButtonsState();
}

class _NavButtonsState extends State<NavButtons> with TickerProviderStateMixin {
  static const List<IconData> _outlineIcons = [
    Icons.home_outlined,
    Icons.shopping_cart_outlined,
    Icons.settings_outlined,
  ];

  // Filled counterparts used for the "fill from center" reveal.
  static const List<IconData> _filledIcons = [
    Icons.home,
    Icons.shopping_cart,
    Icons.settings,
  ];

  late final List<AnimationController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(
      _outlineIcons.length,
      (i) => AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1000),
        value: widget.currentIndex == i ? 1 : 0,
      ),
    );
  }

  @override
  void didUpdateWidget(covariant NavButtons oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.currentIndex != widget.currentIndex) {
      for (int i = 0; i < _controllers.length; i++) {
        if (i == widget.currentIndex) {
          _controllers[i].forward();
        } else {
          _controllers[i].reverse();
        }
      }
    }
  }

  @override
  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final secondary = Theme.of(context).colorScheme.secondary;
    final onPrimary = Theme.of(context).colorScheme.onPrimary;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        _outlineIcons.length,
        (index) => Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          child: InkWell(
            onTap: () => widget.onTap(index),
            highlightColor: secondary.withAlpha(80),
            focusColor: secondary.withAlpha(80),
            hoverColor: secondary.withAlpha(80),
            enableFeedback: false,
            borderRadius: BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: AnimatedBuilder(
                animation: _controllers[index],
                builder: (context, child) {
                  final t = CurvedAnimation(
                    parent: _controllers[index],
                    curve: Curves.easeOutCubic,
                    reverseCurve: Curves.easeInCubic,
                  ).value;

                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        _outlineIcons[index],
                        size: 30,
                        color: index == widget.currentIndex
                            ? secondary
                            : onPrimary,
                      ),
                      if (t > 0)
                        ShaderMask(
                          blendMode: BlendMode.dstIn,
                          shaderCallback: (bounds) {
                            final inner = (t - 0.08).clamp(0.0, 1.0);
                            final outer = t.clamp(0.0001, 1.0);
                            return RadialGradient(
                              center: Alignment.center,
                              radius: 0.75,
                              colors: const [Colors.black, Colors.transparent],
                              stops: [inner, outer],
                            ).createShader(bounds);
                          },
                          child: Icon(
                            _filledIcons[index],
                            size: 30,
                            color: secondary,
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

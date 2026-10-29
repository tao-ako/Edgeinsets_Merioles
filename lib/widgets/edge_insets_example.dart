import 'package:flutter/material.dart';

class EdgeInsetsExample extends StatelessWidget {
  const EdgeInsetsExample({
    super.key,
    required this.label,
    required this.color,
    required this.padding,
  });

  final String label;
  final Color color;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final textColor = color.computeLuminance() > 0.5
        ? const Color(0xFF211B12)
        : Colors.white;

    return Align(
      alignment: Alignment.center,
      child: IntrinsicWidth(
        child: Container(
          alignment: Alignment.center,
          color: color,
          padding: padding,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: textColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

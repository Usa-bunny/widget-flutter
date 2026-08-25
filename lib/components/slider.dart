import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  final String text;
  final double value;
  final double min;
  final double max;
  final int? divisions;
  final String minLabel;
  final String maxLabel;
  final ValueChanged<double> onChanged;

  const MySlider({
    super.key,
    required this.text,
    required this.value,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    required this.minLabel,
    required this.maxLabel,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.yellow[700],
          ),
        ),
        SizedBox(height: 4),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.yellow[700],
            inactiveTrackColor: Colors.grey.shade200,
            thumbColor: Colors.yellow,
            overlayColor: Colors.yellow.withValues(alpha: 0.2),
            trackHeight: 4.0,
          ),
          child: Slider(
            value: value,
            min: min,
            max: max,
            divisions: divisions,
            onChanged: onChanged,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              minLabel,
              style: TextStyle(fontSize: 12, color: Colors.grey[500]),
            ),
            Text(
              maxLabel,
              style: TextStyle(fontSize: 12, color: Colors.grey[500]),
            ),
          ],
        ),
      ],
    );
  }
}

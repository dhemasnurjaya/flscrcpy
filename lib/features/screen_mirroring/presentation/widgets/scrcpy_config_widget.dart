import 'package:flutter/material.dart';

class ScrcpyConfigWidget extends StatelessWidget {
  const ScrcpyConfigWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Scrcpy Configuration',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const Divider(),
      ],
    );
  }
}

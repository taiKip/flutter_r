import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class StyledDialog extends StatelessWidget {
  const StyledDialog({super.key, required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: StyledHeading(title),
      content: StyledText(content),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        StyledButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const StyledHeading('Close'),
        ),
      ],
    );
  }
}

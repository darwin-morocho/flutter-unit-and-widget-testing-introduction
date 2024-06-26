import 'package:flutter/material.dart';

Future<bool> showConfirmDialog(
  BuildContext context, {
  Key? key,
  String message = 'Are you sure?',
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (_) => AlertDialog(
      key: key,
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(
            context,
            true,
          ),
          child: const Text('Yes'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(
            context,
          ),
          child: const Text('No'),
        ),
      ],
    ),
  );
  return result ?? false;
}

import 'package:flutter/material.dart';

class HomeAlertDialogWidget extends StatelessWidget {
  const HomeAlertDialogWidget({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Icon(Icons.info_outline, color: Colors.blue),
          SizedBox(width: 10),
          Text('Ошибка'),
        ],
      ),
      content: Text(
        text,
        style: TextStyle(fontSize: 16, color: Colors.black87),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text(
            'Закрыть',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../domain/entities/message.dart';
import 'input_field.dart';

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: message.isUser
              ? Theme.of(context).colorScheme.surfaceContainer
              : Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          message.content,
          textAlign: isRTL(message.content) ? TextAlign.right : TextAlign.left,
          textDirection:
              isRTL(message.content) ? TextDirection.rtl : TextDirection.ltr,
        ),
      ),
    );
  }
}

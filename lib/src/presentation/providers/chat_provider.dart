import 'package:chat_bot/src/constants/categories/string_category.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/message.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatNotifier extends _$ChatNotifier {
  @override
  List<Message> build() => [];

  void addMessage(String content, bool isUser) {
    state = [
      ...state,
      Message(
        content: content,
        isUser: isUser,
        timestamp: DateTime.now(),
      ),
    ];
  }

  String getBotResponse(String userMessage) {
    // Simple response logic
    return StringCategory.greetingMessage;
  }
}

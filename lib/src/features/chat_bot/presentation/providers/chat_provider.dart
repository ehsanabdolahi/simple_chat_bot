import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../di/locator.dart';
import '../../domain/entities/message.dart';
import '../../domain/usecases/chat_bot_use_case.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatNotifier extends _$ChatNotifier {
  @override
  List<Message> build() => [];

  void addMessage(String content, bool isUser, DateTime? timestamp) {
    state = [
      ...state,
      Message(
        content: content,
        isUser: isUser,
        timestamp: timestamp ?? DateTime.now(),
      ),
    ];
  }

  void getBotResponse(String userMessage) async {
    final useCase = locator<ChatBotUseCase>();
    final message = await useCase.getBotResponse();
    addMessage(
      message.content,
      message.isUser,
      message.timestamp,
    );
  }
}

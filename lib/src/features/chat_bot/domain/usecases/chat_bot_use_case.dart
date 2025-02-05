import 'package:chat_bot/src/features/chat_bot/domain/entities/message.dart';

import '../../data/repositories/chat_bot_repository.dart';

class ChatBotUseCase {
  ChatBotUseCase(this._repository);

  final ChatBotRepository _repository;

  Future<Message> getBotResponse() async {
    try {
      final messageResModel = await _repository.getBotResponse();
      return Message(
        content: messageResModel.message,
        isUser: false,
        timestamp: DateTime.now(),
      );
    } catch (e) {
      rethrow;
    }
  }
}

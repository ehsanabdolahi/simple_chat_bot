import 'package:chat_bot/src/features/chat_bot/data/model/message_res_model.dart';

import '../services/chat_bot_local_services.dart';

class ChatBotRepository {
  ChatBotRepository(this._localServices);

  final ChatBotLocalServices _localServices;

  Future<MessageResModel> getBotResponse() async {
    try {
      final response = _localServices.getBotResponse();
      final messageResModel = messageResModelFromJson(response);
      await Future.delayed(const Duration(seconds: 1)); // To make the chat flow more realistic
      return messageResModel;
    } catch (e) {
      rethrow;
    }
  }
}

class ChatBotLocalServices {



  String getBotResponse() {
    try {
      // mock JSON
      return '{"message": "Hi! Thanks for your message. How can I help you?"}';
    } catch (e) {
      rethrow;
    }
  }
}

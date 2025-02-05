import 'package:chat_bot/src/features/chat_bot/data/repositories/chat_bot_repository.dart';
import 'package:chat_bot/src/features/chat_bot/data/services/chat_bot_local_services.dart';
import 'package:get_it/get_it.dart';

import '../features/chat_bot/domain/usecases/chat_bot_use_case.dart';

GetIt locator = GetIt.instance;

Future<void> setupAllDI() async {

  locator.registerSingleton<ChatBotLocalServices>(
    ChatBotLocalServices(),
  );
  locator.registerSingleton<ChatBotRepository>(
    ChatBotRepository(
      locator(),
    ),
  );
  locator.registerSingleton<ChatBotUseCase>(
    ChatBotUseCase(
      locator(),
    ),
  );
}

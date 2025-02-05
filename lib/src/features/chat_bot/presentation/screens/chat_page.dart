import 'package:chat_bot/src/constants/categories/image_category.dart';
import 'package:chat_bot/src/features/chat_bot/presentation/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../constants/categories/string_category.dart';
import '../providers/chat_provider.dart';
import '../widgets/message_bubble.dart';

const Duration _duration = Duration(seconds: 3);

class ChatPage extends HookConsumerWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();
    final messages = ref.watch(chatNotifierProvider);
    final scrollController = useScrollController();
    final currentBackPressTime = useState<DateTime?>(null);
    final canPop = useState<bool>(false);
    useEffect(() {
      if (messages.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          scrollController.animateTo(
            scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          );
        });
      }
      return null;
    }, [messages.length]);

    return PopScope(

      canPop: canPop.value,
      onPopInvokedWithResult: (didPop, result) async {

        if (context.mounted) {
          await onWillPop(
            context,
            canPop,
            currentBackPressTime,
          );
        }
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(StringCategory.appName),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageCategory.chatBackground),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final message = messages[index];
                        return MessageBubble(message: message);
                      },
                    ),
                  ),
                  InputField(
                    controller: textController,
                    onSend: () {
                      if (textController.text.isNotEmpty) {
                        final notifier = ref.read(chatNotifierProvider.notifier);
                        notifier.addMessage(textController.text, true, null);
                        notifier.getBotResponse(textController.text);
                        textController.clear();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onWillPop(
      BuildContext buildContext,
      ValueNotifier<bool> canPop,
      ValueNotifier<DateTime?> currentBackPressTime,
      ) async {
      DateTime now = DateTime.now();
      if (currentBackPressTime.value == null ||
          now.difference(currentBackPressTime.value!) > _duration) {
        canPop.value = true;
        currentBackPressTime.value = now;
        ScaffoldMessenger.of(buildContext).showSnackBar(
          const SnackBar(
            content: Text(
              StringCategory.tapAgainToLeave,
            ),
            duration: _duration,
          ),
        );
        await Future.delayed(
          _duration,
              () async {
            canPop.value = false;
          },
        );
      } else {
        Navigator.pop;
        canPop.value = false;
      }
    }
}

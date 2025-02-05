import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../constants/categories/string_category.dart';

class InputField extends HookWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.onSend,
  });

  final TextEditingController controller;
  final VoidCallback onSend;


  @override
  Widget build(BuildContext context) {
    final textDirection = useState(TextDirection.ltr);
    final textAlign = useState(TextAlign.left);

    useEffect(() {
      void updateTextDirection() {
        final isRtl = isRTL(controller.text);
        textDirection.value = isRtl ? TextDirection.rtl : TextDirection.ltr;
        textAlign.value = isRtl ? TextAlign.right : TextAlign.left;
      }

      controller.addListener(updateTextDirection);
      return () => controller.removeListener(updateTextDirection);
    }, [controller]);

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 3,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.sizeOf(context).height * 0.2,
                  minHeight: 40,
                ),
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    hintText: StringCategory.pleaseEnterYourMessage,
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(fontWeight: FontWeight.normal),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  textDirection: textDirection.value,
                  textAlign: textAlign.value,
                  maxLines: null,
                  textAlignVertical: TextAlignVertical.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 4,
                bottom: 4,
              ),
              child: IconButton(
                icon: Icon(
                  Icons.send_rounded,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                onPressed: onSend,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

bool isRTL(String text) {
  if (text.isEmpty) return false;
  final firstChar = text.trim().substring(0, 1);
  return RegExp(
          r'[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\uFB50-\uFDFF\uFE70-\uFEFF]')
      .hasMatch(firstChar);
}

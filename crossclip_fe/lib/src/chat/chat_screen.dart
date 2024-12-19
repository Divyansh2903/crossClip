import 'package:crosslip_fe/src/common/constants/dev_consts.dart';
import 'package:crosslip_fe/src/common/utils/mediaquerysizing.dart';
import 'package:crosslip_fe/src/common/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "#temp-space",
          style: TextStyle(color: DevConsts.spaceChipColor),
        ),
        titleSpacing: 0,
        centerTitle: false,
        leading: Container(
          child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: const Icon(Icons.menu)),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuerySizing.height(context, 80),
            width: double.infinity,
            child: ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final ValueNotifier<double> scaleNotifier = ValueNotifier(1.0);

                return GestureDetector(
                  onLongPress: () {
                    HapticFeedback.lightImpact();
                    scaleNotifier.value = 1.1;
                    Future.delayed(Duration(milliseconds: 500), () {
                      scaleNotifier.value = 1.0;
                      Clipboard.setData(const ClipboardData(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."));
                    });
                  },
                  // onLongPressStart: (_) {
                  //   HapticFeedback.lightImpact();
                  //   scaleNotifier.value = 1.1;
                  // },
                  // onLongPressEnd: (_) {
                  //   scaleNotifier.value = 1.0;
                  //   Clipboard.setData(const ClipboardData(
                  //       text:
                  //           "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."));
                  // },
                  child: ValueListenableBuilder<double>(
                    valueListenable: scaleNotifier,
                    builder: (context, scale, child) {
                      return AnimatedScale(
                        scale: scale,
                        duration: const Duration(milliseconds: 150),
                        child: ChatBubble(
                          clipper: ChatBubbleClipper1(
                            type: index % 2 == 0
                                ? BubbleType.sendBubble
                                : BubbleType.receiverBubble,
                          ),
                          alignment: index % 2 == 0 ? Alignment.topRight : null,
                          margin: const EdgeInsets.only(top: 20),
                          backGroundColor:
                              index % 2 == 0 ? Colors.blue : Colors.blueGrey,
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "iPhone 13",
                                  style: TextStyle(
                                      color: Colors.lightGreen,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          buildTextField("Type...", TextEditingController(), false, context),
        ],
      ),
    );
  }
}

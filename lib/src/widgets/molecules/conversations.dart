import 'package:flutter/material.dart';
import 'package:messanger/src/models/conversation_model.dart';
import 'package:messanger/src/widgets/molecules/conversation_tile.dart';

class Conversations extends StatelessWidget {
  final Map<String, ConversationModel> conversations;

  Conversations({
    Key key,
    @required this.conversations,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chats = conversations.values.toList();

    return Expanded(
      flex: 1,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          return ConversationTile(
            conversation: chats[index],
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:messanger/src/blocs/app_bloc_provider.dart';
import 'package:messanger/src/blocs/chat_bloc.dart';
import 'package:messanger/src/widgets/main_page/conversations.dart';
import 'package:messanger/src/widgets/no_friends_yet_indicator.dart';

class ConversationsBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ChatBloc chatBloc = AppBlocProvider.of(context).chatBloc;
    chatBloc.fetchChats();

    return StreamBuilder(
      stream: chatBloc.chats,
      builder: (
        BuildContext context,
        AsyncSnapshot<Map<String, Map<String, dynamic>>> chatsSnapshot,
      ) {
        if (!chatsSnapshot.hasData) {
          return Expanded(
            child: NoFriendsYetIndicator(),
          );
        }

        return Conversations(
          conversations: chatsSnapshot.data,
        );
      },
    );
  }
}

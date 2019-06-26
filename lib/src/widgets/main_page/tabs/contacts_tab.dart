import 'package:flutter/material.dart';
import 'package:messanger/src/widgets/main_page/contact_list.dart';

class ContactsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ContactList(
        contacts: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
      ),
    );
  }
}
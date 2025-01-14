import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 12, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Note 1',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                'This is a note',
                style: TextStyle(
                    fontSize: 18, color: Colors.black.withValues(alpha: 0.7)),
              ),
            ),
            trailing: IconButton(
              // icon: const Icon(Icons.delete, color: Colors.red),
              icon: Icon(FontAwesomeIcons.trash, color: Colors.red),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              '5 days ago',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}

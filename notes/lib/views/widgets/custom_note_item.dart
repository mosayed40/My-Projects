import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFCE7F),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(
              'Flutter tips',
              style: const TextStyle(color: Colors.black, fontSize: 28),
            ),

            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Bulid your Career with Mustafa Sayed',
                style: TextStyle(
                  color: Colors.black.withValues(alpha: .5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 24),
            ),
          ),

          Text(
            'May 21,2022',
            style: TextStyle(
              color: Colors.black.withValues(alpha: .5),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

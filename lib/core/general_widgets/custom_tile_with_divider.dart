import 'package:flutter/material.dart';

class CustomTileWithDivider extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const CustomTileWithDivider({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            onTap: onTap,
            title: Text(title),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider()
        ],
      ),
    );
  }
}

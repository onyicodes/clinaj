import 'package:flutter/material.dart';

class AuthFieldDivider extends StatelessWidget {
  const AuthFieldDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Expanded(child: Divider(color: Theme.of(context).secondaryHeaderColor,)),
          const Padding(
            padding: EdgeInsets.only(left:8.0, right: 8.0),
            child: Text('OR'),
          ),
          Expanded(child: Divider(color: Theme.of(context).secondaryHeaderColor))
        ],
      ),
    );
  }
}
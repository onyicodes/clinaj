import 'package:flutter/material.dart';

class CustomAuthField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String errorText;
  final bool isPasswordField;
  final String label;
  final void Function(String value) onChanged;
  final TextInputType inputType;

  const CustomAuthField(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.label,
      this.isPasswordField = false,
      required this.inputType,
      required this.onChanged,
      required this.errorText})
      : super(key: key);

  @override
  State<CustomAuthField> createState() => _CustomAuthFieldState();
}

class _CustomAuthFieldState extends State<CustomAuthField> {
  FocusNode myNode = FocusNode();
  bool hasFocus = false;
  @override
  void initState() {
    super.initState();
    myNode.addListener(() {
      setState(() {
        hasFocus = myNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    myNode.removeListener(() {});
    myNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return GestureDetector(
      onTap: () {
        myNode.requestFocus();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: widget.errorText.isNotEmpty?Colors.red:hasFocus
                      ? Colors.green
                      : Theme.of(context).dividerColor),
              borderRadius: BorderRadius.circular(12)),
          child: TextField(
            controller: widget.controller,
            focusNode: myNode,
            textCapitalization: TextCapitalization.words,
            autocorrect: false,
            onChanged: widget.onChanged,
            obscureText: widget.isPasswordField ? true : false,
            style: primaryTextTheme.bodyText1,
            decoration: InputDecoration(
                prefixIconConstraints:
                    const BoxConstraints(minWidth: 295, minHeight: 0),
                errorText: widget.errorText.isEmpty
                    ? null
                    : widget.errorText,
                hintText: widget.hintText,
                hintStyle: primaryTextTheme.bodyText1!
                    .copyWith(color: const Color(0xffbebfbf)),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.all(
                    16.0),
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none)),
          ),
        ),
      ),
    );
  }
}

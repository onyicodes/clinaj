import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String errorText;
  final String label;
  final Widget validationWidget;
  final void Function(String value) onChanged;
  final void Function() toggleObscureText;
  final bool obscurePassword;

   const PasswordTextField({
    Key? key,
    required this.controller,
    required this.errorText,
    required this.label,
    required this.obscurePassword,
    required this.toggleObscureText,
    required this.onChanged,
    required this.hintText,
     this.validationWidget = const SizedBox()
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
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
    myNode.removeListener((){});
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color:widget.errorText.isNotEmpty?Colors.red: hasFocus
                          ? Colors.green
                          : Theme.of(context).dividerColor),
                  borderRadius: BorderRadius.circular(12)),
              child: TextField(
                focusNode: myNode,
                controller: widget.controller,
                onChanged: widget.onChanged,
                textCapitalization: TextCapitalization.words,
                autocorrect: false,
                obscureText: widget.obscurePassword ? true : false,
                style: primaryTextTheme.bodyText1,
                decoration: InputDecoration(
                    prefixIconConstraints:
                        const BoxConstraints(minWidth: 295, minHeight: 0),
                    suffixIcon: IconButton(
                        onPressed: widget.toggleObscureText,
                        icon: FaIcon(widget.obscurePassword
                            ? FontAwesomeIcons.eyeSlash
                            : FontAwesomeIcons.eye)),
                    errorText: widget.errorText.isEmpty ? null : widget.errorText,
                    hintText: widget.hintText,
                    hintStyle: primaryTextTheme.bodyText1!
                        .copyWith(color: const Color(0xffbebfbf)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none),
                    contentPadding: const EdgeInsets.all( 16.0),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide.none)),
              ),
            ),
            
            widget.validationWidget
          ],
        ),
      ),
    );
  }
}

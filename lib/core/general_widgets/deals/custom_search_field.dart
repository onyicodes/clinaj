import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String errorText;
  final bool isPasswordField;
  final void Function(String value) onChanged;
  final TextInputType inputType;

  const CustomSearchField(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.isPasswordField = false,
      required this.inputType,
      required this.onChanged,
      required this.errorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        controller: controller,
        textCapitalization: TextCapitalization.words,
        autocorrect: false,
        onChanged: onChanged,
        obscureText: isPasswordField? true:false,
        style: primaryTextTheme.bodyText1,
        decoration: InputDecoration(
            prefixIconConstraints:
                const BoxConstraints(minWidth: 295, minHeight: 0),
            suffix: Container(height: 40, width: 40,decoration: const BoxDecoration(color: Colors.black, borderRadius: BorderRadius.all(Radius.circular(50))), child: Icon(Icons.search, color: Colors.white,),),
            errorText: errorText.isEmpty?null:errorText,
            hintText: hintText,
            hintStyle: primaryTextTheme.bodyText1!
                .copyWith(color: const Color(0xffbebfbf)),
            filled: true,
            fillColor: Theme.of(context).canvasColor,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.only(
                left: 24.0, top: 16.0, bottom: 16.0, right: 16.0),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        Theme.of(context).secondaryHeaderColor.withOpacity(1)),
                gapPadding: 20.0,
                borderRadius: BorderRadius.all(Radius.circular(30)))),
      ),
    );
  }
}

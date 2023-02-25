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
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width*0.85,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius:  const BorderRadius.all(Radius.circular(8)),
                        boxShadow: [BoxShadow(color: Theme.of(context).shadowColor, blurRadius: 1, spreadRadius:0.5)],),
        child: TextField(
          controller: controller,
          textCapitalization: TextCapitalization.words,
          autocorrect: false,
          onChanged: onChanged,
          style:primaryTextTheme.bodyLarge!
                  .copyWith( fontSize: 24),
          decoration: InputDecoration(
            prefixIconConstraints: const BoxConstraints(
                maxWidth: 55, minWidth: 50, minHeight: 30, maxHeight: 35),
            prefixIcon:Icon(Icons.search, color: Theme.of(context).iconTheme.color,),
            suffixIcon: Icon(Icons.close, color: Theme.of(context).iconTheme.color,),
              errorText: errorText.isEmpty ? null : errorText,
              hintText: hintText,
              hintStyle: primaryTextTheme.bodyLarge!
                  .copyWith(color: const Color(0xffbebfbf), fontSize: 24),
              fillColor: Theme.of(context).cardColor,
              filled: true,
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              contentPadding: const EdgeInsets.only(
                  left: 24.0, top: 16.0, bottom: 16.0, right: 16.0),
              border:const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  gapPadding: 20.0,
                  borderRadius:  BorderRadius.all(Radius.circular(8)))),
        ),
      ),
    );
  }
}

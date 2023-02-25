import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class PhoneInputTextField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String hintText;
  final String errorText;
  final String countryFlagEmoji;
  final String countryDialCode;
  final void Function(String value) onChanged;
  final void Function(Country value) onCountryChanged;

  const PhoneInputTextField(
      {Key? key,
      required this.controller,
      required this.onCountryChanged,
      required this.countryDialCode,
      required this.countryFlagEmoji,
      required this.errorText,
      required this.hintText,
      required this.label,
      required this.onChanged})
      : super(key: key);

  @override
  State<PhoneInputTextField> createState() => _PhoneInputTextFieldState();
}

class _PhoneInputTextFieldState extends State<PhoneInputTextField> {
   FocusNode myNode = FocusNode();
  bool hasFocus = false;
  String countryFlagEmoji = "🇳🇬";
  String countryDialCode = "234";
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color:widget.errorText.isNotEmpty?Colors.red: hasFocus
                                ? Colors.green
                                : Theme.of(context).dividerColor),
                        borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(widget.label, style: primaryTextTheme.headline3),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      controller: widget.controller,
                      onChanged: widget.onChanged,
                      keyboardType: TextInputType.phone,
                      focusNode: myNode,
                      style: primaryTextTheme.bodyText1,
                      autocorrect: false,
                      decoration: InputDecoration(
                          prefixStyle: const TextStyle(color: Colors.transparent),
                          prefixIconConstraints:
                              const BoxConstraints(minWidth: 0, minHeight: 0),
                          prefixIcon:  GestureDetector(
                            onTap: () {
                              showCountryPicker(
                                context: context,
                                showPhoneCode:
                                    true, // optional. Shows phone code before the country name.
                                onSelect: widget.onCountryChanged,
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:8.0),
                              child: Text(
                                "${widget.countryFlagEmoji.isEmpty? countryFlagEmoji:widget.countryFlagEmoji }  +${widget.countryDialCode.isEmpty? countryDialCode:widget.countryDialCode} |",
                                style: primaryTextTheme.displaySmall,
                              ),
                            ),
                          ),
                          hintText: widget.hintText,
                          hintStyle: primaryTextTheme.bodyText1!
                              .copyWith(color: const Color(0xffbebfbf)),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.only(
                              left: 0.0, top: 16.0, bottom: 16.0, right: 16.0),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.errorText,
                style: primaryTextTheme.bodyText2!
                    .copyWith(color: Theme.of(context).errorColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

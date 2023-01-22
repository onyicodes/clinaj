import 'package:clinaj/app/features/signup/presentation/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SocialSignups extends StatelessWidget {
  const SocialSignups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<SignupController>(
            builder: (_) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  _.appleSignup();
                },
                child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                    child: const Center(
                        child: FaIcon(
                      FontAwesomeIcons.apple,
                      size: 40,
                    ))),
              ),
            ),
          ),
          GetBuilder<SignupController>(
            builder: (_) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  _.facebookSignup();
                },
                child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                    child: const Center(
                        child: FaIcon(
                      FontAwesomeIcons.facebook,
                      size: 40,
                    ))),
              ),
            ),
          ),
          GetBuilder<SignupController>(
            builder: (_) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  _.googleSignup();
                },
                child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                    child: const Center(
                        child: FaIcon(
                      FontAwesomeIcons.google,
                      size: 40,
                    ))),
              ),
            ),
          )
        ],
      ),
    );
  }
}

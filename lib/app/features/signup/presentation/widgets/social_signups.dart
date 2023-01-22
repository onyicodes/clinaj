import 'package:clinaj/app/features/signup/presentation/controllers/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SocialSignups extends StatelessWidget {
  const SocialSignups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme primaryTextTheme = Theme.of(context).primaryTextTheme;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GetBuilder<SignupController>(
            builder: (_) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  _.facebookSignup();
                },
                child: Container(
                    height: 55,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Center(
                            child: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 40,
                        )),
                        const SizedBox(width:8 ,),
                        Text('Facebook', style: primaryTextTheme.bodyText1,)
                      ],
                    )),
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
                    height: 55,
                    width: 160,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      const  FaIcon(
                          FontAwesomeIcons.google,
                          size: 40,
                        ),
                        const SizedBox(width:8 ,),
                        Text('Google', style: primaryTextTheme.bodyText1,)
                      ],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

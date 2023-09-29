import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_time/core/functions/user_functions.dart';
import 'package:hotel_time/generated/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static String verify = "";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController countryController = TextEditingController();
  TextEditingController phoneTextController = TextEditingController();
  var phone = "";

  @override
  void initState() {
    countryController.text = "+38";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    currentUserStatus(context);
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).loginFieldPhoneLable,
                style: theme.textTheme.labelLarge!.copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countryController,
                        style: theme.textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        controller: phoneTextController,
                        onChanged: (value) {
                          phone = value;
                        },
                        style: theme.textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                        ),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: S.of(context).loginFieldPhoneHint,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      textStyle: theme.textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      backgroundColor: theme.focusColor,
                      foregroundColor: theme.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () async {
                    if (phone != "") {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber: countryController.text + phone,
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "${S.of(context).loginSomethingWrongWithCaptchaVerify} : $e",
                              ),
                            ),
                          );
                          phoneTextController.text = "";
                          phone = "";
                        },
                        codeSent: (String verificationId, int? resendToken) {
                          LoginScreen.verify = verificationId;
                          context.router.pushNamed('/verify');
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            S.of(context).loginEmptyPhoneField,
                          ),
                        ),
                      );
                    }
                  },
                  child: Text(S.of(context).loginButtonTitle),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

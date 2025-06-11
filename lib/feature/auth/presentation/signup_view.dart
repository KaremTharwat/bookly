import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feature/auth/presentation/widget/custom_button.dart';
import 'package:bookly/feature/auth/presentation/widget/custom_textformfeild.dart';
import 'package:bookly/feature/onboarding/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  dynamic confirmPassword;
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(Assets.signUp, height: 250),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back, color: Colors.grey),
                            CustomText(
                              text: "Back To Login",
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CustomText(
                          text: "Sign Up",
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      CustomTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email is required";
                          }
                          return null;
                        },
                        label: "email",
                        keyboardType: TextInputType.emailAddress,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.email),
                        ),
                      ),
                      CustomTextFormField(
                        obsecure: isObsecure,
                        validator: (value) {
                          confirmPassword = value;
                          if (value!.isEmpty) {
                            return "password is required";
                          } else if (value.length < 6) {
                            return "password must be at Least 6 characters";
                          }
                          return null;
                        },
                        label: "password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isObsecure = !isObsecure;
                            });
                          },
                          icon:
                              isObsecure
                                  ? Icon(Icons.lock)
                                  : Icon(Icons.lock_open),
                        ),
                      ),
                      CustomTextFormField(
                        obsecure: isObsecure,
                        label: "confirm password",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "confirm is required";
                          } else if (value != confirmPassword) {
                            return "passwords do not match";
                          }
                          return null;
                        },
                      ),
                      CustomTextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "phone is required";
                          }
                          return null;
                        },
                        label: "phone",
                        keyboardType: TextInputType.phone,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.phone),
                        ),
                      ),
                      SizedBox(height: 30),
                      CustomElevatedButton(
                        text: "Sign Up",
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

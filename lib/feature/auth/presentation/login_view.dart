import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/constans.dart';
import 'package:bookly/feature/auth/presentation/widget/custom_textformfeild.dart';
import 'package:bookly/feature/onboarding/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static const String routeName = "login";

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isSecure = true;
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image(image: AssetImage(Assets.login)),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
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
                        CustomText(
                          text: "Welcome Back",
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: "Sign in to begin your journey through words",
                          fontSize: 14,
                          color: const Color.fromARGB(255, 37, 37, 37),
                        ),
                        CustomTextFormField(
                          label: "Email",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email is required";
                            }
                            return null;
                          },
                        ),
                        CustomTextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "password is required";
                            }
                            return null;
                          },
                          obsecure: isSecure,
                          label: "Password",
                          iconButton: IconButton(
                            onPressed: () {
                              isSecure = !isSecure;
                              setState(() {});
                            },
                            icon:
                                isSecure
                                    ? Icon(Icons.lock_outline)
                                    : Icon(Icons.lock_open_outlined),
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: ischeck,
                              onChanged: (value) {
                                setState(() {
                                  ischeck = value!;
                                });
                              },
                            ),
                            Text("Remember Me"),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text("Forget passowrd"),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimryColor,
                              elevation: 6,
                              shadowColor: kPrimryColor,
                            ),
                            child: CustomText(text: "Login", fontSize: 16),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(thickness: 2, endIndent: 10),
                            ),
                            Text("Or Login with"),
                            Expanded(child: Divider(thickness: 2, indent: 10)),
                          ],
                        ),
                        Image.asset(Assets.googleIcon, width: 30, height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dont have an account?"),
                            TextButton(
                              onPressed: () {},
                              child: Text("Sign Up"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

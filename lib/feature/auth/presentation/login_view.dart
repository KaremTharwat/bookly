import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/feature/auth/data/signin_with_email_and_password.dart';
import 'package:bookly/feature/auth/presentation/signup_view.dart';
import 'package:bookly/feature/auth/presentation/widget/custom_button.dart';
import 'package:bookly/feature/auth/presentation/widget/custom_textformfeild.dart';
import 'package:bookly/feature/home/presentation/home_view.dart';
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
  bool isLoading = false;
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Image(image: AssetImage(Assets.login)),
            const SizedBox(height: 30),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                decoration: const BoxDecoration(
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
                        const CustomText(
                          text: "Welcome Back",
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        const CustomText(
                          text: "Sign in to begin your journey through words",
                          fontSize: 14,
                          color: Color.fromARGB(255, 37, 37, 37),
                        ),
                        CustomTextFormField(
                          keyboardType: TextInputType.emailAddress,
                          label: "Email",
                          validator: (value) {
                            email = value;
                            if (value!.isEmpty) {
                              return "Email is required";
                            }
                            return null;
                          },
                        ),
                        CustomTextFormField(
                          validator: (value) {
                            password = value;
                            if (value!.isEmpty) {
                              return "password is required";
                            }
                            return null;
                          },
                          obsecure: isSecure,
                          label: "Password",
                          suffixIcon: IconButton(
                            onPressed: () {
                              isSecure = !isSecure;
                              setState(() {});
                            },
                            icon:
                                isSecure
                                    ? const Icon(Icons.lock_outline)
                                    : const Icon(Icons.lock_open_outlined),
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
                            const Text("Remember Me"),
                            const Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: const Text("Forget passowrd"),
                            ),
                          ],
                        ),
                        isLoading
                            ? const CircularProgressIndicator()
                            : CustomElevatedButton(
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  isLoading = true;
                                  setState(() {});
                                  await signInWithEmailAndPasseord(
                                    email,
                                    password,
                                  );
                                  if (context.mounted) {
                                    Navigator.pushNamedAndRemoveUntil(
                                      context,
                                      HomeView.routeName,
                                      (route) => false,
                                    );
                                  }
                                  isLoading = false;
                                }
                              },
                              text: "Login",
                            ),
                        const Row(
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
                            const Text("Dont have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  SignupView.routeName,
                                );
                              },
                              child: const Text("Sign Up"),
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

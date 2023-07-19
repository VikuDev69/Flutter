// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:task_1/components/my_textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  final confPasswordController = TextEditingController();
  final confirmEmailController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  static final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // sign user in method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Form(
        key: formkey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.03,
                    child: Icon(
                      Icons.lock,
                      size: 80,
                    )),

                const SizedBox(height: 95),
                const Text("Become a member. Lets Create An Account! "),
                const SizedBox(height: 20),

                // username textfield
                MyTextField(
                  prefixIcon: const Icon(Icons.person),
                  controller: nameController,
                  hintText: 'Your Name',
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Can not Be Empty';
                    }
                  },
                ),
                const SizedBox(height: 10),
                MyTextField(
                  prefixIcon: const Icon(Icons.alternate_email_outlined),
                  controller: emailController,
                  hintText: 'Enter Your Email',
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Can not Be Empty';
                    } else if (RegExp(
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                            .hasMatch(value) !=
                        true) {
                      return 'enter valid email id';
                    }
                  },
                ),

                const SizedBox(height: 10),
                MyTextField(
                  prefixIcon: const Icon(Icons.alternate_email_outlined),
                  controller: confirmEmailController,
                  hintText: 'Confirm Email',
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Can not Be Empty';
                    } else if (value != emailController.text) {
                      return "Email must be same";
                    }
                  },
                ),
                const SizedBox(height: 10),
                // password textfield
                MyTextField(
                  prefixIcon: Icon(Icons.lock),
                  controller: confPasswordController,
                  hintText: 'Password',
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'can not be empty';
                    } else if (value != passwordController.text) {
                      return "Password must be same";
                    }
                  },
                ),

                const SizedBox(height: 10),
                MyTextField(
                  prefixIcon: Icon(Icons.lock),
                  controller: passwordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'can not be empty';
                    } else if (RegExp(
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                            .hasMatch(value) !=
                        true) {
                      return 'Enter Valid Password';
                    }
                  },
                ),

                // forgot password?
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Text(
                //         'Forgot Password?',
                //         style: TextStyle(color: Colors.grey[600]),
                //       ),
                //     ],
                //   ),
                // ),

                const SizedBox(height: 25),
                GestureDetector(
                  onTap: () {
                    if (formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: const Duration(milliseconds: 900),
                          content: const Text(
                              'Successfully Signed Up. Login to continue')));
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 50),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

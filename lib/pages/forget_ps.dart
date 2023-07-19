import 'package:flutter/material.dart';
import 'package:task_1/components/my_textfield.dart';

class ForgetPs extends StatefulWidget {
  const ForgetPs({super.key});

  @override
  State<ForgetPs> createState() => _ForgetPsState();
}

class _ForgetPsState extends State<ForgetPs> {
  static final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Form(
        key: formkey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height: 10),
              SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: const Icon(
                    Icons.person_search,
                    size: 80,
                  )),
              const SizedBox(height: 95),
              const Text("Enter Your Registered Email Below "),
              const Text('To Get New Password ! '),
              const SizedBox(height: 20),
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
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        duration: Duration(milliseconds: 1000),
                        content: Text(
                            'New Password Sent To Registered Email :) ')));
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Submit",
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
              const SizedBox(height: 10),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_1/components/my_button.dart';
import 'package:task_1/components/my_textfield.dart';
import 'package:task_1/pages/home.dart';
import 'package:task_1/pages/signup_page.dart';
import 'package:task_1/pages/forget_ps.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true
      // reverse: true,
      );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  static final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  // USer List
  var user_1 = 'test@gmail.com';
  // sign user in method
  void signUserIn() {}

  void saveUserData(email, password) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('email', email);
    prefs.setString('password', password);

    var getdata = prefs.getString('email');

    // ignore: avoid_print
    print('$getdata');
  }




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
                const SizedBox(height: 50),
                ScaleTransition(
                  scale: _animation,
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(
                        children: [
                          Image.asset(
                            'lib/images/Nike.png',
                            height: 150,
                            width: 800,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Image.asset(
                            'lib/images/animated.gif',
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 55),

                // username textfield
                MyTextField(
                  prefixIcon: const Icon(Icons.alternate_email_outlined),
                  controller: usernameController,
                  hintText: 'Enter Your Email',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Can not Be Empty';
                    } else if (RegExp(
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                            .hasMatch(value) !=
                        true) {
                      return 'enter valid email id';
                    } else if (value != user_1) {
                      return 'user Not Found';
                    }
                  },
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  prefixIcon: Icon(Icons.lock),
                  controller: passwordController,
                  hintText: 'Password',
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

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ForgetPs()));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // sign in button
                MyButton(onTap: () {
                  if (formkey.currentState!.validate()) {
                    saveUserData(
                        usernameController.text, passwordController.text);

                    Navigator.pushAndRemoveUntil<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (context) => HomeP(),
                      ),
                      (route) =>
                          false, //if you want to disable back feature set to false
                    );
                  }
                }),

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
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpPage()));
                      },
                      child: const Text(
                        'Register now',
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

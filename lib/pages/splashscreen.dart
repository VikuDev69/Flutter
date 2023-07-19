import 'package:flutter/material.dart';
import 'package:task_1/pages/login_page.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
    with TickerProviderStateMixin {
  void initState() {
    super.initState();

    _navigate();
  }

  _navigate() async {
    await Future.delayed(const Duration(milliseconds: 3200), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  late final AnimationController _controller1 = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(
      // reverse: true,
      );
  late final Animation<double> _animation1 = CurvedAnimation(
    parent: _controller1,
    curve: Curves.fastOutSlowIn,
  );

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(
      // reverse: true,
      );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller1.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: SizeTransition(
                sizeFactor: _animation1,
                axis: Axis.horizontal,
                axisAlignment: -1,
                child: ScaleTransition(
                  scale: _animation,
                  child: Center(
                    child: Image.asset(
                      'lib/images/Nike.png',
                      color: Colors.white,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ))));
  }
}

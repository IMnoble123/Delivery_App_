import 'package:delivery/view/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class StaterPage extends StatefulWidget {
  const StaterPage({Key? key}) : super(key: key);

  @override
  State<StaterPage> createState() => _StaterPageState();
}

class _StaterPageState extends State<StaterPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  bool _textVisible = true;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));

    _animation =
        Tween<double>(begin: 1.0, end: 25.0).animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  void _onTap() {
    setState(() {
      _textVisible = false;
    });

    _animationController.forward().then((f) => Navigator.push(context,
        PageTransition(type: PageTransitionType.fade, child: const SignIn())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/delivery.png'), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomCenter, colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.2),
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //  FadeAnimation(
              //     .5,
              //     const Text(
              //       'Grub On Wheels',
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 50,
              //           fontWeight: FontWeight.bold),
              //     )),
              const Text(
                'Grub On Wheels',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              //  FadeAnimation(
              //     1,
              //     const Text(
              //       'Taking Order For Nearby Delivery',
              //       style: TextStyle(
              //           color: Colors.white, height: 1.4, fontSize: 18),
              //     )),
              const Text(
                "Taking Order's for Nearby Delivery",
                style:
                    TextStyle(color: Colors.white, fontSize: 18, height: 1.4),
              ),
              const SizedBox(
                height: 100,
              ),
              // FadeAnimation(
              //     1.2,
              //     ScaleTransition(
              //       scale: _animation,
              //       child: Container(
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(10),
              //             gradient: const LinearGradient(
              //                 colors: [Colors.yellow, Colors.orange])),
              //         child: AnimatedOpacity(
              //           opacity: _textVisible ? 1.0 : 0.0,
              //           duration: const Duration(milliseconds: 50),
              //           child: MaterialButton(
              //             onPressed: () => _onTap(),
              //             minWidth: double.infinity,
              //             child: const Text(
              //               'Lets Start',
              //               style: TextStyle(color: Colors.white),
              //             ),
              //           ),
              //         ),
              //       ),
              //     )),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                        colors: [Colors.yellow, Colors.orange])),
                child: AnimatedOpacity(
                  opacity: _textVisible ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 50),
                  child: MaterialButton(
                    onPressed: () => _onTap(),
                    minWidth: double.infinity,
                    child: const Text(
                      "Get's Started",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // FadeAnimation(
              //     1.4,
              //     AnimatedOpacity(
              //       opacity: _textVisible ? 1.0 : 0.0,
              //       duration: const Duration(milliseconds: 50),
              //       child: const Align(
              //         child: Text(
              //           'Delivery over 12/7',
              //           style: TextStyle(color: Colors.white60, fontSize: 15),
              //         ),
              //       ),
              //     ))
              const Align(
                child: Text(
                  "Delivery over 12/7",
                  style: TextStyle(color: Colors.white60, fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

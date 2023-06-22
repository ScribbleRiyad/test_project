import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/Utils/app_styles.dart';
import 'package:test_project/app/Widgets/custom_form_field.dart';
import '../../Utils/theme_service.dart';
import '../../Widgets/custom_dot.dart';
import '../../Widgets/textformfield_widgets.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool pressed = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: context.theme.colorScheme.background,
        body: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(children: [
              ClipPath(
                  clipper: CustomClipperDesign(),
                  child: Container(
                      height: size.height * 0.42,
                      color: const Color.fromRGBO(23, 48, 86, 1),
                      child: Stack(children: [
                        Image.asset(
                          'assets/images/map_img.png',
                          height: size.height,
                          width: size.width,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 70),
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                        )
                      ]))),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: MyTextFormField(
                  keyboardType: TextInputType.number,
                  hintText: "Enter Your Name",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your number';
                    }

                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 40.00,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Dot(),
                  const SizedBox(
                    width: 10,
                  ),
                  const Dot(),
                  const SizedBox(
                    width: 10,
                  ),
                  const Dot(),
                  const SizedBox(
                    width: 10,
                  ),
                  const Dot(),
                  const SizedBox(
                    width: 10,
                  ),
                  const Dot(),
                  const SizedBox(
                    width: 10,
                  ),
                  const Dot(),
                  const SizedBox(
                    width: 10,
                  ),
                  const Dot(),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.white10, width: 1.5),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios_outlined),
                      color: AppStyles.whiteColor,
                      onPressed: () async {},
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          // topRight: Radius.circular(13),
                          topLeft: Radius.circular(13),
                          // bottomLeft: Radius.circular(13),
                          bottomRight: Radius.circular(13)),
                    ),
                    backgroundColor: context.theme.primaryColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 16),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  onPressed: ThemeService().switchTheme,
                  child: const Text('Change Theme')),
            ])));
  }
}

class CustomClipperDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double w = size.width;
    double h = size.height;

    path.lineTo(0, h / 1.2 - 50);
    path.quadraticBezierTo(20, h / 1.2, 80, h / 1.2);
    path.lineTo(w, h / 1.2);
    path.lineTo(w - 80, h / 1.2);
    path.quadraticBezierTo(w - 20, h - 50, w, h);
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

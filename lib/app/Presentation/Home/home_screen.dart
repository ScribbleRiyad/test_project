import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../Utils/theme_service.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToggleSwitch(
              minWidth: 120.0,
              initialLabelIndex: 1,
              cornerRadius: 20.0,
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: const ['Light Mode', 'Dark Mode'],
              icons: const [FontAwesomeIcons.lightbulb, FontAwesomeIcons.moon],
              activeBgColors: const [
                [Colors.blue],
                [Colors.pink]
              ],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.theme.primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onPressed: ThemeService().switchTheme,
                child: const Text('Change Theme'))
          ],
        ),
      ),
    );
  }
}

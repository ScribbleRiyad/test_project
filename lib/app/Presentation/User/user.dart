import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()
class UserPage extends StatefulWidget {
  const UserPage({Key? key, required this.userData}) : super(key: key);
  final userData;

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.userData['name']),
      ),
    );
  }
}

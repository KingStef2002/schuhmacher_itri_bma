import 'package:flutter/material.dart';
import 'package:schuhmacher_itri_bma/widgets/development_point.dart';

class MainScreen extends StatefulWidget {
  static const route = '/';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RawScrollbar(
          controller: _scrollController,
          child: SingleChildScrollView(
            child: Center(
              child: Row(
                children: const [
                  DevelopmentPoint(),
                  SizedBox(width: 20),
                  DevelopmentPoint(),
                  SizedBox(width: 20),
                  DevelopmentPoint(),
                  SizedBox(width: 20),
                  DevelopmentPoint(),
                  SizedBox(width: 20),
                  DevelopmentPoint(),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:artisans/views/widgets/mainscreenappbarwidget.dart';
import 'package:artisans/views/widgets/policylistingwidget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bgimage.png',
              ),
              fit: BoxFit.cover),
        ),
        child: const Column(
          children: [
            MainScreenAppBarWidget(
              title: 'Select Insurance',
            ),
            Expanded(
              child: PolicyListingWidget(),
            )
          ],
        ),
      ),
    );
  }
}

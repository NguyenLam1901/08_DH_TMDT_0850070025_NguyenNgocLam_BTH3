
import 'package:flutter/material.dart';
import 'package:web_food/Screens/Home/Components/app_bar.dart';
import 'package:web_food/Screens/Home/Components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OrientationBuilder( // Use OrientationBuilder to detect screen orientation
          builder: (context, orientation) {
            // Determine the current screen orientation
            String backgroundImage = orientation == Orientation.landscape
                ? "assets/images/bg.png"
                : "assets/images/bg-stand.png";

            return Container(
              height: MediaQuery.of(context).size.height, // Fill available height
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(backgroundImage),
                  fit: BoxFit.cover, // Use BoxFit.cover to cover the entire container
                ),
              ),
              child: const SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomAppBar(),
                    SizedBox(height: 16), // Add some space for better layout
                    Body(),
                    SizedBox(height: 16), // Add some space for better layout
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

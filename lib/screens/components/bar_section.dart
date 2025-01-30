import 'package:flutter/material.dart';

import '../../../constants.dart';

class BarSection extends StatelessWidget {
  const BarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Hello \n Welcome To Our Electronics \n Shop Category App",
              style: TextStyle(
                  height: 1.3,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat"),
            )
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              border: Border.all(color: kSecondaryColor.withOpacity(0.3)),
              borderRadius: BorderRadius.circular(20.0)),
          child: const Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: kSecondaryColor,
                backgroundImage: AssetImage("assets/images/profile.png"),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text("Profile")
            ],
          ),
        )
      ],
    );
  }
}

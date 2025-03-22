
import 'package:flutter/material.dart';
import 'package:perplexity/widgets/search_section.dart';
import 'package:perplexity/widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
        SideBar(),
          Column(
            children: [
             Expanded(child: SearchSection()),
              //footer
              Container(
                height: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}

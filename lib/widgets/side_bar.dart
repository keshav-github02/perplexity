import 'package:flutter/cupertino.dart';
import 'package:perplexity/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:perplexity/widgets/side_bar_button.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: isCollapsed ? 64 : 150,
      color: AppColors.sideNav,
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: isCollapsed?30:60,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  isCollapsed ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
            
                const SizedBox(
                  height: 24,
                ),
                SideBarButton(isCollapsed: isCollapsed, icon: Icon(Icons.add), text: "Home"),
                SideBarButton(isCollapsed: isCollapsed, icon: Icon(Icons.search), text: "Search"),
                SideBarButton(isCollapsed: isCollapsed, icon: Icon(Icons.language), text: "Spaces"),
                SideBarButton(isCollapsed: isCollapsed, icon: Icon(Icons.auto_awesome), text: "Discover"),
                SideBarButton(isCollapsed: isCollapsed, icon: Icon(Icons.cloud_outlined), text: "Library"),
            
                const Spacer(),

              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                margin: EdgeInsets.symmetric(vertical: 14),
                child: Icon(
                  isCollapsed
                      ? Icons.keyboard_arrow_right
                      : Icons.keyboard_arrow_left,
                  color: AppColors.iconGrey,
                  size: 22,
                )),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

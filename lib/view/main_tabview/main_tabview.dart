import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/tab_button.dart';

import '../home/home_view.dart';
import '../more/more_view.dart';
import '../profile/profile_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selctTab = 2;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      backgroundColor: const Color(0xfff5f5f5),
     //floatingActionButtonLocation:
       //  FloatingActionButtonLocation.miniCenterDocked,
     // floatingActionButton: SizedBox(
       // width: 50,
        //height: 50,
      //  home icon button 
      
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: TColor.backgrount,
      //  shadowColor: Colors.black,
        elevation: 1,
       notchMargin: 5,
       /// height: 64,
     //   shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
          onPressed: () {
            if (selctTab != 2) {
              selctTab = 2;
              selectPageView = const HomeView();
            }
            if (mounted) {
              setState(() {});
            }
          },
          backgroundColor: selctTab == 2 ? TColor. backgrount : TColor.white,
          child: Image.asset(
            "assets/img/tab_home.png",
            width: 25,
            height: 25,
          ),
        ),
      
              TabButton(
                  title: "Menu",
                  icon: "assets/img/tab_menu.png",
                  onTap: () {
                    if (selctTab != 0) {
                      selctTab = 0;
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                   isSelected: selctTab == 0),
        
                TabButton(
                  title: "More",
                  icon: "assets/img/tab_more.png",
                  onTap: () {
                    if (selctTab != 4) {
                      selctTab = 4;
                      selectPageView = const  MoreView();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selctTab == 4),

                  TabButton(
                 title: "Profile",
                icon: "assets/img/tab_profile.png",
                  onTap: () {
                    if (selctTab != 3) {
                      selctTab = 3;
                      selectPageView = const ProfileView();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  isSelected: selctTab == 3),
    
            ],
          ),
        ),
      ),
    );
  }
}

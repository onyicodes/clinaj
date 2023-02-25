import 'package:clinaj/app/features/explore/presentation/pages/explore_page.dart';
import 'package:clinaj/app/features/home/presentation/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  Home({Key? key}) : super(key: key){
    SystemChrome.setEnabledSystemUIMode( SystemUiMode.manual,
  overlays: [
    SystemUiOverlay.top, // Shows Status bar and hides Navigation bar
  ],);
  {
    SystemChrome.setSystemUIOverlayStyle( const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
     statusBarBrightness: Brightness.light,
     statusBarIconBrightness: Brightness.light// status bar color
  ));
  }
  }
  List<Widget> pages =  [
    ExplorePage(),
    Text('Favourites'),
    Text('Records'),
    Text('Chat')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MediaQuery.of(context).size.width < 600
          ? GetX<HomeController>(builder: (_) {
              return NavigationBar(
                elevation: 1,
                backgroundColor:
                    Theme.of(context).bottomNavigationBarTheme.backgroundColor,
                destinations: const [
                  NavigationDestination(
                      icon: Icon(Icons.explore, color: Color(0xff0E3692)),
                      label: 'Explore'),
                  NavigationDestination(
                    icon: Icon(
                      Icons.favorite_rounded,
                      color: Color(0xff0E3692),
                    ),
                    label: 'Favourites',
                  ),
                  
                  NavigationDestination(
                      icon: Icon(Icons.menu_book_sharp,
                          color: Color(0xff0E3692)),
                      label: 'Records'),
                  NavigationDestination(
                      icon: Icon(Icons.message, color: Color(0xff0E3692)),
                      label: 'Message'),
                ],
                labelBehavior:
                    NavigationDestinationLabelBehavior.onlyShowSelected,
                selectedIndex: _.currentPageIndex,
                onDestinationSelected: (index) {
                  _.currentPageIndex = index;
                },
              );
            })
          : null,
      body: GetX<HomeController>(
        builder: (_) {
          return Row(
            children: [
              if (MediaQuery.of(context).size.width >= 600)
                NavigationRail(
                  destinations: const <NavigationRailDestination>[
                    NavigationRailDestination(
                      icon: Icon(
                        Icons.favorite_border_outlined,
                      ),
                      selectedIcon: Icon(
                        Icons.favorite_rounded,
                        color: Color(0xff0E3692),
                      ),
                      label: Text('Favourites'),
                    ),
                    NavigationRailDestination(
                        selectedIcon:
                            Icon(Icons.explore, color: Color(0xff0E3692)),
                        icon: Icon(Icons.explore_outlined),
                        label: Text('Deals')),
                    NavigationRailDestination(
                        icon: Icon(Icons.notifications_outlined),
                        selectedIcon: Icon(Icons.notifications_rounded,
                            color: Color(0xff0E3692)),
                        label: Text('Notifications')),
                    NavigationRailDestination(
                        icon: Icon(Icons.person_outlined),
                        selectedIcon:
                            Icon(Icons.person, color: Color(0xff0E3692)),
                        label: Text('Profile')),
                  ],
                  selectedIndex: _.currentPageIndex,
                  labelType: NavigationRailLabelType.selected,
                  onDestinationSelected: (index) {
                    _.currentPageIndex = index;
                  },
                ),
              const VerticalDivider(thickness: 1, width: 1),
              Expanded(
                child: IndexedStack(
                  index: _.currentPageIndex,
                  children: pages,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

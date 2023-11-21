import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

import 'core/nested_pages.dart';

class MainPage extends HookWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final activeIndex = useState<int>(0);
    final iconList = [
      (Icons.home_outlined, 'home'),
      (Icons.book_outlined, 'queue'),
      (Icons.person_outlined, 'profile'),
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF7565E6),
      body: Stack(
        children: [
          Navigator(
            key: Get.nestedKey(1),
            initialRoute: Destination.home.route,
            onGenerateRoute: (settings) => Destination.getPage(settings),
          ),
        ],
      ),
      bottomNavigationBar: _MainBottomNavigationBarWidget(
        iconList: iconList,
        activeIndex: activeIndex,
      ),
    );
  }
}

class _MainBottomNavigationBarWidget extends StatelessWidget {
  const _MainBottomNavigationBarWidget({
    Key? key,
    required this.iconList,
    required this.activeIndex,
  }) : super(key: key);

  final List<(IconData, String)> iconList;
  final ValueNotifier<int> activeIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar.builder(
      itemCount: iconList.length,
      tabBuilder: (index, isActive) {
        final color =
            isActive ? const Color(0xFF132353) : const Color(0x57132353);
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconList[index].$1,
              size: 40,
              color: color,
            ),
          ],
        );
      },
      backgroundColor: Colors.white,
      borderColor: Colors.transparent,
      elevation: 0,
      activeIndex: activeIndex.value,
      splashColor: const Color(0xFF132353),
      splashSpeedInMilliseconds: 300,
      notchSmoothness: NotchSmoothness.defaultEdge,
      gapLocation: GapLocation.none,
      onTap: (index) {
        switch (index) {
          case 0:
            if (activeIndex.value != 0) {
              Get.toNamed(Destination.home.route, id: 1);
            }
            break;
          case 1:
            if (activeIndex.value != 1) {
              Get.toNamed(Destination.queues.route, id: 1);
            }
            break;
          case 2:
            if (activeIndex.value != 2) {
              Get.toNamed(Destination.person.route, id: 1);
            }
            break;
          default:
            break;
        }
        activeIndex.value = index;
      },
    );
  }
}

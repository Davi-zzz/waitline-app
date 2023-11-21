import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../nested_pages/book_page.dart';
import '../nested_pages/home_page.dart';
import '../nested_pages/profile_page.dart';

enum Destination {
  // Update these values in the enum with new values that represent the
  // screens that you want to navigate in your app.
  home,
  queues,
  person;

  String get route {
    return '/${describeEnum(this)}';
  }

  Widget get widget {
    // Update the cases in this switch for each element of this enum
    // and the screens that you want to navigate when an enum is selected.
    switch (this) {
      case Destination.home:
        return const HomePage();
      case Destination.queues:
        return const BookPage();
      case Destination.person:
        return const ProfilePage();
    }
  }

  static GetPageRoute getPage(RouteSettings settings) {
    var destination =
        Destination.values.firstWhereOrNull((e) => e.route == settings.name);
    return GetPageRoute(
      page: () => destination?.widget ?? Container(),
      transition: Transition.zoom,
    );
  }
}

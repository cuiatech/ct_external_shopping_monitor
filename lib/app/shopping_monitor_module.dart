// ignore_for_file: depend_on_referenced_packages

import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

import 'presentation/home/home_page.dart';

class ShoppingMonitorModule extends Module {
  @override
  final List<Bind> binds = [
    // Controllers
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/home',
      child: (_, args) => const HomePage(),
      transition: TransitionType.noTransition,
    ),
  ];
}

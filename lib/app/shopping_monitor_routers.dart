// ignore_for_file: depend_on_referenced_packages

import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class ShoppingMonitorRouters {
  static goToHome() =>
      Modular.to.navigate('/shopping_monitor${RoutersName.home}');
  static goToCompanyAdd() =>
      Modular.to.navigate('/shopping_monitor${RoutersName.companyAdd}');
}

class RoutersName {
  static String home = "/home";
  static String companyAdd = "/company/add";
}

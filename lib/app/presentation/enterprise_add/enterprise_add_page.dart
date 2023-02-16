// ignore_for_file: depend_on_referenced_packages

import 'package:ct_external_shopping_monitor/app/presentation/widgets/header.dart';
import 'package:ct_external_shopping_monitor/app/shopping_monitor_routers.dart';
import 'package:flutter/material.dart';
import 'package:ct_micro_commons_ds/ct_micro_commons_ds.dart';

class EnterpriseAddPage extends StatelessWidget {
  const EnterpriseAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CuiaAppBar(
        title: "Monitor Compras",
        showStoreButton: false,
        onIndexTap: ShoppingMonitorRouters.goToHome,
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 20, horizontal: size.width * 0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderPage(title: "Nova Empresa"),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xff2196f3),
                  width: 1,
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  //
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: depend_on_referenced_packages

import 'package:ct_external_shopping_monitor/app/presentation/widgets/header.dart';
import 'package:ct_external_shopping_monitor/app/shopping_monitor_routers.dart';
import 'package:flutter/material.dart';
import 'package:ct_micro_commons_ds/ct_micro_commons_ds.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:
          const CuiaAppBar(title: "Monitor Compras", showStoreButton: false),
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 20, horizontal: size.width * 0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderPage(
              title: "Empresas",
              actions: [
                CuiaButtons.outline(
                  "Cadastrar nova empresa",
                  onTap: ShoppingMonitorRouters.goToCompanyAdd,
                  icon: const Icon(
                    Icons.chevron_right,
                    color: Color(0xff2196f3),
                  ),
                ),
              ],
            ),
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
                children: [
                  Image.asset(
                    '/assets/images/Opps.png',
                    package: 'ct_micro_commons_shared',
                    width: 350,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Você não gerencia nenhuma empresa.",
                        style: GoogleFonts.poppins(
                          color: const Color(0xff393d6e),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CuiaButtons.link(
                        "Cadastrar nova empresa",
                        onTap: ShoppingMonitorRouters.goToCompanyAdd,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

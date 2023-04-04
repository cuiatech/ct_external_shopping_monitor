// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:ct_micro_commons_dependencies/ct_micro_commons_dependencies.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({
    super.key,
    required this.title,
    this.actions,
  });

  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: actions != null
              ? actions!
                  .map((e) => Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: e,
                      ))
                  .toList()
              : [],
        ),
      ],
    );
  }
}

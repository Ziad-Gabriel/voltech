import 'package:flutter/material.dart';
import 'package:voltech/shared/main_container/main_container.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: MainContainer(height: 180, width: double.infinity),
    );
  }
}

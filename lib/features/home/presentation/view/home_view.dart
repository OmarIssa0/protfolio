import 'package:flutter/material.dart';
import 'package:my_protfolio/features/home/presentation/view/widgets/adaptive_layout_widgets.dart';
import 'package:my_protfolio/features/home/presentation/view/widgets/home_view_mobile_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const HomeViewMobileLayout(),
        tabletLayout: (context) => const HomeViewMobileLayout(),
        desktopLayout: (context) => const HomeViewMobileLayout(),
      ),
    );
  }
}

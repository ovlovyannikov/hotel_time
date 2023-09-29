import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_time/features/home/widgets/app_drawer.dart';
import 'package:hotel_time/features/home/widgets/app_top_bar.dart';
import 'package:hotel_time/generated/l10n.dart';
import 'package:hotel_time/router/router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AutoTabsRouter(
      routes: const [
        EventsRoute(),
        ChartRoute(),
        SettingsRoute(),
        ShopsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            body: child,
            appBar: const AppTopBar(),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: theme.primaryColor,
              elevation: 0.0,
              selectedItemColor: theme.focusColor,
              unselectedItemColor: theme.hintColor,
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) => _openPage(index, tabsRouter),
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home_outlined),
                  label: S.of(context).bottomNavigationBarEvents,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.chat_bubble_outline_outlined),
                  label: S.of(context).bottomNavigationBarChart,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.room_service_outlined),
                  label: S.of(context).bottomNavigationBarServices,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.shopping_bag_outlined),
                  label: S.of(context).bottomNavigationBarShops,
                ),
              ],
            ),
            drawer: const AppDrawer());
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}

import 'package:delivery_app/app/core/global/global_context.dart';
import 'package:delivery_app/app/core/provider/application_biding.dart';
import 'package:delivery_app/app/core/ui/theme/theme_config.dart';
import 'package:delivery_app/app/pages/auth/register/register_router.dart';
import 'package:delivery_app/app/pages/order/order_completed_page.dart';
import 'package:delivery_app/app/pages/order/order_router.dart';
import 'package:delivery_app/app/pages/products_detail/product_detail_router.dart';
import 'package:delivery_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import '../pages/auth/login/login_router.dart';
import '../pages/home/home_router.dart';

class DeliveryApp extends StatelessWidget {
  final _navKey = GlobalKey<NavigatorState>();
  DeliveryApp({super.key}) {
    GlobalContext.instance.navigatorKey = _navKey;
  }

  @override
  Widget build(BuildContext context) {
    return ApplicationBiding(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DeliveryApp',
        theme: ThemeConfig.theme,
        navigatorKey: _navKey,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/productDetail': (context) => ProductDetailRouter.page,
          '/auth/login': (context) => LoginRouter.page,
          '/auth/register': (context) => RegisterRouter.page,
          '/order': (context) => OrderRouter.page,
          '/order/completed/': (context) => const OrderCompletedPage(),
        },
      ),
    );
  }
}

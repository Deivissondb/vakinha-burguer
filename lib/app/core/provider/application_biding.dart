import 'package:delivery_app/app/repositories/auth/auth_repository.dart';
import 'package:delivery_app/app/repositories/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../rest_client/custom_dio.dart';

class ApplicationBiding extends StatelessWidget {
  final Widget child;

  const ApplicationBiding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => CustomDio(),
        ),
        Provider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(dio: context.read()),
        ),
      ],
      child: child,
    );
  }
}

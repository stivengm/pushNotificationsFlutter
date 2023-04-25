import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_notifications/config/router/app_router.dart';

import 'package:push_notifications/config/theme/app_theme.dart';
import 'package:push_notifications/presentation/blocs/notifications/notifications_bloc.dart';

void main() {
  MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => NotificationsBloc(),
      ),
    ],
    child: const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().getTheme(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_batch_6/day-5/routes.dart';
import 'package:flutter_batch_6/day-6/blocs/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: state,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            routes: routes,
            initialRoute: AppRoutes.home,
          );
        }
      ),
    );
  }
}
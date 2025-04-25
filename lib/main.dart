import 'package:flutter/material.dart';
import 'package:flutter_batch_6/day-6/blocs/theme_cubit.dart';
import 'package:flutter_batch_6/day-7/db/app_db.dart';
import 'package:flutter_batch_6/day-7/pages/product_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void main() {
  setupInjector();
  runApp(const MyApp());
}

void setupInjector() {
  getIt.registerSingleton(AppDatabase());
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
            home: const ProductPage(),
          );
        }
      ),
    );
  }
}
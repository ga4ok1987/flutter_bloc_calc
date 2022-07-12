import 'package:flutter/material.dart';
import 'package:new_calc_bloc/common/Themes/bloc/themes_bloc.dart';

import 'package:new_calc_bloc/pages/history_page.dart';
import 'package:new_calc_bloc/pages/routes/app_router.dart';
import 'package:new_calc_bloc/pages/settings_page.dart';

import 'common/colorz.dart';
import 'pages/home_page.dart';
import 'common/Themes/themes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'pages/routes/app_router.gr.dart';


class MyApp extends StatelessWidget {


  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemesBloc(),
      child: BlocBuilder<ThemesBloc, ThemesState>(
        builder: (BuildContext context, ThemesState themeState) {
          return MaterialApp.router(
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
              theme: themeState.themeData);
        },
      ),
    );
  }
}


import 'dart:async';



import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:new_calc_bloc/common/Themes/themes.dart';

import '../themes.dart';

part 'themes_event.dart';

part 'themes_state.dart';

class ThemesBloc extends Bloc<ThemesEvent, ThemesState> {
  ThemesBloc() :
        super(ThemesState(themeData: Themes.lightTheme)){
    on<ThemesEvent>((event, emit){});
  }



  Stream<ThemesState> mapEventToState(ThemesEvent event) async*{
print(event);
      yield ThemesState(themeData: event.themes);

  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_calc_bloc/common/Themes/bloc/themes_bloc.dart';
import 'package:new_calc_bloc/widgets/substrate_card_widget.dart';

import '../common/Themes/themes.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  String selectedTheme = 'Light Theme';

  List<DropdownMenuItem> getDropdownItems() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String theme in Themes.themesList.keys) {
      var newItem = DropdownMenuItem(
        value: theme,
        enabled: true,
        child: Text(theme),
      );
      dropDownItems.add(newItem);
    }
    return dropDownItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              ElevatedButton(onPressed: (){BlocProvider.of<ThemesBloc>(context).add(ThemesEvent(themes: Themes.darkTheme));}, child: Text('werewr')),
              Text('Chose theme'),
              Container(
                child: DropdownButton<ThemeData>(
                  items: Themes.themesList
                      .map((key, value) {
                        return MapEntry(
                          key,
                          DropdownMenuItem<ThemeData>(
                            value: value,
                            child: Text(key),
                          ),
                        );
                      })
                      .values
                      .toList(),
                  onChanged: (_){BlocProvider.of<ThemesBloc>(context).add(ThemesEvent(themes: Themes.themesList[key]));},

                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

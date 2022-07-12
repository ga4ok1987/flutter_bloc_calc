import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:new_calc_bloc/pages/routes/app_router.dart';

import '../common/colorz.dart';
import '../common/routes.dart';

class TripleDotButtonWidget extends StatelessWidget {
  const TripleDotButtonWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(

      icon: const Icon(Icons.more_vert_outlined,  ),
      iconSize: 35,
      itemBuilder: (BuildContext context) {
        return Routes.routesList.keys.map((String choice) {
          return PopupMenuItem<String>(

            value: choice,
            child: Text(choice),
            onTap: (){context.router.pushNamed(Routes.routesList[choice].toString());},
          );
        }).toList();
      },
    );
  }
}

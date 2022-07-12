import 'package:flutter/material.dart';
import 'package:new_calc_bloc/widgets/substrate_card_widget.dart';
import 'package:new_calc_bloc/common/fonts.dart';
import 'package:new_calc_bloc/widgets/triple_dot_button_widget.dart';

import '../common/styles.dart';

class DisplayWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SubstrateCardWidget(
      cardFlex: 13,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            TripleDotButtonWidget(),
            Spacer(),
            Text(
              style: Styles.displayWidgetExpressionTextStyle,
              'expression',
              textAlign: TextAlign.right,
            ),
            Text(
              style: Styles.displayWidgetResultTextStyle,
              'result',
              textAlign: TextAlign.right,
            ),
          ]),
    );
  }
}

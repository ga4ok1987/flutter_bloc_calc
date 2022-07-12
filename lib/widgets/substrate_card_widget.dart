import 'package:flutter/material.dart';
import 'package:new_calc_bloc/common/colorz.dart';
import 'package:new_calc_bloc/common/dimensions.dart';

class SubstrateCardWidget extends StatelessWidget {
  SubstrateCardWidget({required this.cardFlex, required this.child});

  final Widget child;
  final int cardFlex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: cardFlex,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(BorderRadiuses.medium),
            color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5)),
        margin: Margins.marginAllLittle,
        child: child,
      ),
    );
  }
}

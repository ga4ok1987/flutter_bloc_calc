import 'package:flutter/material.dart';
import 'package:new_calc_bloc/widgets/substrate_card_widget.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SubstrateCardWidget(cardFlex: 5, child: Row(
              children: [

              ],
            ))

          ],
        ),
      )
    );
  }
}


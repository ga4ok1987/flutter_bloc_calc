
import 'package:flutter/material.dart';
import 'package:new_calc_bloc/widgets/triple_dot_button_widget.dart';

import '../widgets/display_widget.dart';
import '../widgets/round_button_widget.dart';
import '../widgets/substrate_card_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [


            DisplayWidget(),
            Expanded(
              flex: 16,
              child: Row(
                children: [
                  SubstrateCardWidget(
                    cardFlex: 9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButtonWidget(
                                text: 'AC',
                                onPressed: () {

                                }),
                            RoundButtonWidget(
                                text: '7',
                                onPressed: () {

                                }),
                            RoundButtonWidget(
                                text: '4',
                                onPressed: () {

                                }),
                            RoundButtonWidget(
                                text: '1',
                                onPressed: () {

                                }),
                            RoundButtonWidget(
                              text: '+/-',
                              onPressed: () {

                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButtonWidget(
                              text: 'C',
                              onPressed: () {

                              },
                            ),
                            RoundButtonWidget(
                                text: '8',
                                onPressed: () {

                                }),
                            RoundButtonWidget(
                                text: '5',
                                onPressed: () {

                                }),
                            RoundButtonWidget(
                                text: '2',
                                onPressed: () {

                                }),
                            RoundButtonWidget(
                                text: '0',
                                onPressed: () {

                                }),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundButtonWidget(text: '%', onPressed: () {}),
                            RoundButtonWidget(
                                text: '9',
                                onPressed: () {


                                }),
                            RoundButtonWidget(
                                text: '6',
                                onPressed: () {


                                }),
                            RoundButtonWidget(
                                text: '3',
                                onPressed: () {


                                }),
                            RoundButtonWidget(
                                text: '  .',
                                onPressed: () {


                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SubstrateCardWidget(
                    cardFlex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RoundButtonWidget(
                            text: '÷',
                            onPressed: () {


                            }),
                        RoundButtonWidget(
                            text: '*',
                            onPressed: () {


                            }),
                        RoundButtonWidget(
                            text: '-',
                            onPressed: () {


                            }),
                        RoundButtonWidget(
                            text: '+',
                            onPressed: () {


                            }),
                        RoundButtonWidget(text: '=', onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

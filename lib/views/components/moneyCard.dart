import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:icons_plus/icons_plus.dart';

class MoneyCard extends StatelessWidget {

  late final String? cardNumber;
  late final double? balance;

  MoneyCard({required this.balance, required,this.cardNumber});
  @override
  Widget build(BuildContext context) {
    String? balanceAvail = balance.toString();
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: CustomCard(
        borderRadius: 20,
        color: Colors.black,
        onTap: () {},
        child: Container(
          height: 200,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                   const Icon(BoxIcons.bxl_mastercard,color: Colors.white,size: 50,),
                    Text('**** $cardNumber',style: kHelperTextStyle,)
                  ],
                ),
                const SizedBox(height: 50,),
                Column(
                  children: [
                    const Text('Balance',style: kHelperTextStyle,),
                    const SizedBox(height: 5,),
                    Text('R $balanceAvail',style: kTitleTextStyle.copyWith(color: Colors.white),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


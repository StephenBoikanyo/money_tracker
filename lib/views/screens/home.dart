import 'package:flutter/material.dart';
import 'package:money_tracker/services/ChartHelper.dart';
import 'package:money_tracker/views/components/components.dart';
import 'package:money_tracker/models/models.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late int tabTextIndexSelected ;

  ChartHelper chartHelper =  ChartHelper(date);

  @override
  void initState() {
   tabTextIndexSelected  =0 ;
    super.initState();
    chartHelper.ChartIncomeTotals(totalTransactions);
  }
  @override
  Widget build(BuildContext context) {
    int currentPage = 0;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RectangularAvatar(
                    avatarWidget: Image.asset('assets/images/avatar.png'),
                  ),
                  RectangularAvatar(avatarWidget: const Icon(AkarIcons.grid)),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    greetResp,
                    style: kHelperTextStyle,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(', ${demoAcc.accountHolder}!', style: kHelperTextStyle),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Last year\'s report 💵',
                style: kTitleTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: chartToggle(tabTextIndexSelected: tabTextIndexSelected,
                  setTabIndexSelected: (index){
                  setState(() {
                    tabTextIndexSelected = index;
                  });
                },),
              ),

              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: tabTextIndexSelected == 0
                      ? IncomeChart(income: income)
                      : ExpensesChart(expenses: expenses)),

              const SizedBox(
                height: 20,
              ),
              const TrendMessage(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentPage: currentPage,
      ),
    );
  }
}

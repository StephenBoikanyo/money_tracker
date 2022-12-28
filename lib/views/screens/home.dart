import 'package:flutter/material.dart';
import 'package:money_tracker/views/components/components.dart';
import 'package:money_tracker/views/screens/screens.dart';
import 'package:spline_chart/spline_chart.dart';
import 'package:get/get.dart';



class HomeScreen extends StatefulWidget {
   static String id = 'HomeScreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding ( padding: const EdgeInsets.all(20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 RectangularAvatar(avatarWidget: Image.asset('assets/images/avatar.png'),),
                 RectangularAvatar(avatarWidget: const Icon(Icons.menu)),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(greetResp, style: kHelperTextStyle,),
                  const SizedBox(width: 5,),
                  const Text(', Stephen!', style : kHelperTextStyle),
                ],
              ),
              const SizedBox(height: 10,),
              Text('Last year\'s report 💵', style: kTitleTextStyle.copyWith(fontWeight: FontWeight.bold),),
              const SizedBox(height: 20,),
              const Center(
                child: chartToggle(),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  //Place holder chart for boiler plate
                  child: SplineChart(
                    values: {0:10,15:30,50:10,44:100,80:50,100:90},
                    verticalLineEnabled: true,
                    verticalLineStrokeWidth: 2.0,
                    width: 450,
                    height: 300,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: ()=> Get.toNamed(TransactionsScreen.id) ,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Text("👏"),
                      ),
                      title: Text('Well done, Stephen!',
                        style: kTitleTextStyle.copyWith( color: Colors.white, fontSize: 18),),
                      subtitle: Text('Your capital has a positive trend',
                        style: kHelperTextStyle.copyWith(color: Colors.grey, fontSize: 14)),
                    ),
                  ),
                ),
              ),
            ],
        ),),
      ),
    );
  }
}



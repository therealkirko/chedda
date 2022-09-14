import 'package:app/src/theme/index.dart';
import 'package:app/src/widgets/children.dart';
import 'package:app/src/widgets/summary.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * .3,
                color: mainColor,
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.menu_outlined,
                        color: Colors.white,
                        size: 28,
                      )
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Welcome Andrew',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Money Wise, Be Wise',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white60,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: size.height * .2),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 55,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SummaryWidget(title: 'Money Dispersed', amount: '4,000'),
                      SummaryWidget(title: 'Asset Value', amount: '6,000'),
                      SummaryWidget(title: 'Liability Value', amount: '4,000')
                    ],
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 15, 16, 10),
            child: ChildrenWidget(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 2, 16,10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Chores & Responsibilities',
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Container(
                        width: size.width * .2,
                        height: size.height * .03,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: textColor)
                        ),
                        child: const Center(
                          child: Text(
                            'Samples',
                            style: TextStyle(
                              color: textColor
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Card(
                          color: Colors.red,
                        ),
                        Card(
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Expanded(
          //   child: Container(
          //     color: Colors.blue,
          //   ),
          // ),
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:my_app/modules/auth/widgets/data_frame.dart';
import 'package:my_app/modules/auth/widgets/device_button.dart';
import 'package:my_app/themes/app_colors.dart';
import 'package:my_app/themes/spacing.dart';
import 'package:my_app/themes/text_styles.dart';

import '../widgets/data_graph.dart';
import '../widgets/weather_frame.dart';

class Station1 extends StatelessWidget {
  const Station1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text('Station 1'),
      ),
      body: Stack(
              children: [
                    _buildBackGround(),
                    SingleChildScrollView(
                      child: 
                      Column(
                        children: [
                          const WeatherFrame(
                            icon: Icons.sunny, 
                            title: '24 C',
                            subTitle: 'Temperature',
                            date:'26-04-2023'),
                          Column(
                            children: [
                              Spacing.h8,
                              Container(
                                width: double.maxFinite,
                                padding: const EdgeInsets.only(left: 32, right: 32),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Devices', style: TextStyles.t20M.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                                    TextButton(
                                      onPressed: (){}, 
                                      child: Text('See all', style: TextStyles.t16R.copyWith(color: Colors.blue)))
                                  ],
                                ),
                              ),     
                              Row(
                                children: [
                                  Spacing.v32,
                                  Column(
                                    children: [
                                      DeviceButton(
                                        onPressed: (){},
                                        color: Color.fromARGB(255, 253, 198, 202),
                                        icon: Icons.camera),
                                      Spacing.h8,
                                      const Text('Camera')
                                    ],
                                  ),
                                  Spacing.v16,
                                  Column(
                                    children: [
                                      DeviceButton(
                                        onPressed: (){}, 
                                        icon: Icons.monitor_heart, 
                                        color: Color.fromARGB(255, 178, 240, 253)),
                                      Spacing.h8,
                                      const Text('HR - SpO2')
                                    ],
                                  ),
                                  Spacing.v16,
                                  Column(
                                    children: [
                                      DeviceButton(
                                        onPressed: (){}, 
                                        icon: Icons.sensors, 
                                        color: Color.fromRGBO(198, 253, 214, 1)),
                                      Spacing.h8,
                                      const Text('Acc')
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Spacing.h8,
                          Column(
                            children:[
                              Container(
                                width: double.maxFinite,
                                padding: const EdgeInsets.only(left:32, right:32),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Recently',style: TextStyles.t20M.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                                    TextButton(
                                      onPressed: (){}, 
                                      child: Text('See all',style: TextStyles.t16R.copyWith(color: Colors.blue)))
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left:32),
                                    child: Text('Acceleration',style: TextStyles.t16R, textAlign: TextAlign.start,),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: (
                                      Row(
                                        children: const [
                                          DataFrame(
                                            icon: Icons.sensors, 
                                            title: '1.0', 
                                            subTitle: 'Acceleration X',
                                            date: '26-04-2023'),
                                          DataFrame(
                                            icon: Icons.sensors, 
                                            title: '1.0', 
                                            subTitle: 'Acceleration Y',
                                            date: '26-04-2023'),
                                          DataFrame(
                                            icon: Icons.sensors, 
                                            title: '1.0', 
                                            subTitle: 'Acceleration Z',
                                            date: '26-04-2023'),
                                          Spacing.v32  
                                        ],
                                      )
                                    ), 
                                  )
                                ],
                              ),
                              Spacing.h16,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left:32),
                                    child: Text('Heartrate - Oximeter',style: TextStyles.t16R, textAlign: TextAlign.start,),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: (
                                      Row(
                                        children: const [
                                          DataFrame(
                                            icon: Icons.monitor_heart, 
                                            title: '80', 
                                            subTitle: 'Heartrate',
                                            date: '26-04-2023'),
                                          DataFrame(
                                            icon: Icons.water_drop, 
                                            title: '97%', 
                                            subTitle: 'SpO2',
                                            date: '26-04-2023'),
                                          Spacing.v32 
                                        ],
                                      )
                                    ), 
                                  )
                                ],
                              ),
                            ]
                          ),
                          Spacing.h8,
                          Column(
                            children:[
                              Container(
                                width: double.maxFinite,
                                padding: const EdgeInsets.only(left:32, right:32),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Graph',style: TextStyles.t20M.copyWith(fontWeight: FontWeight.bold), textAlign: TextAlign.left,),
                                    TextButton(
                                      onPressed: (){}, 
                                      child: Text('See all',style: TextStyles.t16R.copyWith(color: Colors.blue)))
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left:32),
                                    child: Text('Acceleration',style: TextStyles.t16R, textAlign: TextAlign.start,),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: (
                                      Row(
                                        children: const [
                                          DataGraphs(),
                                          DataGraphs(),
                                          DataGraphs(),
                                          Spacing.v32  
                                        ],
                                      )
                                    ), 
                                  )
                                ],
                              ),
                              Spacing.h16,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left:32),
                                    child: Text('Heartrate - Oximeter',style: TextStyles.t16R, textAlign: TextAlign.start,),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: (
                                      Row(
                                        children: const [
                                          DataGraphs(),
                                          DataGraphs(),
                                          Spacing.v32 
                                        ],
                                      )
                                    ), 
                                  ),
                                  Spacing.h32
                                ],
                              ),
                            ]
                          )
                        ],
                      )
                    ),
                  ],
                )
    );
  }

  Widget _buildBackGround(){
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white
        )
    );
  }
}
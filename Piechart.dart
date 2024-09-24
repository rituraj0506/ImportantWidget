piedata.dart
  
// dependencies       fl_chart: ^0.69.0 
                      pie_chart: ^5.4.0

                        
import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'Blue', percent: 129, color: const Color(0xFF007DBB)),
    Data(name: 'lightpink', percent: 63, color: const Color(0xFFFFA8A7)),
    Data(name: 'Orange', percent: 19, color: const Color(0xFFFF914D)),
    Data(name: 'violet', percent: 24, color: const Color(0xFF9C90FF)),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({required this.name, required this.percent, required this.color});
}


admindashboard.dart
  
class _AdmindashboardState extends State<Admindashboard> {
  
  List<PieChartSectionData> getSections() => PieData.data
      .asMap()
      .map<int, PieChartSectionData>((index, data) {
        final value = PieChartSectionData(
            radius: 10,// set radius according to use
          color: data.color,
          value: data.percent,
          title: '${data.percent}',
          titleStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
          ),
        );

        return MapEntry(index, value);
      })
      .values
      .toList();
  
  @override
  Widget build(BuildContext context) {
             Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 8.0),
                                                        child: SizedBox(
                                                          width: 200,
                                                          height: 180,
                                                          child: Stack(
                                                            alignment: Alignment
                                                                .center, // Center the text
                                                            children: [
                                                              PieChart(
                                                                PieChartData(
                                                                  sections:
                                                                      getSections(),
                                                                  centerSpaceRadius:
                                                                      52,
                                                                  startDegreeOffset:
                                                        90, // Rotate the chart to position the colors as needed
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: const [
                                                                  Text(
                                                                    'Total',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black26,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                      height:
                                                                          4),
                                                                  Text(
                                                                    '235',
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          18,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),

    


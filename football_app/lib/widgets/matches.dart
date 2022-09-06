import 'package:flutter/material.dart';

class Matches extends StatelessWidget {
  late final String homeName;
  late final String awayName;
  late final String minute;
  late final String awayScore;
  late final String homeScore;
  late final String homeLogo;
  late final String awayLogo;
  Matches(
      {required this.awayLogo,
      required this.awayName,
      required this.awayScore,
      required this.homeLogo,
      required this.homeScore,
      required this.homeName,
      required this.minute});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 375,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Color(0xFF1D1E33),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Spacer(),
                    Column(
                      children: [
                        Container(
                            width: 100,
                            child: Column(
                              children: [
                                Text(
                                  'Home',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: Image.network(
                                    homeLogo,
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  homeName,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Text(
                          '${homeScore} - ${awayScore}',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        Text(
                          minute,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Away',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              width: 100,
                              child: Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    child: Image.network(
                                      awayLogo,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    awayName,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ))
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

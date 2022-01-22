import 'package:drinkwater/constant.dart';
import 'package:flutter/material.dart';

class MyIntroConclusion extends StatelessWidget {
  const MyIntroConclusion({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 30, bottom: 60),
          color: kMainColor,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(
                  image: AssetImage('assets/images/logoSplashScreen.png'),
                  height: 89,
                  width: 145,
                ),
                const Text(
                  'Pronto! já calculamos tudo',
                  style: kHeadline5White,
                ),
                const Image(
                  image: AssetImage('assets/images/metaCalculada.png'),
                  height: 112,
                  width: 99,
                ),
                const Text(
                  'Sua meta de ingestão de água diaria é',
                  style: kHeadline6White,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '2000',
                      style: kHeadline1White,
                    ),
                    Text('ml', style: kCaptionWhite),
                  ],
                ),
                SizedBox(
                  height: 45,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'isso é equivalente a:',
                        style: kSubtitle1White,
                      ),
                      SizedBox(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              '10 copos de 200ml',
                              style: kHeadline6White,
                            ),
                            Image(
                              image: AssetImage('assets/images/copoWhite.png'),
                              height: 20,
                              width: 18,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(280, 70),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(horizontal: 60),
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(kMainColor),
                    backgroundColor: MaterialStateProperty.all<Color>(kWhite),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'continuar',
                        style: kButton,
                      ),
                      Icon(
                        Icons.arrow_right_alt_outlined,
                        size: 40,
                        color: kMainColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
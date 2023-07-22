import 'package:app_restaurant_flutter/screen/HomeScreen.dart';
import 'package:app_restaurant_flutter/value/ValueColor.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool firstOpen = true;

  _onIntroEnd(context) async {
    Navigator.of(context).pushReplacementNamed('/LoginScreen');
  }

  _buildFullScreenImage() {
    return Container(
      margin: const EdgeInsets.all(22),
      child: Image.asset(
        "images/mobile-application-call-taxi-vector-illustration_82574-3185.png",
        fit: BoxFit.contain,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.topCenter,
      ),
    );
  }

  _buildImage(String assetName, [double width = 350]) {
    return Image.asset(
      "images/$assetName",
      width: width,
    );
  }

  @override
  void initState() {
    super.initState();
      if (!firstOpen) {
        _onIntroEnd(context);
      }
    }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19.0),
      descriptionPadding: EdgeInsets.all(16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return firstOpen
        ? Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: 100),
                child: IntroductionScreen(
                  globalBackgroundColor: Colors.white,
                  pages: [

                    PageViewModel(
                      title: 'يلا نعرف اقرب مطعم',
                      body:
                          'يمكن عبر تطبيقنا معرفة عنوان المطعم',
                      image: _buildImage(
                          "Directions_pana.png"),
                      decoration: pageDecoration.copyWith(
                        titleTextStyle:TextStyle(color: Color(ValueColor.ARANG), fontSize: 25,fontFamily: 'CAREEM') ,

                        bodyTextStyle:
                        TextStyle(color: Color(ValueColor.CERULEAN), fontSize: 25,fontFamily: 'CAREEM'),
                      ),
                    ),
                    PageViewModel(
                      title: 'يلا نعرف الذ مطعم',
                      body:
                          'يمكن عبر تطبيقنا معرفة تجربة الزبائن',
                      image: _buildImage('Eating_together_amico.png'),
                      decoration: pageDecoration.copyWith(
                        titleTextStyle:TextStyle(color: Color(ValueColor.ARANG), fontSize: 25,fontFamily: 'CAREEM') ,

                        bodyTextStyle:
                        TextStyle(color: Color(ValueColor.CERULEAN), fontSize: 25,fontFamily: 'CAREEM'),
                      ),
                    ),
                    PageViewModel(
                      title: 'وبدك تعرف تقيم المطعم',
                      body:
                          'يمكن عبر تطبيقنا معرفة تقيم المطعم',
                      image: _buildImage(
                          "Choose_pana.png"),
                      decoration: pageDecoration.copyWith(
                        titleTextStyle:TextStyle(color: Color(ValueColor.ARANG), fontSize: 25,fontFamily: 'CAREEM') ,
                        bodyTextStyle:
                        TextStyle(color: Color(ValueColor.CERULEAN), fontSize: 25,fontFamily: 'CAREEM'),
                      ),
                    ),
                  ],
                  onDone: () => _onIntroEnd(context),
                  onSkip: () =>
                      _onIntroEnd(context), // You can override onSkip callback
                  showSkipButton: true,
                  skipFlex: 0,
                  nextFlex: 0,
                  skip: Text(
                     "تخطي",
                    style: TextStyle(color: Colors.white,fontFamily: 'CAREEM'),
                  ),
                  next: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                  done: Text( "يلا",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white,fontFamily: 'CAREEM')),
                  controlsMargin: const EdgeInsets.all(16),
                  controlsPadding: const EdgeInsets.all(4),
                  dotsDecorator: const DotsDecorator(
                    size: Size(10.0, 10.0),
                    color: Colors.white,
                    activeSize: Size(22.0, 10.0),
                    activeColor: Colors.white,
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                  dotsContainerDecorator: const ShapeDecoration(
                    color: Color(0xffE57C23),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
              ),
            ),
          )
        : HomeScreen();
  }
}

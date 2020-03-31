import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_onboarding_ui/utilities/widgets/onboarding_screen_widgets/screen_data_widgets.dart';
import 'package:flutter_onboarding_ui/utilities/widgets/onboarding_screen_widgets/page_controller_and_pageView_widget.dart';
import 'package:flutter_onboarding_ui/utilities/widgets/onboarding_screen_widgets/call_to_action_widget.dart';
import 'package:flutter_onboarding_ui/utilities/widgets/onboarding_screen_widgets/skip_button.dart';

/// Making the class that will take all the components to build the onboarding screen
class NewOnboardingScreen extends StatefulWidget {

  /// The Num of Pages for the screens
  final int numOfPages;

  /// The page viewport is displaying currently
  int currentPage = 0;

  /// Class Constructor
  NewOnboardingScreen({Key key, this.numOfPages}) : super(key: key);

  @override
  _NewOnboardingScreenState createState() => _NewOnboardingScreenState();
}

class _NewOnboardingScreenState extends State<NewOnboardingScreen> {
  int numOfPages = 3;
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
              ],
            )
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: skipButton(),
                ),
                Container(
                  height: 600,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        currentPage = page;
                      });
                    },
                    children: screenData(numOfPages),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: pageIndicator(numOfPages, currentPage),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: currentPage == numOfPages - 1 ?
      callToAction()
      : Text(''),
    );
  }
}

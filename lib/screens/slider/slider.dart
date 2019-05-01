import 'package:flutter/material.dart';
import 'package:tovuti_halmashauri/screens/dashboard/dashboard.dart';
import 'package:tovuti_halmashauri/screens/slider/slider_indicator.dart';
import 'package:tovuti_halmashauri/models/slider_model.dart';

class PageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7fbff),
      body: PageSliderBody(),
    );
  }
}

class PageSliderBody extends StatefulWidget {
  PageSliderBody({Key key}) : super(key: key);

  @override
  PageSliderBodyState createState() => PageSliderBodyState();
}

class PageSliderBodyState extends State<PageSliderBody> {
  PageController _pageController;
  CrossFadeState _bottomState = CrossFadeState.showFirst;
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(_pageListener);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.removeListener(_pageListener);
    _pageController.dispose();
  }

  void _pageListener() {
    if (_pageController.hasClients) {
      double page = _pageController.page ?? _pageController.initialPage;
      setState(() {
        if (page >= 5.5) {
          _bottomState = CrossFadeState.showSecond;
        } else {
          _bottomState = CrossFadeState.showFirst;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        PageView.builder(
          controller: _pageController,
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            return Material(
              color: Color(pages[index].screenColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 80.0),
                  Container(
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFf7fbff),
                        backgroundImage: AssetImage(pages[index].assetPath),
                        radius: 100.0,
                      ),
                      width: 200.0,
                      height: 200.0,
                      padding: const EdgeInsets.all(8.0),
                      decoration: new BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        shape: BoxShape.circle,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 60.0, right: 40.0, bottom: 10.0),
                    child: Text(
                      pages[index].personName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(pages[index].textColor),
                          fontWeight: FontWeight.w200,
                          fontSize: 30.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0.0, left: 60.0, right: 40.0, bottom: 10.0),
                    child: Text(
                      pages[index].personTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(pages[index].textColor),
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 60.0, right: 40.0, bottom: 10.0),
                    child: Text("\" "+
                      pages[index].personQuote+" \"",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(pages[index].textColor),
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 130.0,
            alignment: Alignment.center,
            child: AnimatedCrossFade(
              crossFadeState: _bottomState,
              duration: Duration(milliseconds: 300),
              firstChild: PageIndicators(
                pageController: _pageController,
              ),
              secondChild: FlatButton(
                color: Color(0xFF20bf6b),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => new DashboardScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 18.0, horizontal: 98.0),
                  child: Text(
                    'Karibu',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PageIndicators extends StatelessWidget {
  final PageController pageController;

  const PageIndicators({Key key, this.pageController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Align(
            alignment: Alignment.center,
            child: PageViewIndicator(
              controller: pageController,
              pageCount: 7,
              color: Colors.white,
            )),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {
              pageController.animateToPage(6,
                  curve: Curves.decelerate,
                  duration: Duration(milliseconds: 500));
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 44.0),
              child: Text(
                'Mwisho',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

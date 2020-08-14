import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduteproject/Screens/LoginScreen.dart';




class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 32.0 : 15.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFCFCFCF) : Color(0xFFFBD14B),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFF6A60A9),
                Color(0xFF6A60A9),
                Color(0xFF6A60A9),
                Color(0xFF6A60A9),

              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: (){

                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login_Screen()));

                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(

                        width: MediaQuery.of(context).size.width*0.2,
                        decoration: BoxDecoration(
                          color: Color(0xFFCFCFCF),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'تخطي',
                            style: TextStyle(
                              color: Color(0xFF6A60A9),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                            ),textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height:MediaQuery.of(context).size.height*0.69,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'images/undrawmedicine.png',
                                ),
                                height: MediaQuery.of(context).size.height*0.3,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'التطعيمات',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.0,
                                height: 1.5,
                              ),textAlign: TextAlign.right,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              ' يمكنك متبابعة ومعرفة مواعيد اخذ ابنك للتطعيمات للحفاظ علي صحته ومع اقتراب موعد التطعيم سنرسل لك اشعار للتذكره حتي لا تنسي',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                height: 1.2,
                              ),textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'images/undrawfatherhood.png',
                                ),
                                height: MediaQuery.of(context).size.height*0.3,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'التغذية',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26.0,
                                height: 1.5,
                              ),textAlign: TextAlign.right,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              ' نوفر لك بعض النصائح لكي نجعل طفلك ينمو بشكل افضل,وايضا بعض طرق التغذيه السليمه لعلاج مرض السمنه ومرض النحافه',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                height: 1.2,
                              ),textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(

                                  'images/undrawbaby.png',
                                ),
                                height: MediaQuery.of(context).size.height*0.3,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Text(
                              'الحضانات',
                              style: TextStyle(
                                color: Colors.white,

                                fontSize: 26.0,
                                height: 1.5,
                              ),textAlign: TextAlign.right,
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'سرعة الحصول علي مستشفي بها حضانه هو اهم اولوياتنا لإنقاذ حياة الطفل لذلك وفرنا لك طريقه سرعيه للحصول علي اقرب مستشفي بها حضانات متاحه',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                height: 1.2,
                              ),textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: FlatButton(
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'التالي',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                    ),textAlign: TextAlign.right,
                                  ),
                                  SizedBox(width: 10.0),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 80.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login_Screen())),
                child: Center(
                  child: Text(
                    'ابدأ',
                    style: TextStyle(
                      color: Color(0xFF5B16D0),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.right,
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}

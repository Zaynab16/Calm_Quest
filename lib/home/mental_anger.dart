
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import 'mental_all.dart';
import 'mental_anger_management.dart';
import 'mental_calming_techniques.dart';
import 'mental_home.dart';
import 'mental_journal.dart';
import 'mental_soothing_sounds.dart';
import 'newchatbot.dart';


class AngerPage extends StatefulWidget {
  @override
  _AngerPageState createState() => _AngerPageState();
}
class _AngerPageState extends State<AngerPage> {

  @override
  Widget build(BuildContext context) {
    DateTime currentTime = DateTime.now();

    // Check if it's evening (past 6 p.m.)
    bool isEvening = currentTime.hour < 18;
    // Define the colors
    Color NewColor = isEvening ? Color(0xFF181939) : Color(0xFF020A48);
    Color DarkBlue = isEvening ? Color(0xFF3D3463) : Color(0xFF163EB9);
    Color DarkBlue1 = isEvening ? Color(0xFF544594) : Color(0xFF163EB9);
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Anger'),
        backgroundColor: DarkBlue1,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AngerManagementVideo()),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(left:8.0,right:8.0, bottom:8.0, top:25.0),
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.black45,
                              image: DecorationImage(
                                image: AssetImage('assets/images/angeranger1.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.purple.shade200.withOpacity(0.9),
                                  BlendMode.dstATop,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left:55.0,right:25.0, bottom:25.0, top:70.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text(
                                      'Anger Management',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Popins'
                                      ),
                                    ),
                                    Text(
                                      'Techniques',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Popins'
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CalmingTechniquesPage()),
                          );},
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color:Colors.black45,
                              image: DecorationImage(
                                image: AssetImage('assets/images/calmcalm1.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.yellow.shade200.withOpacity(1.0),
                                  BlendMode.dstATop,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left:(MediaQuery.of(context).size.width)/8,right:25.0, bottom:25.0, top:35.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Calming Techniques',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Popins'
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SoothingSoundsPage()),
                          );},
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color:Colors.black45,
                              image: DecorationImage(
                                image: AssetImage('assets/images/soundsound1.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.white.withOpacity(1.0),
                                  BlendMode.dstATop,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Soothing Sounds',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Popins'
                                  ),
                                ),
                              ),
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JournalPage()),
                          );},
                          child: Container(
                            margin: EdgeInsets.all(8.0),
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color:Colors.black45,
                              image: DecorationImage(
                                image: AssetImage('assets/images/thoughtthought1.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.purple.shade200.withOpacity(0.9),
                                  BlendMode.dstATop,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Write Your Thoughts',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: DarkBlue1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WallpaperPage()),
                      );
                    },
                    child: Icon(Icons.home, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AllList()),
                      );
                    },
                   child: Icon(FontAwesomeIcons.thLarge, color: Colors.white),

                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatbotScreen()),
                      );
                    },
                    child: Icon(Icons.question_answer_rounded,
                        color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => JournalPage()),
                      );
                    },
                    child: Icon(FontAwesomeIcons.journalWhills, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter_tts/flutter_tts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:german_seekho/data/a1_content.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'German Seekho',
      home: SplashScreen(),
    );
  }
}

// ===================== SPLASH SCREEN =====================
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    // Animation setup
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    _controller.forward();

    // 3 second baad Home Screen pe jao
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1B4332), // Dark Green
              Color(0xFF2D6A4F), // Medium Green
              Color(0xFF1B4332), // Dark Green
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 20,
                          spreadRadius: 5,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        '🇩🇪',
                        style: TextStyle(fontSize: 60),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  // App Name
                  Text(
                    'German Seekho',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),

                  SizedBox(height: 10),

                  // Urdu tagline
                  Text(
                    'جرمن سیکھو — آسان طریقے سے',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                    ),
                  ),

                  SizedBox(height: 8),

                  // English tagline
                  Text(
                    'Learn German the Easy Way',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white54,
                      letterSpacing: 1,
                    ),
                  ),

                  SizedBox(height: 60),

                  // Loading indicator
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: CircularProgressIndicator(
                      color: Color(0xFFD4AF37), // Gold color
                      strokeWidth: 3,
                    ),
                  ),

                  SizedBox(height: 16),

                  Text(
                    'Loading...',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ===================== HOME SCREEN =====================
class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> levels = [
    {
      'level': 'A1',
      'title': 'Bilkul Shuru',
      'urdu': 'بالکل شروع',
      'english': 'Absolute Beginner',
      'color': Color(0xFF52B788),
      'icon': '🌱',
      'lessons': 20,
    },
    {
      'level': 'A2',
      'title': 'Shuru Kiya',
      'urdu': 'شروع کیا',
      'english': 'Elementary',
      'color': Color(0xFF40916C),
      'icon': '🌿',
      'lessons': 25,
    },
    {
      'level': 'B1',
      'title': 'Darmiyani',
      'urdu': 'درمیانی',
      'english': 'Intermediate',
      'color': Color(0xFF2D6A4F),
      'icon': '🌳',
      'lessons': 30,
    },
    {
      'level': 'B2',
      'title': 'Upar Darmiyani',
      'urdu': 'اوپر درمیانی',
      'english': 'Upper Intermediate',
      'color': Color(0xFF1B4332),
      'icon': '🏔️',
      'lessons': 35,
    },
    {
      'level': 'C1',
      'title': 'Mahir',
      'urdu': 'ماہر',
      'english': 'Advanced',
      'color': Color(0xFF081C15),
      'icon': '⭐',
      'lessons': 40,
    },
    {
      'level': 'C2',
      'title': 'Ustaad',
      'urdu': 'استاد',
      'english': 'Mastery',
      'color': Color(0xFFD4AF37),
      'icon': '👑',
      'lessons': 45,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1F17),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'German Seekho 🇩🇪',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'جرمن سیکھو',
                        style: TextStyle(
                          color: Color(0xFFD4AF37),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xFFD4AF37),
                    radius: 24,
                    child: Text(
                      'H',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Progress Banner
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF2D6A4F), Color(0xFFD4AF37)],
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Aaj ka Goal! 🎯',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'آج کا ہدف',
                          style: TextStyle(color: Colors.white70, fontSize: 13),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '1 Lesson complete karo!',
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                    Text('🏆', style: TextStyle(fontSize: 50)),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // Levels Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'Apna Level Chuno',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'اپنا لیول چنو',
                    style: TextStyle(
                      color: Color(0xFFD4AF37),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            // Levels List
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemCount: levels.length,
                itemBuilder: (context, index) {
                  final level = levels[index];
                  return GestureDetector(
                    onTap: () {
  if (level['level'] == 'A1') {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => A1TopicsScreen()),
    );
  } else {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => LevelScreen(level: level),
      ),
    );
  }
},
                    child: Container(
                      margin: EdgeInsets.only(bottom: 12),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color(0xFF1B4332),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: level['color'],
                          width: 1.5,
                        ),
                      ),
                      child: Row(
                        children: [
                          // Level Badge
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: level['color'],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                level['level'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 16),

                          // Level Info
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      level['icon'],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      level['title'],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 2),
                                Text(
                                  level['urdu'],
                                  style: TextStyle(
                                    color: Color(0xFFD4AF37),
                                    fontSize: 13,
                                  ),
                                ),
                                Text(
                                  level['english'],
                                  style: TextStyle(
                                    color: Colors.white54,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  '${level['lessons']} Lessons',
                                  style: TextStyle(
                                    color: Colors.white38,
                                    fontSize: 11,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Icon(
                            Icons.arrow_forward_ios,
                            color: level['color'],
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // Bottom Nav
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1B4332),
        selectedItemColor: Color(0xFFD4AF37),
        unselectedItemColor: Colors.white38,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'AI Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// ===================== LEVEL SCREEN =====================
class LevelScreen extends StatelessWidget {
  final Map<String, dynamic> level;
  const LevelScreen({required this.level});

  final List<Map<String, dynamic>> a1Lessons = const [
    {
      'german': 'Guten Morgen!',
      'english': 'Good Morning!',
      'urdu': 'صبح بخیر!',
      'emoji': '🌅',
    },
    {
      'german': 'Guten Tag!',
      'english': 'Good Day!',
      'urdu': 'آداب!',
      'emoji': '☀️',
    },
    {
      'german': 'Guten Abend!',
      'english': 'Good Evening!',
      'urdu': 'شام بخیر!',
      'emoji': '🌆',
    },
    {
      'german': 'Gute Nacht!',
      'english': 'Good Night!',
      'urdu': 'شب بخیر!',
      'emoji': '🌙',
    },
    {
      'german': 'Wie heißt du?',
      'english': 'What is your name?',
      'urdu': 'تمہارا نام کیا ہے؟',
      'emoji': '👤',
    },
    {
      'german': 'Ich heiße Hamza.',
      'english': 'My name is Hamza.',
      'urdu': 'میرا نام حمزہ ہے۔',
      'emoji': '😊',
    },
    {
      'german': 'Wie geht es dir?',
      'english': 'How are you?',
      'urdu': 'آپ کیسے ہیں؟',
      'emoji': '🤝',
    },
    {
      'german': 'Mir geht es gut!',
      'english': 'I am fine!',
      'urdu': 'میں ٹھیک ہوں!',
      'emoji': '😄',
    },
    {
      'german': 'Danke!',
      'english': 'Thank you!',
      'urdu': 'شکریہ!',
      'emoji': '🙏',
    },
    {
      'german': 'Bitte!',
      'english': 'Please / You are welcome!',
      'urdu': 'براہ کرم / خوش آمدید!',
      'emoji': '💝',
    },
    {
      'german': 'Entschuldigung!',
      'english': 'Excuse me / Sorry!',
      'urdu': 'معاف کیجیے!',
      'emoji': '🙇',
    },
    {
      'german': 'Ja',
      'english': 'Yes',
      'urdu': 'ہاں',
      'emoji': '✅',
    },
    {
      'german': 'Nein',
      'english': 'No',
      'urdu': 'نہیں',
      'emoji': '❌',
    },
    {
      'german': 'Auf Wiedersehen!',
      'english': 'Goodbye!',
      'urdu': 'اللہ حافظ!',
      'emoji': '👋',
    },
    {
      'german': 'Tschüss!',
      'english': 'Bye!',
      'urdu': 'خدا حافظ!',
      'emoji': '😊',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1F17),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B4332),
        title: Text(
          '${level['level']} — ${level['title']}',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                '${a1Lessons.length} Lessons',
                style: TextStyle(color: Color(0xFFD4AF37), fontSize: 14),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: a1Lessons.length,
        itemBuilder: (context, index) {
          final lesson = a1Lessons[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => LessonDetailScreen(
                  lesson: lesson,
                  index: index + 1,
                  total: a1Lessons.length,
                ),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 12),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF1B4332),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: level['color'], width: 1),
              ),
              child: Row(
                children: [
                  // Number
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: level['color'],
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  // Emoji
                  Text(lesson['emoji'], style: TextStyle(fontSize: 28)),
                  SizedBox(width: 12),
                  // Words
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          lesson['german'],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          lesson['english'],
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          lesson['urdu'],
                          style: TextStyle(
                            color: Color(0xFFD4AF37),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: level['color'],
                    size: 16,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ===================== LESSON DETAIL SCREEN =====================
class LessonDetailScreen extends StatefulWidget {
  final Map<String, dynamic> lesson;
  final int index;
  final int total;

  const LessonDetailScreen({
    required this.lesson,
    required this.index,
    required this.total,
  });

  @override
  State<LessonDetailScreen> createState() => _LessonDetailScreenState();
}

class _LessonDetailScreenState extends State<LessonDetailScreen> {
  final FlutterTts _tts = FlutterTts();
  bool isSpeaking = false;

  @override
  void initState() {
    super.initState();
    _setupTts();
  }

  void _setupTts() async {
    await _tts.setLanguage('de-DE'); // German language
    await _tts.setSpeechRate(0.5);   // slow speed - seekhne ke liye
    await _tts.setVolume(1.0);
    await _tts.setPitch(1.0);

    _tts.setCompletionHandler(() {
      setState(() => isSpeaking = false);
    });
  }

  void _speak() async {
    if (isSpeaking) {
      await _tts.stop();
      setState(() => isSpeaking = false);
    } else {
      setState(() => isSpeaking = true);
      await _tts.speak(widget.lesson['german']);
    }
  }

  @override
  void dispose() {
    _tts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1F17),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B4332),
        title: Text(
          'Lesson ${widget.index} / ${widget.total}',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Emoji
            Text(widget.lesson['emoji'], style: TextStyle(fontSize: 80)),
            SizedBox(height: 30),

            // Main Card
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Color(0xFF1B4332),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFD4AF37), width: 1.5),
              ),
              child: Column(
                children: [
                  // German
                  Row(
                    children: [
                      Text('🇩🇪', style: TextStyle(fontSize: 24)),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.lesson['german'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(color: Colors.white12, height: 24),

                  // English
                  Row(
                    children: [
                      Text('🇬🇧', style: TextStyle(fontSize: 24)),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.lesson['english'],
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(color: Colors.white12, height: 24),

                  // Urdu
                  Row(
                    children: [
                      Text('🇵🇰', style: TextStyle(fontSize: 24)),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          widget.lesson['urdu'],
                          style: TextStyle(
                            color: Color(0xFFD4AF37),
                            fontSize: 20,
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Listen + Speak Buttons
            Row(
              children: [
                // Listen Button
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _speak,
                    icon: Icon(
                      isSpeaking ? Icons.stop : Icons.volume_up,
                      color: Colors.white,
                    ),
                    label: Text(
                      isSpeaking ? 'Ruko... ⏹️' : 'سنو / Listen 🔊',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSpeaking
                          ? Colors.red
                          : Color(0xFF2D6A4F),
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                // Speak Button (next step mein)
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.mic, color: Colors.white),
                    label: Text(
                      'بولو / Speak 🎤',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFD4AF37),
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            // Next Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1B4332),
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Color(0xFFD4AF37)),
                  ),
                ),
                child: Text(
                  'اگلا سبق / Next Lesson ➡️',
                  style: TextStyle(color: Color(0xFFD4AF37), fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ===================== A1 TOPICS SCREEN =====================
class A1TopicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1F17),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B4332),
        title: Text('A1 — Topics', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: a1Topics.length,
        itemBuilder: (context, index) {
          final topic = a1Topics[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => TopicDetailScreen(topic: topic),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(bottom: 12),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF1B4332),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Color(0xFFD4AF37), width: 1),
              ),
              child: Row(
                children: [
                  Text(topic.emoji, style: TextStyle(fontSize: 36)),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(topic.title,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                        Text(topic.urduTitle,
                            style: TextStyle(color: Color(0xFFD4AF37), fontSize: 13)),
                        Text('${topic.words.length} words  •  ${topic.sentences.length} sentences',
                            style: TextStyle(color: Colors.white38, fontSize: 11)),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Color(0xFFD4AF37), size: 16),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ===================== TOPIC DETAIL SCREEN =====================
class TopicDetailScreen extends StatefulWidget {
  final A1Topic topic;
  const TopicDetailScreen({required this.topic});

  @override
  State<TopicDetailScreen> createState() => _TopicDetailScreenState();
}

class _TopicDetailScreenState extends State<TopicDetailScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final FlutterTts _tts = FlutterTts();
  bool isSpeaking = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _setupTts();
  }

  void _setupTts() async {
    await _tts.setLanguage('de-DE');
    await _tts.setSpeechRate(0.5);
    await _tts.setVolume(1.0);
    _tts.setCompletionHandler(() => setState(() => isSpeaking = false));
  }

  void _speak(String text) async {
    if (isSpeaking) {
      await _tts.stop();
      setState(() => isSpeaking = false);
    } else {
      setState(() => isSpeaking = true);
      await _tts.speak(text);
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _tts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0D1F17),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B4332),
        title: Text('${widget.topic.emoji} ${widget.topic.title}',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        iconTheme: IconThemeData(color: Colors.white),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Color(0xFFD4AF37),
          labelColor: Color(0xFFD4AF37),
          unselectedLabelColor: Colors.white54,
          tabs: [
            Tab(text: '📖 Words'),
            Tab(text: '💬 Sentences'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // WORDS TAB
          ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: widget.topic.words.length,
            itemBuilder: (context, index) {
              final word = widget.topic.words[index];
              return Container(
                margin: EdgeInsets.only(bottom: 12),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF1B4332),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Color(0xFFD4AF37).withOpacity(0.3)),
                ),
                child: Row(
                  children: [
                    Text(word.emoji, style: TextStyle(fontSize: 36)),
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(word.german,
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                          if (word.article.isNotEmpty)
                            Text('Article: ${word.article} (${word.gender})',
                                style: TextStyle(color: Color(0xFFD4AF37), fontSize: 11)),
                          Text(word.english,
                              style: TextStyle(color: Colors.white60, fontSize: 13)),
                          Text(word.urdu,
                              style: TextStyle(color: Color(0xFFD4AF37), fontSize: 13)),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _speak(word.german),
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF2D6A4F),
                        child: Icon(Icons.volume_up, color: Colors.white, size: 20),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),

          // SENTENCES TAB
          ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: widget.topic.sentences.length,
            itemBuilder: (context, index) {
              final sentence = widget.topic.sentences[index];
              return Container(
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF1B4332),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Color(0xFFD4AF37).withOpacity(0.3)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Word by word
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: sentence.words.map((word) {
                        return Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                          decoration: BoxDecoration(
                            color: Color(0xFF0D1F17),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xFFD4AF37).withOpacity(0.3)),
                          ),
                          child: Column(
                            children: [
                              Text(word.de,
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                              Text(word.en,
                                  style: TextStyle(color: Colors.white54, fontSize: 11)),
                              Text(word.ur,
                                  style: TextStyle(color: Color(0xFFD4AF37), fontSize: 11)),
                            ],
                          ),
                        );
                      }).toList(),
                    ),

                    Divider(color: Colors.white12, height: 20),

                    // Full sentence
                    Row(
                      children: [
                        Text('🇩🇪', style: TextStyle(fontSize: 16)),
                        SizedBox(width: 8),
                        Expanded(child: Text(sentence.germanFull,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
                        GestureDetector(
                          onTap: () => _speak(sentence.germanFull),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Color(0xFF2D6A4F),
                            child: Icon(Icons.volume_up, color: Colors.white, size: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text('🇬🇧', style: TextStyle(fontSize: 16)),
                        SizedBox(width: 8),
                        Expanded(child: Text(sentence.englishFull,
                            style: TextStyle(color: Colors.white60))),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text('🇵🇰', style: TextStyle(fontSize: 16)),
                        SizedBox(width: 8),
                        Expanded(child: Text(sentence.urduFull,
                            style: TextStyle(color: Color(0xFFD4AF37)),
                            textDirection: TextDirection.rtl)),
                      ],
                    ),

                    // Grammar Note
                    if (sentence.grammarNote.isNotEmpty) ...[
                      Divider(color: Colors.white12, height: 16),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF0D1F17),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Text('💡 ', style: TextStyle(fontSize: 14)),
                            Expanded(
                              child: Text(sentence.grammarNote,
                                  style: TextStyle(color: Colors.white54, fontSize: 12)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
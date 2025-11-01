import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '6_baby_face_received.dart';

class BabyFaceScreen extends StatefulWidget {
  const BabyFaceScreen({super.key});

  @override
  State<BabyFaceScreen> createState() => _BabyFaceScreenState();
}

class _BabyFaceScreenState extends State<BabyFaceScreen> {
  bool _isListening = false;

  void _toggleListening() {
    if (_isListening) {
      // If already listening, navigate to received screen
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const BabyFaceReceivedScreen(),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ),
      );
    } else {
      // If not listening, start listening
      setState(() {
        _isListening = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            // Background (solid white - no placeholder image)
            Container(
              width: screenWidth,
              height: screenHeight,
              color: Colors.white,
            ),

            // Logo area (top left)
            Positioned(
              left: screenWidth * 0.067, // Equivalent to 51/371 = ~13.7%
              top: screenHeight * 0.083, // Equivalent to 62/748 = ~8.3%
              child: SvgPicture.asset(
                'assets/logo2.svg',
                width: screenWidth * 0.075, // Equivalent to 28/371 = ~7.5%
                height: screenHeight * 0.039, // Equivalent to 29.17/748 = ~3.9%
              ),
            ),

            // Main instruction text
            Positioned(
              left: screenWidth * 0.067, // Equivalent to 52/371 = ~14%
              top: screenHeight * 0.172, // Equivalent to 129/748 = ~17.2%
              child: Text(
                _isListening
                  ? '\'안녕 만나서 반가워\''
                  : '캐릭터가 잠들어 있어요!\n\'안녕 만나서 반가워\'\n라고 말하면 깨어나요.',
                style: TextStyle(
                  color: const Color(0xFF007BEB),
                  fontSize: screenWidth * 0.0485, // Responsive font size
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.40,
                  letterSpacing: -0.37,
                ),
              ),
            ),

            // Baby face with closed eyes (middle)
            Positioned(
              left: screenWidth * 0.205, // Equivalent to 76/371 = ~20.5%
              top: screenHeight * 0.370, // Equivalent to 277/748 = ~37%
              child: SvgPicture.asset(
                'assets/closed_eyes.svg',
                width: screenWidth * 0.591, // Equivalent to 219.03/371 = ~59.1%
                height: screenHeight * 0.259, // Equivalent to 193.66/748 = ~25.9%
              ),
            ),

            // Blue circular button (bottom center)
            Positioned(
              left: screenWidth * 0.300, // Equivalent to 160/371 = ~43.1%
              top: screenHeight * 0.8, // Equivalent to 642/748 = ~85.8%
              child: GestureDetector(
                onTap: _toggleListening,
                child: _isListening
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/gradient_elipse.png',
                          width: screenWidth * 0.4,
                          height: screenWidth * 0.4,
                        ),
                        Image.asset(
                          'assets/microphone-2.png',
                          width: screenWidth * 0.1,
                          height: screenWidth * 0.1,
                        ),
                      ],
                    )
                  : Padding(
                      padding: const EdgeInsets.only(left: 50.0, top: 50.0),
                      child: Container(
                        width: screenWidth * 0.151,
                        height: screenWidth * 0.151,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF007BEB),
                          shape: OvalBorder(),
                        ),
                        child: Image.asset(
                          'assets/microphone-2.png',
                          width: screenWidth * 0.03,
                          height: screenWidth * 0.03,
                        ),
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
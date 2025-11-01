import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '5_baby_face.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool _isCompleted = false;

  @override
  void initState() {
    super.initState();
    // Change text after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() {
          _isCompleted = true;
        });

        // Wait 3 more seconds after completion, then navigate
        Future.delayed(const Duration(seconds: 3), () {
          if (mounted) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const BabyFaceScreen(),
              ),
            );
          }
        });
      }
    });
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
            // Logo positioned at top left
            Positioned(
              left: screenWidth * 0.067, // Equivalent to 25/371 = ~6.7%
              top: screenHeight * 0.083, // Equivalent to 62/748 = ~8.3%
              child: SvgPicture.asset(
                'assets/logo2.svg',
                width: screenWidth * 0.075, // Equivalent to 28/371 = ~7.5%
                height: screenHeight * 0.039, // Equivalent to 29.17/748 = ~3.9%
              ),
            ),

            // Main text positioned
            Positioned(
              left: screenWidth * 0.067, // Equivalent to 52/371 = ~14%
              top: screenHeight * 0.172, // Equivalent to 129/748 = ~17.2%
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '우리 아이와 닮은\n',
                      style: TextStyle(
                        color: const Color(0xFF007BEB),
                        fontSize: screenWidth * 0.0485, // Responsive font size
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        height: 1.40,
                        letterSpacing: -0.37,
                      ),
                    ),
                    TextSpan(
                      text: _isCompleted ? '캐릭터 생성완료!' : '캐릭터 생성중...',
                      style: TextStyle(
                        color: const Color(0xFF007BEB),
                        fontSize: screenWidth * 0.0485, // Responsive font size
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w700,
                        height: 1.40,
                        letterSpacing: -0.37,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Orange character positioned
            Positioned(
              left: screenWidth * 0.383, // Equivalent to 142/371 = ~38.3%
              top: screenHeight * 0.41, // Equivalent to 307/748 = ~41%
              child: SvgPicture.asset(
                'assets/orange_character.svg',
                width: screenWidth * 0.563, // Equivalent to 208.76/371 = ~56.3%
                height: screenHeight * 0.529, // Equivalent to 395.70/748 = ~52.9%
              ),
            ),
          ],
        ),
      ),
    );
  }
}
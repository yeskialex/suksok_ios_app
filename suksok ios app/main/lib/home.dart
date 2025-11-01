import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            // Background
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: screenWidth,
                        height: screenHeight,
                        decoration: const BoxDecoration(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Status bar
            Positioned(
              left: screenWidth * 0.0674, // 25/371
              top: screenHeight * 0.0218, // 16.30/748
              child: Container(
                width: screenWidth * 0.8247, // 306/371
                height: screenHeight * 0.0495, // 37.04/748
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Stack(
                  children: [
                    Positioned(
                      left: screenWidth * 0.6496, // 240.97/371
                      top: screenHeight * 0.0163, // 12.19/748
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: screenWidth * 0.0438, // 16.26/371
                            height: screenHeight * 0.0174, // 13.01/748
                            child: const Stack(),
                          ),
                          SizedBox(width: screenWidth * 0.0044), // 1.63/371
                          Container(
                            width: screenWidth * 0.0351, // 13.01/371
                            height: screenHeight * 0.0174, // 13.01/748
                            child: const Stack(),
                          ),
                          SizedBox(width: screenWidth * 0.0044), // 1.63/371
                          Container(
                            width: screenWidth * 0.0548, // 20.32/371
                            height: screenHeight * 0.0174, // 13.01/748
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: const Stack(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Logo
            Positioned(
              left: screenWidth * 0.1375, // 51/371
              top: screenHeight * 0.0829, // 62/748
              child: Container(
                width: screenWidth * 0.0755, // 28/371
                height: screenHeight * 0.0390, // 29.17/748
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: SvgPicture.asset(
                  'assets/logo2.svg',
                  width: screenWidth * 0.0755,
                  height: screenHeight * 0.0390,
                ),
              ),
            ),

            // Orange character
            Positioned(
              left: screenWidth * 0.6388, // 237/371
              top: screenHeight * 0.1348, // 100.83/748
              child: Container(
                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-0.01),
                width: screenWidth * 0.2337, // 86.72/371
                height: screenHeight * 0.1593, // 119.24/748
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: SvgPicture.asset(
                  'assets/character_at_home.svg',
                  width: screenWidth * 0.2337,
                  height: screenHeight * 0.1593,
                ),
              ),
            ),

            // Main text
            Positioned(
              left: screenWidth * 0.1456, // 54/371
              top: screenHeight * 0.1577, // 118/748
              child: Text(
                '쑥쏙이는\n오늘도 열심히 성장중이에요!',
                style: TextStyle(
                  color: const Color(0xFF007BEB),
                  fontSize: screenWidth * 0.0485, // 18/371
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Blue card
            Positioned(
              left: screenWidth * 0.1402, // 52/371
              top: screenHeight * 0.2446, // 183/748
              child: Container(
                width: screenWidth * 0.7196, // 267/371
                height: screenHeight * 0.2647, // 198/748
                decoration: ShapeDecoration(
                  color: const Color(0xFF007BEB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.37),
                  ),
                ),
              ),
            ),

            // Card content
            Positioned(
              left: screenWidth * 0.1860, // 69/371
              top: screenHeight * 0.2687, // 201/748
              child: Text(
                '현재 민준이는',
                style: TextStyle(
                  color: const Color(0xFFF8F8F8),
                  fontSize: screenWidth * 0.0270, // 10/371
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Positioned(
              left: screenWidth * 0.1806, // 67/371
              top: screenHeight * 0.2888, // 216/748
              child: Text(
                '쑥쏙 단계 1입니다',
                style: TextStyle(
                  color: const Color(0xFFFFD724),
                  fontSize: screenWidth * 0.0593, // 22/371
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            Positioned(
              left: screenWidth * 0.1833, // 68/371
              top: screenHeight * 0.3383, // 253/748
              child: SizedBox(
                width: screenWidth * 0.6442, // 239/371
                child: Text(
                  '민준이는 체질량지수가 높은 편이에요!\n민준이의 건강한 성장을 위해 함께 노력해요.',
                  style: TextStyle(
                    color: const Color(0xFFF8F8F8),
                    fontSize: screenWidth * 0.0270, // 10/371
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 1.40,
                  ),
                ),
              ),
            ),

            // Progress bar background
            Positioned(
              left: screenWidth * 0.1860, // 69/371
              top: screenHeight * 0.4144, // 310/748
              child: Container(
                width: screenWidth * 0.6279, // 233/371
                height: screenHeight * 0.0067, // 5/748
                decoration: ShapeDecoration(
                  color: const Color(0xFFE4E1E1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.37),
                  ),
                ),
              ),
            ),

            // Progress bar fill
            Positioned(
              left: screenWidth * 0.1860, // 69/371
              top: screenHeight * 0.4144, // 310/748
              child: Container(
                width: screenWidth * 0.0270, // 10/371
                height: screenHeight * 0.0067, // 5/748
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFD724),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.37),
                  ),
                ),
              ),
            ),

            // Progress indicator circle
            Positioned(
              left: screenWidth * 0.2048, // 76/371
              top: screenHeight * 0.4117, // 308/748
              child: Container(
                width: screenWidth * 0.0243, // 9/371
                height: screenHeight * 0.0120, // 9/748
                decoration: const ShapeDecoration(
                  color: Color(0xFFFFD724),
                  shape: OvalBorder(),
                ),
              ),
            ),

            // Progress numbers
            Positioned(
              left: screenWidth * 0.1860, // 69/371
              top: screenHeight * 0.4278, // 320/748
              child: Text(
                '1',
                style: TextStyle(
                  color: const Color(0xFFFFD724),
                  fontSize: screenWidth * 0.0324, // 12/371
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            Positioned(
              left: screenWidth * 0.7817, // 290/371
              top: screenHeight * 0.4278, // 320/748
              child: Text(
                '10',
                style: TextStyle(
                  color: const Color(0xFFFFD724),
                  fontSize: screenWidth * 0.0324, // 12/371
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // Divider line
            Positioned(
              left: screenWidth * 0.1860, // 69/371
              top: screenHeight * 0.4638, // 347/748
              child: Container(
                width: screenWidth * 0.6279, // 233/371
                decoration: ShapeDecoration(
                  color: const Color(0xFFF8F8F8),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: const Color(0xFFF8F8F8),
                    ),
                  ),
                ),
              ),
            ),

            // Vertical divider
            Positioned(
              left: screenWidth * 0.5013, // 186/371
              top: screenHeight * 0.4718, // 353/748
              child: Container(
                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                width: screenHeight * 0.0294, // 22/748
                decoration: ShapeDecoration(
                  color: const Color(0xFFF8F8F8),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: const Color(0xFFF8F8F8),
                    ),
                  ),
                ),
              ),
            ),

            // Bottom labels
            Positioned(
              left: screenWidth * 0.2965, // 110/371
              top: screenHeight * 0.4772, // 357/748
              child: Text(
                '이전결과',
                style: TextStyle(
                  color: const Color(0xFFF8F8F8),
                  fontSize: screenWidth * 0.0270, // 10/371
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.72,
                ),
              ),
            ),

            Positioned(
              left: screenWidth * 0.6226, // 231/371
              top: screenHeight * 0.4772, // 357/748
              child: Text(
                '성장스캔',
                style: TextStyle(
                  color: const Color(0xFFF8F8F8),
                  fontSize: screenWidth * 0.0270, // 10/371
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.72,
                ),
              ),
            ),

            // Section title
            Positioned(
              left: screenWidth * 0.1510, // 56/371
              top: screenHeight * 0.5494, // 411/748
              child: SizedBox(
                width: screenWidth * 0.6442, // 239/371
                child: Text(
                  '평균 떼 지속시간',
                  style: TextStyle(
                    color: const Color(0xFF007BEB),
                    fontSize: screenWidth * 0.0270, // 10/371
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 1.40,
                  ),
                ),
              ),
            ),

            // Bottom cards (layered effect)
            Positioned(
              left: screenWidth * 0.1402, // 52/371
              top: screenHeight * 0.6283, // 470/748
              child: Container(
                width: screenWidth * 0.7196, // 267/371
                height: screenHeight * 0.1564, // 117/748
                decoration: ShapeDecoration(
                  color: const Color(0x26007BEB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.37),
                  ),
                ),
              ),
            ),

            Positioned(
              left: screenWidth * 0.1402, // 52/371
              top: screenHeight * 0.6070, // 454/748
              child: Container(
                width: screenWidth * 0.7196, // 267/371
                height: screenHeight * 0.1658, // 124/748
                decoration: ShapeDecoration(
                  color: const Color(0x19007BEB),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.37),
                  ),
                ),
              ),
            ),

            Positioned(
              left: screenWidth * 0.1402, // 52/371
              top: screenHeight * 0.5869, // 439/748
              child: Container(
                width: screenWidth * 0.7196, // 267/371
                height: screenHeight * 0.1725, // 129/748
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.37),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 4,
                      offset: Offset(2, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),

            // Progress bar in bottom section
            Positioned(
              left: screenWidth * 0.1860, // 69/371
              top: screenHeight * 0.6323, // 473/748
              child: Container(
                width: screenWidth * 0.6279, // 233/371
                height: screenHeight * 0.0067, // 5/748
                decoration: ShapeDecoration(
                  color: const Color(0xFFE4E1E1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.37),
                  ),
                ),
              ),
            ),

            // Category labels
            Positioned(
              left: screenWidth * 0.1860, // 69/371
              top: screenHeight * 0.6497, // 486/748
              child: Text(
                '떼쓰기',
                style: TextStyle(
                  color: const Color(0xFF007BEB),
                  fontSize: screenWidth * 0.0216, // 8/371
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.40,
                ),
              ),
            ),

            Positioned(
              left: screenWidth * 0.4825, // 179/371
              top: screenHeight * 0.6497, // 486/748
              child: Text(
                '진정',
                style: TextStyle(
                  color: const Color(0xFF007BEB),
                  fontSize: screenWidth * 0.0216, // 8/371
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.40,
                ),
              ),
            ),

            Positioned(
              left: screenWidth * 0.7763, // 288/371
              top: screenHeight * 0.6497, // 486/748
              child: Text(
                '교육',
                style: TextStyle(
                  color: const Color(0xFF007BEB),
                  fontSize: screenWidth * 0.0216, // 8/371
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  height: 1.40,
                ),
              ),
            ),

            // Bottom message
            Positioned(
              left: screenWidth * 0.1860, // 69/371
              top: screenHeight * 0.7125, // 533/748
              child: SizedBox(
                width: screenWidth * 0.6442, // 239/371
                child: Text(
                  '측정 데이터가 없습니다!',
                  style: TextStyle(
                    color: const Color(0xFF007BEB),
                    fontSize: screenWidth * 0.0324, // 12/371
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                    height: 1.40,
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
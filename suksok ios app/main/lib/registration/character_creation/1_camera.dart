import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '2_camera_ready.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  void _startCamera() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CameraReadyScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: SafeArea(
          child: Column(
            children: [
              // Logo area
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/logo2.svg',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),

              // Main content area
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40),

                      // Subtitle
                      Text(
                        '가입을 축하합니다',
                        style: TextStyle(
                          color: const Color(0xFFA2A2A2),
                          fontSize: 11.22,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.38,
                        ),
                      ),

                      const SizedBox(height: 8),

                      // Main title
                      Text(
                        '캐릭터 생성을 위해\n아이의 모습을 촬영해주세요!',
                        style: TextStyle(
                          color: const Color(0xFF007BEB),
                          fontSize: 18,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.37,
                        ),
                      ),

                      // Spacer to center the camera icon
                      const Spacer(flex: 2),

                      // Camera icon area
                      Center(
                        child: Column(
                          children: [
                            Container(
                              width: 139.04,
                              height: 139.04,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFE4EEF7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(69.52),
                                ),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/camera_icon.svg',
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),

                            Text(
                              '쑥쏙이',
                              style: TextStyle(
                                color: const Color(0xFF1658F2),
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                                height: 1.14,
                                letterSpacing: -0.28,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Spacer(flex: 3),
                    ],
                  ),
                ),
              ),

              // Bottom button area
              Padding(
                padding: const EdgeInsets.all(40),
                child: Center(
                  child: GestureDetector(
                    onTap: _startCamera,
                    child: Container(
                      width: 194.16,
                      height: 42.58,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF007BEB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21.27),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '시작하기',
                          style: TextStyle(
                            color: const Color(0xFFF8F8F8),
                            fontSize: 14,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w700,
                            height: 0.84,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
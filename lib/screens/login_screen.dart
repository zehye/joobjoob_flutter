import 'package:flutter/material.dart';

import '../widgets/social_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const _brandGreen = Color(0xFF22692A);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      SizedBox(height: 132),
                      _LoginBrand(),
                      SizedBox(height: 180),
                      _LoginButtons(),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _LoginBrand extends StatelessWidget {
  const _LoginBrand();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/GreenLogo.png',
          width: 88,
        ),
        const SizedBox(height: 8),
        const Text(
          '줍줍',
          style: TextStyle(
            color: LoginScreen._brandGreen,
            fontSize: 24,
            fontWeight: FontWeight.w900,
            height: 1,
          ),
        ),
      ],
    );
  }
}

class _LoginButtons extends StatelessWidget {
  const _LoginButtons();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'SNS 계정으로 간편 로그인하기',
          style: TextStyle(
            color: Color(0xFF8C8C8C),
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        SocialLoginButton(
          label: '카카오 로그인',
          backgroundColor: const Color(0xFFFFE100),
          foregroundColor: Colors.black,
          icon: _BubbleIcon(
            color: Colors.black,
            childColor: const Color(0xFFFFE100),
          ),
          onPressed: () => debugPrint('카카오 로그인 클릭'),
        ),
        const SizedBox(height: 8),
        SocialLoginButton(
          label: '네이버 로그인',
          backgroundColor: const Color(0xFF03C75A),
          foregroundColor: Colors.white,
          icon: const Text(
            'N',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w900,
              height: 1,
            ),
          ),
          onPressed: () => debugPrint('네이버 로그인 클릭'),
        ),
        const SizedBox(height: 8),
        SocialLoginButton(
          label: '애플 로그인',
          backgroundColor: const Color(0xFF171717),
          foregroundColor: Colors.white,
          icon: const Icon(Icons.apple, color: Colors.white, size: 24),
          onPressed: () => debugPrint('애플 로그인 클릭'),
        ),
        const SizedBox(height: 8),
        SocialLoginButton(
          label: '구글 로그인',
          backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF222222),
          borderColor: const Color(0xFFB8B8B8),
          icon: const Text(
            'G',
            style: TextStyle(
              color: Color(0xFF4285F4),
              fontSize: 20,
              fontWeight: FontWeight.w800,
              height: 1,
            ),
          ),
          onPressed: () => debugPrint('구글 로그인 클릭'),
        ),
      ],
    );
  }
}

class _BubbleIcon extends StatelessWidget {
  const _BubbleIcon({required this.color, required this.childColor});

  final Color color;
  final Color childColor;

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.chat_bubble, color: color, size: 18);
  }
}
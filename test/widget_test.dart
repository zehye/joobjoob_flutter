import 'package:flutter_test/flutter_test.dart';
import 'package:joopjoop_re/main.dart';

void main() {
  testWidgets('shows splash then login actions', (tester) async {
    await tester.pumpWidget(const JoopJoopApp());

    expect(find.text('줍줍'), findsOneWidget);

    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    expect(find.text('SNS 계정으로 간편 로그인하기'), findsOneWidget);
    expect(find.text('카카오 로그인'), findsOneWidget);
    expect(find.text('네이버 로그인'), findsOneWidget);
    expect(find.text('애플 로그인'), findsOneWidget);
    expect(find.text('구글 로그인'), findsOneWidget);
  });
}

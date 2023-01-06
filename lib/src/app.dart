import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui/src/common.dart';
import 'package:login_ui/src/pages/login_page.dart';

class LoginUiApp extends StatelessWidget {
  const LoginUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: const LoginPage(),
    );
  }
}

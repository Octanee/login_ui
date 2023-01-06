import 'package:login_ui/src/common.dart';

class MyImageButton extends StatelessWidget {
  const MyImageButton({
    super.key,
    required this.imagePath,
    required this.onTap,
  });

  final VoidCallback onTap;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey.shade200,
        ),
        child: Image.asset(
          imagePath,
          height: 48,
        ),
      ),
    );
  }
}

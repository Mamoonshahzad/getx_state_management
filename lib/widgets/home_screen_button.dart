import '../utils/urls.dart';

class HomeScreenButton extends StatelessWidget {
  String btnText;
  final VoidCallback onTap;
  final Color btnColor;
  HomeScreenButton(
      {super.key,
      required this.btnText,
      required this.onTap,
      required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: Get.width * .3,
        height: Get.height * .07,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ], color: btnColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(btnText,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.green)),
        ),
      ),
    );
  }
}

import '../utils/urls.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      body: ListView(children: [
        Card(
          color: Colors.yellow.shade50,
          child: ListTile(
            title: const Text("Click me"),
            subtitle: const Text("I'll show you the dialogue alert"),
            onTap: () {
              Get.to(const ScreenOne(name: 'Mamoon Shahzad'));
              Get.defaultDialog(
                  title: "Delete Chat",
                  middleText: 'Do you want to delete the chat',
                  titlePadding: const EdgeInsets.only(top: 4),
                  confirm: TextButton(
                      onPressed: () => Get.back(),
                      child: const Text('Confirm')),
                  cancel: TextButton(
                      onPressed: () => Get.back(),
                      child: const Text('Cancel')));
            },
          ),
        ),
        Card(
          color: Colors.yellow.shade100,
          child: ListTile(
            title: const Text("Open Bottom Sheet"),
            subtitle: const Text("Make the bottom sheet active"),
            onTap: () {
              Get.bottomSheet(Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: Get.width * .3,
                        height: Get.height * .06,
                        decoration: BoxDecoration(
                            color: Colors.yellow.shade50,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(child: Text('Select theme')),
                      ),
                      SizedBox(height: Get.height * .02),
                      ListTile(
                        title: const Text('Light Mode'),
                        leading: const Icon(Icons.light_mode),
                        tileColor: Colors.yellow.shade100,
                        onTap: () => Get.changeTheme(ThemeData.light()),
                      ),
                      SizedBox(height: Get.height * .02),
                      ListTile(
                        title: const Text('Dark Mode'),
                        leading: const Icon(Icons.dark_mode),
                        tileColor: Colors.yellow.shade200,
                        onTap: () => Get.changeTheme(ThemeData.dark()),
                      ),
                    ],
                  )));
            },
          ),
        )
      ]),
    );
  }
}

part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrasionPage(
        title: 'You Made order',
        subtitle: "tetap santai",
        picturePath: 'assets/bike.png',
        buttonTap1: () {
          Get.offAll(MainPage());
        },
        buttonTitle1: 'Order other foods',
        buttonTap2: () {
          Get.to(MainPage(
            initialPage: 1,
          ));
        },
        buttonTitle2: 'View My Order',
      ),
    );
  }
}

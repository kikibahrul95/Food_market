part of 'pages.dart';

class SuccessSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrasionPage(
        title: 'You complecated',
        subtitle: "Now you are able to order\nsom",
        picturePath: 'assets/food_wishes.png',
        buttonTap1: () {},
        buttonTitle1: 'Order other foods',
      ),
    );
  }
}

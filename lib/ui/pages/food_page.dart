part of 'pages.dart';

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ///Header
        Container(
            padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
            color: Colors.white,
            height: 100,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "FOOD MARKET",
                      style: blackFontStyle1,
                    ),
                    Text(
                      "Let's get some foods",
                      style:
                          greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/OIP.DOgJ8rFyO8TtBpP8Awg1bgHaEU?w=325&h=189&c=7&r=0&o=5&pid=1.7"),
                          fit: BoxFit.cover)),
                )
              ],
            )),

        ///list of food
        FoodCard(mockFood)

        ///list of food (tabs)
      ],
    );
  }
}

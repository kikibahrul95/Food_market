part of 'pages.dart';

class AddresPage extends StatefulWidget {
  @override
  _AddresPageState createState() => _AddresPageState();
}

class _AddresPageState extends State<AddresPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController houseNumController = TextEditingController();
    //   bool isLoading = false;
    //   List<String> cities;
    //   String selectedCity;

    //   @override
    // void initState() {
    //   super.initState();
    //   cities = ['Surabaya', 'Bandung', 'Jakarta', 'Semarang'];
    //   selectedCity = cities[0];
    // }

    return GeneralPage(
      title: "Addres",
      subtitle: "Make sure it' valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
            child: Text(
              "Phone Number",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type Your phone number'),
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "Addres",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type Your Adress '),
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "House number",
              style: blackFontStyle2,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black)),
            child: TextField(
              controller: houseNumController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type Your House Number'),
            ),
          ),
          Container(
            width: double.infinity,
            margin:
                const EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
            child: Text(
              "City",
              style: blackFontStyle2,
            ),
          ),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: defaultMargin),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black)),
              child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  items: [
                    DropdownMenuItem(
                        child: Text(
                      "Bandung",
                      style: blackFontStyle3,
                    )),
                    DropdownMenuItem(
                        child: Text(
                      "Jakarta",
                      style: blackFontStyle3,
                    )),
                    DropdownMenuItem(
                        child: Text(
                      "Surabaya",
                      style: blackFontStyle3,
                    )),
                  ],
                  onChanged: (item) {})),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 24),
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: defaultMargin),
              child: RaisedButton(
                onPressed: () {},
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: mainColor,
                child: Text('Sign Up Now',
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontWeight: FontWeight.w500)),
              )),
        ],
      ),
    );
  }
}

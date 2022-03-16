part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(builder: (_, state) {
      if (state is TransactionLoaded) {
        if (state.transaction.length == 0) {
          return IlustrasionPage(
            title: 'ohh lapar',
            subtitle: 'sebentar yaaaaa\ aaaa',
            picturePath: 'assets/love_burger.png',
            buttonTap1: () {},
            buttonTitle1: 'To find',
          );
        } else {
          double listItemWidth =
              MediaQuery.of(context).size.width - 2 * defaultMargin;
          return ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Your order",
                          style: blackFontStyle1,
                        ),
                        Text(
                          "Wait for  the best",
                          style: greyFontStyle.copyWith(
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        CustomTabbar(
                          titles: ['In Progress', 'Past orders'],
                          selectedIndex: selectedindex,
                          onTap: (index) {
                            setState(() {
                              selectedindex = index;
                            });
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Builder(builder: (_) {
                          List<Transaction> transaction = (selectedindex == 0)
                              ? state.transaction
                                  .where((element) =>
                                      element.status ==
                                          TransactionStatus.on_delivery ||
                                      element.status ==
                                          TransactionStatus.pending)
                                  .toList()
                              : state.transaction
                                  .where((element) =>
                                      element.status ==
                                          TransactionStatus.delivered ||
                                      element.status ==
                                          TransactionStatus.cancelled)
                                  .toList();

                          return Column(
                            children: transaction
                                .map((e) => Padding(
                                      padding: const EdgeInsets.only(
                                          right: defaultMargin,
                                          left: defaultMargin,
                                          bottom: 16),
                                      child: OrderListItem(
                                          transaction: e,
                                          itemWidth: listItemWidth),
                                    ))
                                .toList(),
                          );
                        })
                      ],
                    ),
                  )
                ],
              ),
            ],
          );
        }
      } else {
        return Center(
          child: loadingIndicator,
        );
      }
    });
  }
}

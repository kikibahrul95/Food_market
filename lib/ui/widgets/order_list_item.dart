part of 'widgets.dart';

class OrderListItem extends StatelessWidget {
  final Transaction transaction;
  final double itemWidth;

  OrderListItem({@required this.transaction, @required this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: NetworkImage(transaction.food.picturePath),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: itemWidth - 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                transaction.food.name,
                style: blackFontStyle2,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                "${transaction.quantity} item(s) . " +
                    NumberFormat.currency(
                            symbol: 'IDR', decimalDigits: 0, locale: 'id-ID')
                        .format(transaction.total),
                style: greyFontStyle.copyWith(fontSize: 13),
              )
            ],
          ),
        ),
        SizedBox(
          width: 110,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(convertDateTime(transaction.datetime)),
              (transaction.status == TransactionStatus.cancelled)
                  ? Text(
                      'cancelled',
                      style: GoogleFonts.poppins(
                          color: "D9435E".toColor(), fontSize: 10),
                    )
                  : (transaction.status == TransactionStatus.pending)
                      ? Text(
                          'pending',
                          style: GoogleFonts.poppins(
                              color: "D9435E".toColor(), fontSize: 10),
                        )
                      : (transaction.status == TransactionStatus.on_delivery)
                          ? Text(
                              'ondelivery',
                              style: GoogleFonts.poppins(
                                  color: "1ABC9C".toColor(), fontSize: 10),
                            )
                          : SizedBox()
            ],
          ),
        )
      ],
    );
  }

  String convertDateTime(DateTime dateTime) {
    String month;
    switch (dateTime.month) {
      case 1:
        month = 'jan';
        break;
      case 2:
        month = 'Feb';
        break;
      case 3:
        month = 'mar';
        break;
      case 4:
        month = 'Apr';
        break;
      case 5:
        month = 'Mei';
        break;
      case 6:
        month = 'jun';
        break;
      case 7:
        month = 'jul';
        break;
      case 8:
        month = 'Agus';
        break;
      case 9:
        month = 'Sep';
        break;
      case 10:
        month = 'okt';
        break;
      case 11:
        month = 'nov';
        break;
      case 12:
        month = 'des';
        break;
      default:
    }
    return month + '${dateTime.day},${dateTime.hour},${dateTime.minute}';
  }
}

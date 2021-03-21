part of 'pages.dart';

class PaymentMethodPage extends StatelessWidget {
  final String paymentUrl;

  PaymentMethodPage(this.paymentUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IllustrationPage(
          title: "Finish Your Payment",
          subtitle: "Please select your favorite\npayment method",
          picturePath: 'assets/Payment.png',
          buttonTap1: () async {
            await launch(paymentUrl);
          },
          buttonTitle1: 'Payment Method',
          buttonTap2: () {
            Get.to(SuccessOrderPage());
          },
          buttonTitle2: 'Continue',
        ));
  }
}

import 'dart:convert';

import 'package:bkash/bkash.dart';
import 'package:education_home_tutor/utils/colors.dart';
import 'package:education_home_tutor/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sslcommerz/model/SSLCAdditionalInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCCustomerInfoInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCEMITransactionInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCShipmentInfoInitializer.dart';
import 'package:flutter_sslcommerz/model/SSLCTransactionInfoModel.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/model/sslproductinitilizer/General.dart';
import 'package:flutter_sslcommerz/model/sslproductinitilizer/SSLCProductInitializer.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';
 
import 'package:fluttertoast/fluttertoast.dart';
 
import 'package:get/get.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String? _selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    final String totalAmount = Get.arguments['total'];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Payment Method',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Total Amount:",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  "$totalAmount BDT",
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: PaymentOptionCard(
                    image: AppImages.bkash,
                    title: "Bkash",
                    isSelected: _selectedPaymentMethod == "Bkash",
                    onTap: () {
                      setState(() {
                        _selectedPaymentMethod = "Bkash";
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: PaymentOptionCard(
                    image: AppImages.ssl,
                    title: "sslcommerz",
                    isSelected: _selectedPaymentMethod == "SSL",
                    onTap: () {
                      setState(() {
                        _selectedPaymentMethod = "SSL";
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: _selectedPaymentMethod != null
                  ? () {
                      if (_selectedPaymentMethod == "Bkash") {
                        Get.to(() => BkashPaymentPage(),
                            transition: Transition.rightToLeftWithFade);
                      } else if (_selectedPaymentMethod == "SSL") {
                        Get.to(() => SSLPaymentPage(),
                            transition: Transition.rightToLeftWithFade);
                      }
                    }
                  : null, // Disable button if no option is selected
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(200, 50),
              ),
              child: const Text("Go"),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOptionCard extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  final String image;

  const PaymentOptionCard({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: isSelected ? Colors.blue : Colors.grey,
            width: 2,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: 150,
          height: 80,
          child: Row(
            children: [
              SizedBox(height: 30, width: 30, child: Image.asset(image)),
              const SizedBox(
                width: 10,
              ),
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.blue : Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BkashPaymentPage extends StatefulWidget {
  @override
  _BkashPaymentPageState createState() => _BkashPaymentPageState();
}

class _BkashPaymentPageState extends State<BkashPaymentPage> {
  //final BkashPaymentService _bkashService = BkashPaymentService();
  String _paymentStatus = "Waiting for payment";
 
    
  double totalPrice = 1.00;

  bkashPayment() async {
  final bkash = Bkash(
    logResponse: true,
  );

  try {
    final response = await bkash.pay(
      context: Get.context!,
      amount: totalPrice,
      merchantInvoiceNumber: 'Test0123456',
    );

    print(response.trxId);
    print(response.paymentId);
  } on BkashFailure catch (e) {
    print(e.message);
  }
}
    @override
  void initState() {
    // TODO: implement initState
    bkashPayment();
    super.initState();
  }
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bkash Payment',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColor.primaryColor,
      ),
      body: Center(
        child: CircularProgressIndicator()
        
      ),
    );
  }
}

class SSLPaymentPage extends StatefulWidget {
  @override
  State<SSLPaymentPage> createState() => _SSLPaymentPageState();
}

class _SSLPaymentPageState extends State<SSLPaymentPage> {

  @override
  void initState() {
    // TODO: implement initState
    //sslcommerz();
    // sslCommerzGeneralCall();
    sslCommerzCustomizedCall();
    super.initState();
  }



 double totalPrice = 1.00;
 
  void sslcommerz() async {
  Sslcommerz sslcommerz = Sslcommerz(
    initializer: SSLCommerzInitialization(
      multi_card_name: "visa,master,bkash",
      currency: SSLCurrencyType.BDT,
      product_category: "Digital Product",
      sdkType: SSLCSdkType.TESTBOX,
      store_id: "your_store_id",
      store_passwd: "your_store_password",
      total_amount: totalPrice,
      tran_id: "TestTRX001",
    ),
  );

  final response = await sslcommerz.payNow();

  if (response.status == 'VALID') {
    print(jsonEncode(response));

    print('Payment completed, TRX ID: ${response.tranId}');
    print(response.tranDate);
  }

  if (response.status == 'Closed') {
    print('Payment closed');
  }

  if (response.status == 'FAILED') {
    print('Payment failed');
  }
}

 void paymentStatusCheck(SSLCTransactionInfoModel result) async {
    try {
      print("result status ::${result.status ?? ""}");

      if (result.status!.toLowerCase() == "failed") {
        Fluttertoast.showToast(
          msg: "Transaction is Failed....",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else if (result.status!.toLowerCase() == "closed") {
        Fluttertoast.showToast(
          msg: "SDK Closed by User",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else {
        Fluttertoast.showToast(
            msg:
                "Transaction is ${result.status} and Amount is ${result.amount ?? 0}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

    Future<void> sslCommerzGeneralCall() async {
       Sslcommerz sslcommerz = Sslcommerz(
      initializer: SSLCommerzInitialization(
        //Use the ipn if you have valid one, or it will fail the transaction.
        ipn_url: "www.ipnurl.com",
        multi_card_name: "visa,master,bkash",
        currency: SSLCurrencyType.BDT,
        product_category: "Food",
        sdkType: SSLCSdkType.TESTBOX,
        store_id: "your_store_id",
        store_passwd: "your_store_password",
        total_amount: totalPrice,
        tran_id: "1231123131212",
      ),
    );
    SSLCTransactionInfoModel result = await sslcommerz.payNow();
    paymentStatusCheck(result);
  }



  //////==========>
  Future<void> sslCommerzCustomizedCall() async {
    Sslcommerz sslcommerz = Sslcommerz(
      initializer: SSLCommerzInitialization(
        //Use the ipn if you have valid one, or it will fail the transaction.
        ipn_url: "www.ipnurl.com",
         multi_card_name: "visa,master,bkash",
        currency: SSLCurrencyType.BDT,
        product_category: "Food",
        sdkType: SSLCSdkType.TESTBOX,
        store_id: "your_store_id",
        store_passwd: "your_store_password",
        total_amount: totalPrice,
        tran_id: "1231321321321312",
      ),
    );

    sslcommerz
        .addEMITransactionInitializer(
            sslcemiTransactionInitializer: SSLCEMITransactionInitializer(
                emi_options: 1, emi_max_list_options: 9, emi_selected_inst: 0))
        .addShipmentInfoInitializer(
            sslcShipmentInfoInitializer: SSLCShipmentInfoInitializer(
                shipmentMethod: "yes",
                numOfItems: 5,
                shipmentDetails: ShipmentDetails(
                    shipAddress1: "Ship address 1",
                    shipCity: "Faridpur",
                    shipCountry: "Bangladesh",
                    shipName: "Ship name 1",
                    shipPostCode: "7860")))
        .addCustomerInfoInitializer(
          customerInfoInitializer: SSLCCustomerInfoInitializer(
            customerState: "Chattogram",
            customerName: "Abu Sayed Chowdhury",
            customerEmail: "abc@gmail.com",
            customerAddress1: "Anderkilla",
            customerCity: "Chattogram",
            customerPostCode: "200",
            customerCountry: "Bangladesh",
            customerPhone: '0175954683',
            //customerPhone: '',
           ),
        )
        .addProductInitializer(
            sslcProductInitializer:
                // ***** ssl product initializer for general product STARTS*****
                SSLCProductInitializer(
          productName: "Water Filter",
          productCategory: "Widgets",
          general: General(
            general: "General Purpose",
            productProfile: "Product Profile",
          ),
        )
            // ***** ssl product initializer for general product ENDS*****

            // ***** ssl product initializer for non physical goods STARTS *****
            // SSLCProductInitializer.WithNonPhysicalGoodsProfile(
            //     productName:
            //   "productName",
            //   productCategory:
            //   "productCategory",
            //   nonPhysicalGoods:
            //   NonPhysicalGoods(
            //      productProfile:
            //       "Product profile",
            //     nonPhysicalGoods:
            //     "non physical good"
            //       ))
            // ***** ssl product initializer for non physical goods ENDS *****

            // ***** ssl product initialization for travel vertices STARTS *****
            //       SSLCProductInitializer.WithTravelVerticalProfile(
            //          productName:
            //         "productName",
            //         productCategory:
            //         "productCategory",
            //         travelVertical:
            //         TravelVertical(
            //               productProfile: "productProfile",
            //               hotelName: "hotelName",
            //               lengthOfStay: "lengthOfStay",
            //               checkInTime: "checkInTime",
            //               hotelCity: "hotelCity"
            //             )
            //       )
            // ***** ssl product initialization for travel vertices ENDS *****

            // ***** ssl product initialization for physical goods STARTS *****

            // SSLCProductInitializer.WithPhysicalGoodsProfile(
            //     productName: "productName",
            //     productCategory: "productCategory",
            //     physicalGoods: PhysicalGoods(
            //         productProfile: "Product profile",
            //         physicalGoods: "non physical good"))

            // ***** ssl product initialization for physical goods ENDS *****

            // ***** ssl product initialization for telecom vertice STARTS *****
            // SSLCProductInitializer.WithTelecomVerticalProfile(
            //     productName: "productName",
            //     productCategory: "productCategory",
            //     telecomVertical: TelecomVertical(
            //         productProfile: "productProfile",
            //         productType: "productType",
            //         topUpNumber: "topUpNumber",
            //         countryTopUp: "countryTopUp"))
            // ***** ssl product initialization for telecom vertice ENDS *****
            )
        .addAdditionalInitializer(
          sslcAdditionalInitializer: SSLCAdditionalInitializer(
            valueA: "value a ",
            valueB: "value b",
            valueC: "value c",
            valueD: "value d",
            extras: {"key": "key", "key2": "key2"},
          ),
        );

    SSLCTransactionInfoModel result = await sslcommerz.payNow();
    paymentStatusCheck(result);
  }

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SSL Payment',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColor.primaryColor,
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

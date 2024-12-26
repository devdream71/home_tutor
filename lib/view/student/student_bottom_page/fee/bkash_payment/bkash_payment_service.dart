// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class BkashPaymentService {
//   final String appKey = 'your_app_key';
//   final String appSecret = 'your_app_secret';
//   final String username = 'your_username';
//   final String password = 'your_password';

//   final String grantTokenUrl = 'https://checkout.sandbox.bka.sh/v1.2.0-beta/checkout/token/grant';
//   final String createPaymentUrl = 'https://checkout.sandbox.bka.sh/v1.2.0-beta/checkout/payment/create';
//   final String executePaymentUrl = 'https://checkout.sandbox.bka.sh/v1.2.0-beta/checkout/payment/execute';

//   String? accessToken;

//   // Get Access Token
//   Future<void> getAccessToken() async {
//     final response = await http.post(
//       Uri.parse(grantTokenUrl),
//       headers: {
//         'Content-Type': 'application/json',
//         'username': username,
//         'password': password,
//       },
//       body: jsonEncode({
//         'app_key': appKey,
//         'app_secret': appSecret,
//       }),
//     );

//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//       accessToken = data['id_token'];
//     } else {
//       throw Exception('Failed to obtain access token');
//     }
//   }

//   // Initiate Payment
//   Future<Map<String, dynamic>> initiatePayment(double amount) async {
//     if (accessToken == null) {
//       await getAccessToken();
//     }

//     final response = await http.post(
//       Uri.parse(createPaymentUrl),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $accessToken',
//       },
//       body: jsonEncode({
//         'mode': '0011',
//         'payerReference': 'your_payer_reference',
//         'callbackURL': 'your_callback_url',
//         'amount': amount.toString(),
//         'currency': 'BDT',
//         'intent': 'sale',
//       }),
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception('Failed to initiate payment');
//     }
//   }

//   // Execute Payment
//   Future<Map<String, dynamic>> executePayment(String paymentId) async {
//     if (accessToken == null) {
//       await getAccessToken();
//     }

//     final response = await http.post(
//       Uri.parse('$executePaymentUrl/$paymentId'),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $accessToken',
//       },
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception('Failed to execute payment');
//     }
//   }
// }



class IPNModel {
  final String status;
  final String date;
  final String transID;
  final String valId;
  final String amount;
  final String storeAmount;
  final String currency;
  final String bankType;
  final String cardType;

  final String gwVersion;
  final String validationOn;
  final String aPIConnect;
  final String riskLevel;
  final String riskTitle;
  final String accountDetails;
  final String emiDescription;

  final String emiAmount;
  final String insstalment;
  final String valueC;
  final String valueb;

  IPNModel({
    required this.status,
    required this.date,
    required this.transID,
    required this.valId,
    required this.amount,
    required this.storeAmount,
    required this.currency,
    required this.bankType,
    required this.cardType,
    required this.gwVersion,
    required this.validationOn,
    required this.aPIConnect,
    required this.riskLevel,
    required this.riskTitle,
    required this.accountDetails,
    required this.emiDescription,
    required this.emiAmount,
    required this.insstalment,
    required this.valueC,
    required this.valueb,
  }) ;

  factory IPNModel.fromJson(Map<String, dynamic> json) {
    return IPNModel(
      status: json['status'],
      date: json['tran_date'],
      transID: json['tran_id'],
      valId: json['val_id'],
      amount: json['amount'],
      storeAmount: json['store_amount'],
      bankType: json['bankType'],
      cardType: json['bank_tran_id'],
      currency: json['currency'],
      aPIConnect: json[''],
      accountDetails: json[''],
      emiDescription: json[''],
      gwVersion: json[''],
      riskLevel: json[''],
      riskTitle: json[''],
      validationOn: json[''],
      emiAmount: json[''],
      insstalment: json[''],
      valueC: json[''],
      valueb: json[''],
      
      );

  }
}
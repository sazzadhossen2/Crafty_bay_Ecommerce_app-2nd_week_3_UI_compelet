class ListofPaymentMethod {
  String? msg;
  List<PymentDatawraper>? data;

  ListofPaymentMethod({this.msg, this.data});

  ListofPaymentMethod.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      data = <PymentDatawraper>[];
      json['data'].forEach((v) {
        data!.add(PymentDatawraper.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PymentDatawraper {
  List<PaymentMethod>? paymentMethod;
  int? payable;
  int? vat;
  int? total;

  PymentDatawraper({this.paymentMethod, this.payable, this.vat, this.total});

  PymentDatawraper.fromJson(Map<String, dynamic> json) {
    if (json['paymentMethod'] != null) {
      paymentMethod = <PaymentMethod>[];
      json['paymentMethod'].forEach((v) {
        paymentMethod!.add(PaymentMethod.fromJson(v));
      });
    }
    payable = json['payable'];
    vat = json['vat'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (paymentMethod != null) {
      data['paymentMethod'] =
          paymentMethod!.map((v) => v.toJson()).toList();
    }
    data['payable'] = payable;
    data['vat'] = vat;
    data['total'] = total;
    return data;
  }
}

class PaymentMethod {
  String? name;
  String? type;
  String? logo;
  String? gw;
  String? rFlag;
  String? redirectGatewayURL;

  PaymentMethod(
      {this.name,
        this.type,
        this.logo,
        this.gw,
        this.rFlag,
        this.redirectGatewayURL});

  PaymentMethod.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    logo = json['logo'];
    gw = json['gw'];
    rFlag = json['r_flag'];
    redirectGatewayURL = json['redirectGatewayURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = type;
    data['logo'] = logo;
    data['gw'] = gw;
    data['r_flag'] = rFlag;
    data['redirectGatewayURL'] = redirectGatewayURL;
    return data;
  }
}

class ProductDetail {
//   Data? data;
//   String? message;
//   int? status;

//   ProductDetail({this.data, this.message, this.status});

//   ProductDetail.fromJson(Map<String, dynamic> json) {
//     data = json['data'] != null ? new Data.fromJson(json['data']) : null;
//     message = json['message'];
//     status = json['status'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data!.toJson();
//     }
//     data['message'] = this.message;
//     data['status'] = this.status;
//     return data;
//   }
// }

// class Data {
//   List? rows;

//   Data({this.rows});

//   Data.fromJson(Map<String, dynamic> json) {
//     if (json['rows'] != null) {
//       //  rows = new List<Rows>();
//       json['rows'].forEach((v) {
//         rows!.add(new Rows.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.rows != null) {
//       data['rows'] = this.rows!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Rows {
  int? productRangeId;
  int? newProductPrice;
  int? excProductPrice;
  int? pRangeTo;
  int? pTypeId;
  int? productId;
  int? pRangeFrom;

  ProductDetail(
      {this.productRangeId,
      this.newProductPrice,
      this.excProductPrice,
      this.pRangeTo,
      this.pTypeId,
      this.productId,
      this.pRangeFrom});

  ProductDetail.fromJson(Map<String, dynamic> json) {
    productRangeId = json['product_range_id'];
    newProductPrice = json['new_product_price'];
    excProductPrice = json['exc_product_price'];
    pRangeTo = json['p_range_to'];
    pTypeId = json['p_type_id'];
    productId = json['product_id'];
    pRangeFrom = json['p_range_from'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_range_id'] = this.productRangeId;
    data['new_product_price'] = this.newProductPrice;
    data['exc_product_price'] = this.excProductPrice;
    data['p_range_to'] = this.pRangeTo;
    data['p_type_id'] = this.pTypeId;
    data['product_id'] = this.productId;
    data['p_range_from'] = this.pRangeFrom;
    return data;
  }
}

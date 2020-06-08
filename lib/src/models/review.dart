import '../models/user.dart';

class Review {
  String id;
  String review;
  String rate;
  User user;

  Review();
  Review.init(this.rate);

  Review.fromJSON(Map<String, dynamic> jsonMap) {
    id = jsonMap['id'].toString();
    review = jsonMap['review'];
    rate = jsonMap['rate'].toString() ?? '0';
    user = jsonMap['user'] != null ? User.fromJSON(jsonMap['user']) : null;
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["review"] = review;
    map["rate"] = rate;
    map["user_id"] = user?.id;
    return map;
  }

  @override
  String toString() {
    return this.toMap().toString();
  }
}

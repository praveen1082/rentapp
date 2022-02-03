class UserModel {
  var id;
  var firstName;
  var lastName;
  var phone;
  var email;
  var isOwner;
  var password;

  UserModel({
    this.id,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.isOwner,
    this.password,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phone = json['phone'];
    email = json['email'];
    isOwner = json['isOwner'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['isOwner'] = this.isOwner;
    data['password'] = this.password;

    return data;
  }
}

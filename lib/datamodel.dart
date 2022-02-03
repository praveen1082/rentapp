class Data {
  dynamic id;
  dynamic firstName;
  dynamic lastName;
  dynamic phone;
  dynamic email;
  dynamic isOwner;
  dynamic password;
  dynamic updatedAt;
  dynamic createdAt;

  Data(
      {this.id,
      this.firstName,
      this.lastName,
      this.phone,
      this.email,
      this.isOwner,
      this.password,
      this.updatedAt,
      this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    phone = json['phone'];
    email = json['email'];
    isOwner = json['isOwner'];
    password = json['password'];
    updatedAt = json['updatedAt'];
    createdAt = json['createdAt'];
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
    data['updatedAt'] = this.updatedAt;
    data['createdAt'] = this.createdAt;
    return data;
  }
}

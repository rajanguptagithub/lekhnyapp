class LeaderboardMostLikesModelClass {
  int? status;
  Data? data;

  LeaderboardMostLikesModelClass({this.status, this.data});

  LeaderboardMostLikesModelClass.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<DataOfTopThree>? dataOfTopThree;
  bool? isAuthInTopThree;
  List<Authrankdata>? authrankdata;
  List<MostLikesTopRankers>? topRankers;

  Data(
      {this.dataOfTopThree,
        this.isAuthInTopThree,
        this.authrankdata,
        this.topRankers});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['dataOfTopThree'] != null) {
      dataOfTopThree = <DataOfTopThree>[];
      json['dataOfTopThree'].forEach((v) {
        dataOfTopThree!.add(new DataOfTopThree.fromJson(v));
      });
    }
    isAuthInTopThree = json['isAuthInTopThree'];
    if (json['authrankdata'] != null) {
      authrankdata = <Authrankdata>[];
      json['authrankdata'].forEach((v) {
        authrankdata!.add(new Authrankdata.fromJson(v));
      });
    }
    if (json['topRankers'] != null) {
      topRankers = <MostLikesTopRankers>[];
      json['topRankers'].forEach((v) {
        topRankers!.add(new MostLikesTopRankers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dataOfTopThree != null) {
      data['dataOfTopThree'] =
          this.dataOfTopThree!.map((v) => v.toJson()).toList();
    }
    data['isAuthInTopThree'] = this.isAuthInTopThree;
    if (this.authrankdata != null) {
      data['authrankdata'] = this.authrankdata!.map((v) => v.toJson()).toList();
    }
    if (this.topRankers != null) {
      data['topRankers'] = this.topRankers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataOfTopThree {
  String? name;
  int? userID;
  String? userProfile;
  int? totalLikes;
  int? rank;

  DataOfTopThree(
      {this.name, this.userID, this.userProfile, this.totalLikes, this.rank});

  DataOfTopThree.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    userID = json['UserID'];
    userProfile = json['userProfile'];
    totalLikes = json['totalLikes'];
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['UserID'] = this.userID;
    data['userProfile'] = this.userProfile;
    data['totalLikes'] = this.totalLikes;
    data['rank'] = this.rank;
    return data;
  }
}

class Authrankdata {
  String? name;
  String? userProfile;
  int? userID;
  int? totalTrophy;
  int? rank;

  Authrankdata(
      {this.name, this.userProfile, this.userID, this.totalTrophy, this.rank});

  Authrankdata.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    userProfile = json['userProfile'];
    userID = json['UserID'];
    totalTrophy = json['totalTrophy'];
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['userProfile'] = this.userProfile;
    data['UserID'] = this.userID;
    data['totalTrophy'] = this.totalTrophy;
    data['rank'] = this.rank;
    return data;
  }
}

class MostLikesTopRankers {
  String? name;
  int? userID;
  String? userProfile;
  int? totalLikes;
  int? rank;

  MostLikesTopRankers(
      {this.name, this.userID, this.userProfile, this.totalLikes, this.rank});

  MostLikesTopRankers.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    userID = json['UserID'];
    userProfile = json['userProfile'];
    totalLikes = json['totalLikes'];
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['UserID'] = this.userID;
    data['userProfile'] = this.userProfile;
    data['totalLikes'] = this.totalLikes;
    data['rank'] = this.rank;
    return data;
  }
}
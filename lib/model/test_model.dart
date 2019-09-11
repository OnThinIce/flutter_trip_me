class TestModel {
  ConfigBean config;
  GridNavBean gridNav;
  SalesBoxBean salesBox;
  List<BannerListListBean> bannerList;
  List<LocalNavListListBean> localNavList;
  List<SubNavListListBean> subNavList;

  TestModel({this.config, this.gridNav, this.salesBox, this.bannerList, this.localNavList, this.subNavList});

  TestModel.fromJson(Map<String, dynamic> json) {    
    this.config = json['config'] != null ? ConfigBean.fromJson(json['config']) : null;
    this.gridNav = json['gridNav'] != null ? GridNavBean.fromJson(json['gridNav']) : null;
    this.salesBox = json['salesBox'] != null ? SalesBoxBean.fromJson(json['salesBox']) : null;
    this.bannerList = (json['bannerList'] as List)!=null?(json['bannerList'] as List).map((i) => BannerListListBean.fromJson(i)).toList():null;
    this.localNavList = (json['localNavList'] as List)!=null?(json['localNavList'] as List).map((i) => LocalNavListListBean.fromJson(i)).toList():null;
    this.subNavList = (json['subNavList'] as List)!=null?(json['subNavList'] as List).map((i) => SubNavListListBean.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    if (this.gridNav != null) {
      data['gridNav'] = this.gridNav.toJson();
    }
    if (this.salesBox != null) {
      data['salesBox'] = this.salesBox.toJson();
    }
    data['bannerList'] = this.bannerList != null?this.bannerList.map((i) => i.toJson()).toList():null;
    data['localNavList'] = this.localNavList != null?this.localNavList.map((i) => i.toJson()).toList():null;
    data['subNavList'] = this.subNavList != null?this.subNavList.map((i) => i.toJson()).toList():null;
    return data;
  }

}

class ConfigBean {
  String searchUrl;

  ConfigBean({this.searchUrl});

  ConfigBean.fromJson(Map<String, dynamic> json) {    
    this.searchUrl = json['searchUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['searchUrl'] = this.searchUrl;
    return data;
  }
}

class GridNavBean {
  FlightBean flight;
  HotelBean hotel;
  TravelBean travel;

  GridNavBean({this.flight, this.hotel, this.travel});

  GridNavBean.fromJson(Map<String, dynamic> json) {    
    this.flight = json['flight'] != null ? FlightBean.fromJson(json['flight']) : null;
    this.hotel = json['hotel'] != null ? HotelBean.fromJson(json['hotel']) : null;
    this.travel = json['travel'] != null ? TravelBean.fromJson(json['travel']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.flight != null) {
      data['flight'] = this.flight.toJson();
    }
    if (this.hotel != null) {
      data['hotel'] = this.hotel.toJson();
    }
    if (this.travel != null) {
      data['travel'] = this.travel.toJson();
    }
    return data;
  }
}

class SalesBoxBean {
  String icon;
  String moreUrl;
  BigCard1Bean bigCard1;
  BigCard2Bean bigCard2;
  SmallCard1Bean smallCard1;
  SmallCard2Bean smallCard2;
  SmallCard3Bean smallCard3;
  SmallCard4Bean smallCard4;

  SalesBoxBean({this.icon, this.moreUrl, this.bigCard1, this.bigCard2, this.smallCard1, this.smallCard2, this.smallCard3, this.smallCard4});

  SalesBoxBean.fromJson(Map<String, dynamic> json) {    
    this.icon = json['icon'];
    this.moreUrl = json['moreUrl'];
    this.bigCard1 = json['bigCard1'] != null ? BigCard1Bean.fromJson(json['bigCard1']) : null;
    this.bigCard2 = json['bigCard2'] != null ? BigCard2Bean.fromJson(json['bigCard2']) : null;
    this.smallCard1 = json['smallCard1'] != null ? SmallCard1Bean.fromJson(json['smallCard1']) : null;
    this.smallCard2 = json['smallCard2'] != null ? SmallCard2Bean.fromJson(json['smallCard2']) : null;
    this.smallCard3 = json['smallCard3'] != null ? SmallCard3Bean.fromJson(json['smallCard3']) : null;
    this.smallCard4 = json['smallCard4'] != null ? SmallCard4Bean.fromJson(json['smallCard4']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['moreUrl'] = this.moreUrl;
    if (this.bigCard1 != null) {
      data['bigCard1'] = this.bigCard1.toJson();
    }
    if (this.bigCard2 != null) {
      data['bigCard2'] = this.bigCard2.toJson();
    }
    if (this.smallCard1 != null) {
      data['smallCard1'] = this.smallCard1.toJson();
    }
    if (this.smallCard2 != null) {
      data['smallCard2'] = this.smallCard2.toJson();
    }
    if (this.smallCard3 != null) {
      data['smallCard3'] = this.smallCard3.toJson();
    }
    if (this.smallCard4 != null) {
      data['smallCard4'] = this.smallCard4.toJson();
    }
    return data;
  }
}

class BannerListListBean {
  String icon;
  String url;

  BannerListListBean({this.icon, this.url});

  BannerListListBean.fromJson(Map<String, dynamic> json) {    
    this.icon = json['icon'];
    this.url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    return data;
  }
}

class LocalNavListListBean {
  String icon;
  String title;
  String url;
  String statusBarColor;
  bool hideAppBar;

  LocalNavListListBean({this.icon, this.title, this.url, this.statusBarColor, this.hideAppBar});

  LocalNavListListBean.fromJson(Map<String, dynamic> json) {    
    this.icon = json['icon'];
    this.title = json['title'];
    this.url = json['url'];
    this.statusBarColor = json['statusBarColor'];
    this.hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    data['statusBarColor'] = this.statusBarColor;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class SubNavListListBean {
  String icon;
  String title;
  String url;
  bool hideAppBar;

  SubNavListListBean({this.icon, this.title, this.url, this.hideAppBar});

  SubNavListListBean.fromJson(Map<String, dynamic> json) {    
    this.icon = json['icon'];
    this.title = json['title'];
    this.url = json['url'];
    this.hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['title'] = this.title;
    data['url'] = this.url;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class BigCard1Bean {
  String icon;
  String url;
  String title;

  BigCard1Bean({this.icon, this.url, this.title});

  BigCard1Bean.fromJson(Map<String, dynamic> json) {    
    this.icon = json['icon'];
    this.url = json['url'];
    this.title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class BigCard2Bean {
  String icon;
  String url;
  String title;

  BigCard2Bean({this.icon, this.url, this.title});

  BigCard2Bean.fromJson(Map<String, dynamic> json) {    
    this.icon = json['icon'];
    this.url = json['url'];
    this.title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class SmallCard1Bean {
  String icon;
  String url;
  String title;

  SmallCard1Bean({this.icon, this.url, this.title});

  SmallCard1Bean.fromJson(Map<String, dynamic> json) {    
    this.icon = json['icon'];
    this.url = json['url'];
    this.title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class SmallCard2Bean {
  String icon;
  String url;
  String title;

  SmallCard2Bean({this.icon, this.url, this.title});

  SmallCard2Bean.fromJson(Map<String, dynamic> json) {    
    this.icon = json['icon'];
    this.url = json['url'];
    this.title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class SmallCard3Bean {
  String icon;
  String url;
  String title;

  SmallCard3Bean({this.icon, this.url, this.title});

  SmallCard3Bean.fromJson(Map<String, dynamic> json) {    
    this.icon = json['icon'];
    this.url = json['url'];
    this.title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class SmallCard4Bean {
  String icon;
  String url;
  String title;

  SmallCard4Bean({this.icon, this.url, this.title});

  SmallCard4Bean.fromJson(Map<String, dynamic> json) {    
    this.icon = json['icon'];
    this.url = json['url'];
    this.title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['title'] = this.title;
    return data;
  }
}

class FlightBean {
  String startColor;
  String endColor;
  Item1Bean item1;
  Item2Bean item2;
  Item3Bean item3;
  Item4Bean item4;
  MainItemBean mainItem;

  FlightBean({this.startColor, this.endColor, this.item1, this.item2, this.item3, this.item4, this.mainItem});

  FlightBean.fromJson(Map<String, dynamic> json) {    
    this.startColor = json['startColor'];
    this.endColor = json['endColor'];
    this.item1 = json['item1'] != null ? Item1Bean.fromJson(json['item1']) : null;
    this.item2 = json['item2'] != null ? Item2Bean.fromJson(json['item2']) : null;
    this.item3 = json['item3'] != null ? Item3Bean.fromJson(json['item3']) : null;
    this.item4 = json['item4'] != null ? Item4Bean.fromJson(json['item4']) : null;
    this.mainItem = json['mainItem'] != null ? MainItemBean.fromJson(json['mainItem']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startColor'] = this.startColor;
    data['endColor'] = this.endColor;
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    return data;
  }
}

class HotelBean {
  String startColor;
  String endColor;
  Item1Bean item1;
  Item2Bean item2;
  Item3Bean item3;
  Item4Bean item4;
  MainItemBean mainItem;

  HotelBean({this.startColor, this.endColor, this.item1, this.item2, this.item3, this.item4, this.mainItem});

  HotelBean.fromJson(Map<String, dynamic> json) {    
    this.startColor = json['startColor'];
    this.endColor = json['endColor'];
    this.item1 = json['item1'] != null ? Item1Bean.fromJson(json['item1']) : null;
    this.item2 = json['item2'] != null ? Item2Bean.fromJson(json['item2']) : null;
    this.item3 = json['item3'] != null ? Item3Bean.fromJson(json['item3']) : null;
    this.item4 = json['item4'] != null ? Item4Bean.fromJson(json['item4']) : null;
    this.mainItem = json['mainItem'] != null ? MainItemBean.fromJson(json['mainItem']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startColor'] = this.startColor;
    data['endColor'] = this.endColor;
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    return data;
  }
}

class TravelBean {
  String startColor;
  String endColor;
  Item1Bean item1;
  Item2Bean item2;
  Item3Bean item3;
  Item4Bean item4;
  MainItemBean mainItem;

  TravelBean({this.startColor, this.endColor, this.item1, this.item2, this.item3, this.item4, this.mainItem});

  TravelBean.fromJson(Map<String, dynamic> json) {    
    this.startColor = json['startColor'];
    this.endColor = json['endColor'];
    this.item1 = json['item1'] != null ? Item1Bean.fromJson(json['item1']) : null;
    this.item2 = json['item2'] != null ? Item2Bean.fromJson(json['item2']) : null;
    this.item3 = json['item3'] != null ? Item3Bean.fromJson(json['item3']) : null;
    this.item4 = json['item4'] != null ? Item4Bean.fromJson(json['item4']) : null;
    this.mainItem = json['mainItem'] != null ? MainItemBean.fromJson(json['mainItem']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['startColor'] = this.startColor;
    data['endColor'] = this.endColor;
    if (this.item1 != null) {
      data['item1'] = this.item1.toJson();
    }
    if (this.item2 != null) {
      data['item2'] = this.item2.toJson();
    }
    if (this.item3 != null) {
      data['item3'] = this.item3.toJson();
    }
    if (this.item4 != null) {
      data['item4'] = this.item4.toJson();
    }
    if (this.mainItem != null) {
      data['mainItem'] = this.mainItem.toJson();
    }
    return data;
  }
}

class Item1Bean {
  String title;
  String url;
  String statusBarColor;
  bool hideAppBar;

  Item1Bean({this.title, this.url, this.statusBarColor, this.hideAppBar});

  Item1Bean.fromJson(Map<String, dynamic> json) {    
    this.title = json['title'];
    this.url = json['url'];
    this.statusBarColor = json['statusBarColor'];
    this.hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['statusBarColor'] = this.statusBarColor;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class Item2Bean {
  String title;
  String url;
  String statusBarColor;
  bool hideAppBar;

  Item2Bean({this.title, this.url, this.statusBarColor, this.hideAppBar});

  Item2Bean.fromJson(Map<String, dynamic> json) {    
    this.title = json['title'];
    this.url = json['url'];
    this.statusBarColor = json['statusBarColor'];
    this.hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['statusBarColor'] = this.statusBarColor;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class Item3Bean {
  String title;
  String url;
  bool hideAppBar;

  Item3Bean({this.title, this.url, this.hideAppBar});

  Item3Bean.fromJson(Map<String, dynamic> json) {    
    this.title = json['title'];
    this.url = json['url'];
    this.hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class Item4Bean {
  String title;
  String url;
  bool hideAppBar;

  Item4Bean({this.title, this.url, this.hideAppBar});

  Item4Bean.fromJson(Map<String, dynamic> json) {    
    this.title = json['title'];
    this.url = json['url'];
    this.hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

class MainItemBean {
  String title;
  String icon;
  String url;
  String statusBarColor;
  bool hideAppBar;

  MainItemBean({this.title, this.icon, this.url, this.statusBarColor, this.hideAppBar});

  MainItemBean.fromJson(Map<String, dynamic> json) {    
    this.title = json['title'];
    this.icon = json['icon'];
    this.url = json['url'];
    this.statusBarColor = json['statusBarColor'];
    this.hideAppBar = json['hideAppBar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['icon'] = this.icon;
    data['url'] = this.url;
    data['statusBarColor'] = this.statusBarColor;
    data['hideAppBar'] = this.hideAppBar;
    return data;
  }
}

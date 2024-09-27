
import 'dart:convert';

class UniversityModel {
    String? stateProvince;
    String? alphaTwoCode;
    List<String>? webPages;
    String? name;
    List<String>? domains;
    String? country;

    UniversityModel({this.stateProvince, this.alphaTwoCode, this.webPages, this.name, this.domains, this.country});

    UniversityModel.fromJson(Map<String, dynamic> json) {
        stateProvince = json["state-province"];
        alphaTwoCode = json["alpha_two_code"];
        webPages = json["web_pages"] == null ? null : List<String>.from(json["web_pages"]);
        name = json["name"];
        domains = json["domains"] == null ? null : List<String>.from(json["domains"]);
        country = json["country"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["state-province"] = stateProvince;
        _data["alpha_two_code"] = alphaTwoCode;
        if(webPages != null) {
            _data["web_pages"] = webPages;
        }
        _data["name"] = name;
        if(domains != null) {
            _data["domains"] = domains;
        }
        _data["country"] = country;
        return _data;
    }

    static List<UniversityModel>? ofUniversity (List ofFData){
      return ofFData.map((e) => UniversityModel.fromJson(e)).toList();
    }

}
class ResModel {
    String? postCode;
    String? country;
    String? countryAbbreviation;
    List<Place>? places;

    ResModel({
        this.postCode,
        this.country,
        this.countryAbbreviation,
        this.places,
    });

    factory ResModel.fromJson(Map<String, dynamic> json) => ResModel(
        postCode: json["post code"],
        country: json["country"],
        countryAbbreviation: json["country abbreviation"],
        places: json["places"] == null ? [] : List<Place>.from(json["places"]!.map((x) => Place.fromJson(x))),
    );

   
}

class Place {
    String? placeName;
    String? longitude;
    String? state;
    String? stateAbbreviation;
    String? latitude;

    Place({
        this.placeName,
         this.longitude,
         this.state,
         this.stateAbbreviation,
         this.latitude,
    });

    factory Place.fromJson(Map<String, dynamic> json) => Place(
        placeName: json["place name"],
        longitude: json["longitude"],
        state: json["state"],
        stateAbbreviation: json["state abbreviation"],
        latitude: json["latitude"],
    );

   
}

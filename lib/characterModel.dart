class Character {
  final String name;
  final String height;
  final String mass;
  final String hairColor;
  final String skinColor;
  final String eyeColor;
  final String gender;

  Character(
      this.name,
      this.height,
      this.mass,
      this.hairColor,
      this.skinColor,
      this.eyeColor,
      this.gender);

  Character.fromJson(Map<String, dynamic> json) :
      name = json['name'],
      height = json['height'],
      mass = json['mass'],
      hairColor = json['hair_color'],
      skinColor = json['skin_color'],
      eyeColor = json['eye_color'],
      gender = json['gender'];

  Map<String, dynamic> toJson() =>
      {
        'name': name,
        'height': height,
        'mass': mass,
        'hair_color': hairColor,
        'skin_color': skinColor,
        'eye_color': eyeColor,
        'gender': gender
      };

  }


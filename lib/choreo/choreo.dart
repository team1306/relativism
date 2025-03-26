import 'package:json_annotation/json_annotation.dart';

/// This allows the `User` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'choreo.g.dart';

@JsonSerializable()
class Choreo {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "version")
  int version;
  @JsonKey(name: "type")
  String type;
  @JsonKey(name: "variables")
  Variables variables;
  @JsonKey(name: "config")
  Config config;
  @JsonKey(name: "generationFeatures")
  List<dynamic> generationFeatures;

  Choreo({
    required this.name,
    required this.version,
    required this.type,
    required this.variables,
    required this.config,
    required this.generationFeatures,
  });

  factory Choreo.fromJson(Map<String, dynamic> json) => _$ChoreoFromJson(json);

  Map<String, dynamic> toJson() => _$ChoreoToJson(this);
}

@JsonSerializable()
class Config {
  @JsonKey(name: "frontLeft")
  Left frontLeft;
  @JsonKey(name: "backLeft")
  Left backLeft;
  @JsonKey(name: "mass")
  Cof mass;
  @JsonKey(name: "inertia")
  Cof inertia;
  @JsonKey(name: "gearing")
  Cof gearing;
  @JsonKey(name: "radius")
  Cof radius;
  @JsonKey(name: "vmax")
  Cof vmax;
  @JsonKey(name: "tmax")
  Cof tmax;
  @JsonKey(name: "cof")
  Cof cof;
  @JsonKey(name: "bumper")
  Bumper bumper;
  @JsonKey(name: "differentialTrackWidth")
  Cof differentialTrackWidth;

  Config({
    required this.frontLeft,
    required this.backLeft,
    required this.mass,
    required this.inertia,
    required this.gearing,
    required this.radius,
    required this.vmax,
    required this.tmax,
    required this.cof,
    required this.bumper,
    required this.differentialTrackWidth,
  });

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}

@JsonSerializable()
class Left {
  @JsonKey(name: "x")
  Cof x;
  @JsonKey(name: "y")
  Cof y;

  Left({
    required this.x,
    required this.y,
  });

  factory Left.fromJson(Map<String, dynamic> json) => _$LeftFromJson(json);

  Map<String, dynamic> toJson() => _$LeftToJson(this);
}

@JsonSerializable()
class Cof {
  @JsonKey(name: "exp")
  String exp;
  @JsonKey(name: "val")
  double val;

  Cof({
    required this.exp,
    required this.val,
  });

  factory Cof.fromJson(Map<String, dynamic> json) => _$CofFromJson(json);

  Map<String, dynamic> toJson() => _$CofToJson(this);
}

@JsonSerializable()
class Bumper {
  @JsonKey(name: "front")
  Cof front;
  @JsonKey(name: "side")
  Cof side;
  @JsonKey(name: "back")
  Cof back;

  Bumper({
    required this.front,
    required this.side,
    required this.back,
  });

  factory Bumper.fromJson(Map<String, dynamic> json) => _$BumperFromJson(json);

  Map<String, dynamic> toJson() => _$BumperToJson(this);
}

@JsonSerializable()
class Variables {
  @JsonKey(name: "expressions")
  Expressions expressions;
  @JsonKey(name: "poses")
  Map<String, Pose> poses;

  Variables({
    required this.expressions,
    required this.poses,
  });

  factory Variables.fromJson(Map<String, dynamic> json) => _$VariablesFromJson(json);

  Map<String, dynamic> toJson() => _$VariablesToJson(this);
}

@JsonSerializable()
class Expressions {
  Expressions();

  factory Expressions.fromJson(Map<String, dynamic> json) => _$ExpressionsFromJson(json);

  Map<String, dynamic> toJson() => _$ExpressionsToJson(this);
}

@JsonSerializable()
class Pose {
  @JsonKey(name: "x")
  Cof x;
  @JsonKey(name: "y")
  Cof y;
  @JsonKey(name: "heading")
  Cof heading;

  Pose({
    required this.x,
    required this.y,
    required this.heading,
  });

  factory Pose.fromJson(Map<String, dynamic> json) => _$PoseFromJson(json);

  Map<String, dynamic> toJson() => _$PoseToJson(this);
}

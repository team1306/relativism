// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choreo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Choreo _$ChoreoFromJson(Map<String, dynamic> json) => Choreo(
  name: json['name'] as String,
  version: (json['version'] as num).toInt(),
  type: json['type'] as String,
  variables: Variables.fromJson(json['variables'] as Map<String, dynamic>),
  config: Config.fromJson(json['config'] as Map<String, dynamic>),
  generationFeatures: json['generationFeatures'] as List<dynamic>,
);

Map<String, dynamic> _$ChoreoToJson(Choreo instance) => <String, dynamic>{
  'name': instance.name,
  'version': instance.version,
  'type': instance.type,
  'variables': instance.variables,
  'config': instance.config,
  'generationFeatures': instance.generationFeatures,
};

Config _$ConfigFromJson(Map<String, dynamic> json) => Config(
  frontLeft: Left.fromJson(json['frontLeft'] as Map<String, dynamic>),
  backLeft: Left.fromJson(json['backLeft'] as Map<String, dynamic>),
  mass: Cof.fromJson(json['mass'] as Map<String, dynamic>),
  inertia: Cof.fromJson(json['inertia'] as Map<String, dynamic>),
  gearing: Cof.fromJson(json['gearing'] as Map<String, dynamic>),
  radius: Cof.fromJson(json['radius'] as Map<String, dynamic>),
  vmax: Cof.fromJson(json['vmax'] as Map<String, dynamic>),
  tmax: Cof.fromJson(json['tmax'] as Map<String, dynamic>),
  cof: Cof.fromJson(json['cof'] as Map<String, dynamic>),
  bumper: Bumper.fromJson(json['bumper'] as Map<String, dynamic>),
  differentialTrackWidth: Cof.fromJson(
    json['differentialTrackWidth'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
  'frontLeft': instance.frontLeft,
  'backLeft': instance.backLeft,
  'mass': instance.mass,
  'inertia': instance.inertia,
  'gearing': instance.gearing,
  'radius': instance.radius,
  'vmax': instance.vmax,
  'tmax': instance.tmax,
  'cof': instance.cof,
  'bumper': instance.bumper,
  'differentialTrackWidth': instance.differentialTrackWidth,
};

Left _$LeftFromJson(Map<String, dynamic> json) => Left(
  x: Cof.fromJson(json['x'] as Map<String, dynamic>),
  y: Cof.fromJson(json['y'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LeftToJson(Left instance) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
};

Cof _$CofFromJson(Map<String, dynamic> json) =>
    Cof(exp: json['exp'] as String, val: (json['val'] as num).toDouble());

Map<String, dynamic> _$CofToJson(Cof instance) => <String, dynamic>{
  'exp': instance.exp,
  'val': instance.val,
};

Bumper _$BumperFromJson(Map<String, dynamic> json) => Bumper(
  front: Cof.fromJson(json['front'] as Map<String, dynamic>),
  side: Cof.fromJson(json['side'] as Map<String, dynamic>),
  back: Cof.fromJson(json['back'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BumperToJson(Bumper instance) => <String, dynamic>{
  'front': instance.front,
  'side': instance.side,
  'back': instance.back,
};

Variables _$VariablesFromJson(Map<String, dynamic> json) => Variables(
  expressions: Expressions.fromJson(
    json['expressions'] as Map<String, dynamic>,
  ),
  poses: (json['poses'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, Pose.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$VariablesToJson(Variables instance) => <String, dynamic>{
  'expressions': instance.expressions,
  'poses': instance.poses,
};

Expressions _$ExpressionsFromJson(Map<String, dynamic> json) => Expressions();

Map<String, dynamic> _$ExpressionsToJson(Expressions instance) =>
    <String, dynamic>{};

Pose _$PoseFromJson(Map<String, dynamic> json) => Pose(
  x: Cof.fromJson(json['x'] as Map<String, dynamic>),
  y: Cof.fromJson(json['y'] as Map<String, dynamic>),
  heading: Cof.fromJson(json['heading'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PoseToJson(Pose instance) => <String, dynamic>{
  'x': instance.x,
  'y': instance.y,
  'heading': instance.heading,
};

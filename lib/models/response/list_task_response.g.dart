// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTaskResponse _$ListTaskResponseFromJson(Map<String, dynamic> json) =>
    ListTaskResponse(
      (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListTaskResponseToJson(ListTaskResponse instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
    };

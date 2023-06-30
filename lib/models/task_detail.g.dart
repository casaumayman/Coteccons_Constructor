// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskDetail _$TaskDetailFromJson(Map<String, dynamic> json) => TaskDetail(
      json['id'] as int?,
      json['code'] as String?,
      json['description'] as String?,
      json['end_time'] as String?,
      json['executor'] == null
          ? null
          : Executor.fromJson(json['executor'] as Map<String, dynamic>),
      json['executor_id'] as int?,
      (json['executor_images'] as List<dynamic>?)
          ?.map((e) => ImageInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['executor_name'] as String?,
      json['name'] as String?,
      (json['owner_images'] as List<dynamic>?)
          ?.map((e) => ImageInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['price'] as int?,
      json['priority_level'] as int?,
      json['project'] == null
          ? null
          : Project.fromJson(json['project'] as Map<String, dynamic>),
      json['project_id'] as int?,
      json['project_name'] as String?,
      json['quantity'] as int?,
      json['start_time'] as String?,
      $enumDecode(_$TaskStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$TaskDetailToJson(TaskDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'project_id': instance.projectId,
      'project_name': instance.projectName,
      'project': instance.project,
      'executor_id': instance.executorId,
      'executor_name': instance.executorName,
      'executor': instance.executor,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'quantity': instance.quantity,
      'price': instance.price,
      'description': instance.description,
      'priority_level': instance.priorityLevel,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'owner_images': instance.ownerImages,
      'executor_images': instance.executorImages,
    };

const _$TaskStatusEnumMap = {
  TaskStatus.REQUESTED: 'requested',
  TaskStatus.ACCEPTED: 'accepted',
  TaskStatus.REJECTED: 'rejected',
  TaskStatus.CANCELED: 'cancel',
  TaskStatus.COMPLETED: 'completed',
  TaskStatus.CREATED: 'created',
};

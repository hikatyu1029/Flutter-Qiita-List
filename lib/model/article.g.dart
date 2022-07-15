// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$_Article',
      json,
      ($checkedConvert) {
        final val = _$_Article(
          title: $checkedConvert('title', (v) => v as String),
          url: $checkedConvert('url', (v) => v as String),
          id: $checkedConvert('id', (v) => v as String),
          user: $checkedConvert(
              'user', (v) => User.fromJson(v as Map<String, dynamic>)),
          required: $checkedConvert('required', (v) => v),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'id': instance.id,
      'user': instance.user,
      'required': instance.required,
    };

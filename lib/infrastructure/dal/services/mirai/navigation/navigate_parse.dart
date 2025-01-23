import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigate_parse.freezed.dart';
part 'navigate_parse.g.dart';

@freezed
class NavigateAction with _$NavigateAction {
  const factory NavigateAction({
    required String page,
  }) = _NavigateAction;

  factory NavigateAction.fromJson(Map<String, dynamic> json) =>
      _$NavigateActionFromJson(json);
}
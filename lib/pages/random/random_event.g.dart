// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RandomUpdateEvent extends RandomUpdateEvent {
  @override
  final String username;

  factory _$RandomUpdateEvent(
          [void Function(RandomUpdateEventBuilder) updates]) =>
      (new RandomUpdateEventBuilder()..update(updates)).build();

  _$RandomUpdateEvent._({this.username}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('RandomUpdateEvent', 'username');
    }
  }

  @override
  RandomUpdateEvent rebuild(void Function(RandomUpdateEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RandomUpdateEventBuilder toBuilder() =>
      new RandomUpdateEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RandomUpdateEvent && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RandomUpdateEvent')
          ..add('username', username))
        .toString();
  }
}

class RandomUpdateEventBuilder
    implements Builder<RandomUpdateEvent, RandomUpdateEventBuilder> {
  _$RandomUpdateEvent _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  RandomUpdateEventBuilder();

  RandomUpdateEventBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RandomUpdateEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RandomUpdateEvent;
  }

  @override
  void update(void Function(RandomUpdateEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RandomUpdateEvent build() {
    final _$result = _$v ?? new _$RandomUpdateEvent._(username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

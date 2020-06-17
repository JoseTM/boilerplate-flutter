// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RandomInitialState extends RandomInitialState {
  factory _$RandomInitialState(
          [void Function(RandomInitialStateBuilder) updates]) =>
      (new RandomInitialStateBuilder()..update(updates)).build();

  _$RandomInitialState._() : super._();

  @override
  RandomInitialState rebuild(
          void Function(RandomInitialStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RandomInitialStateBuilder toBuilder() =>
      new RandomInitialStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RandomInitialState;
  }

  @override
  int get hashCode {
    return 441817128;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('RandomInitialState').toString();
  }
}

class RandomInitialStateBuilder
    implements Builder<RandomInitialState, RandomInitialStateBuilder> {
  _$RandomInitialState _$v;

  RandomInitialStateBuilder();

  @override
  void replace(RandomInitialState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RandomInitialState;
  }

  @override
  void update(void Function(RandomInitialStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RandomInitialState build() {
    final _$result = _$v ?? new _$RandomInitialState._();
    replace(_$result);
    return _$result;
  }
}

class _$RandomUpdatedState extends RandomUpdatedState {
  @override
  final String username;

  factory _$RandomUpdatedState(
          [void Function(RandomUpdatedStateBuilder) updates]) =>
      (new RandomUpdatedStateBuilder()..update(updates)).build();

  _$RandomUpdatedState._({this.username}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('RandomUpdatedState', 'username');
    }
  }

  @override
  RandomUpdatedState rebuild(
          void Function(RandomUpdatedStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RandomUpdatedStateBuilder toBuilder() =>
      new RandomUpdatedStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RandomUpdatedState && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RandomUpdatedState')
          ..add('username', username))
        .toString();
  }
}

class RandomUpdatedStateBuilder
    implements Builder<RandomUpdatedState, RandomUpdatedStateBuilder> {
  _$RandomUpdatedState _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  RandomUpdatedStateBuilder();

  RandomUpdatedStateBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RandomUpdatedState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RandomUpdatedState;
  }

  @override
  void update(void Function(RandomUpdatedStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RandomUpdatedState build() {
    final _$result = _$v ?? new _$RandomUpdatedState._(username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

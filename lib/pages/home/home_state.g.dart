// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeInitialState extends HomeInitialState {
  factory _$HomeInitialState(
          [void Function(HomeInitialStateBuilder) updates]) =>
      (new HomeInitialStateBuilder()..update(updates)).build();

  _$HomeInitialState._() : super._();

  @override
  HomeInitialState rebuild(void Function(HomeInitialStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeInitialStateBuilder toBuilder() =>
      new HomeInitialStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeInitialState;
  }

  @override
  int get hashCode {
    return 89513026;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('HomeInitialState').toString();
  }
}

class HomeInitialStateBuilder
    implements Builder<HomeInitialState, HomeInitialStateBuilder> {
  _$HomeInitialState _$v;

  HomeInitialStateBuilder();

  @override
  void replace(HomeInitialState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeInitialState;
  }

  @override
  void update(void Function(HomeInitialStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeInitialState build() {
    final _$result = _$v ?? new _$HomeInitialState._();
    replace(_$result);
    return _$result;
  }
}

class _$HomeLoadingState extends HomeLoadingState {
  factory _$HomeLoadingState(
          [void Function(HomeLoadingStateBuilder) updates]) =>
      (new HomeLoadingStateBuilder()..update(updates)).build();

  _$HomeLoadingState._() : super._();

  @override
  HomeLoadingState rebuild(void Function(HomeLoadingStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeLoadingStateBuilder toBuilder() =>
      new HomeLoadingStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeLoadingState;
  }

  @override
  int get hashCode {
    return 635906124;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('HomeLoadingState').toString();
  }
}

class HomeLoadingStateBuilder
    implements Builder<HomeLoadingState, HomeLoadingStateBuilder> {
  _$HomeLoadingState _$v;

  HomeLoadingStateBuilder();

  @override
  void replace(HomeLoadingState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeLoadingState;
  }

  @override
  void update(void Function(HomeLoadingStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeLoadingState build() {
    final _$result = _$v ?? new _$HomeLoadingState._();
    replace(_$result);
    return _$result;
  }
}

class _$HomeLoadedState extends HomeLoadedState {
  @override
  final String username;

  factory _$HomeLoadedState([void Function(HomeLoadedStateBuilder) updates]) =>
      (new HomeLoadedStateBuilder()..update(updates)).build();

  _$HomeLoadedState._({this.username}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('HomeLoadedState', 'username');
    }
  }

  @override
  HomeLoadedState rebuild(void Function(HomeLoadedStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeLoadedStateBuilder toBuilder() =>
      new HomeLoadedStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeLoadedState && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeLoadedState')
          ..add('username', username))
        .toString();
  }
}

class HomeLoadedStateBuilder
    implements Builder<HomeLoadedState, HomeLoadedStateBuilder> {
  _$HomeLoadedState _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  HomeLoadedStateBuilder();

  HomeLoadedStateBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeLoadedState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeLoadedState;
  }

  @override
  void update(void Function(HomeLoadedStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeLoadedState build() {
    final _$result = _$v ?? new _$HomeLoadedState._(username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

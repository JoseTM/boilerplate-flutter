// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeInitialEvent extends HomeInitialEvent {
  factory _$HomeInitialEvent(
          [void Function(HomeInitialEventBuilder) updates]) =>
      (new HomeInitialEventBuilder()..update(updates)).build();

  _$HomeInitialEvent._() : super._();

  @override
  HomeInitialEvent rebuild(void Function(HomeInitialEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeInitialEventBuilder toBuilder() =>
      new HomeInitialEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeInitialEvent;
  }

  @override
  int get hashCode {
    return 10864160;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('HomeInitialEvent').toString();
  }
}

class HomeInitialEventBuilder
    implements Builder<HomeInitialEvent, HomeInitialEventBuilder> {
  _$HomeInitialEvent _$v;

  HomeInitialEventBuilder();

  @override
  void replace(HomeInitialEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeInitialEvent;
  }

  @override
  void update(void Function(HomeInitialEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeInitialEvent build() {
    final _$result = _$v ?? new _$HomeInitialEvent._();
    replace(_$result);
    return _$result;
  }
}

class _$HomeUpdateUsernameEvent extends HomeUpdateUsernameEvent {
  @override
  final String username;

  factory _$HomeUpdateUsernameEvent(
          [void Function(HomeUpdateUsernameEventBuilder) updates]) =>
      (new HomeUpdateUsernameEventBuilder()..update(updates)).build();

  _$HomeUpdateUsernameEvent._({this.username}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('HomeUpdateUsernameEvent', 'username');
    }
  }

  @override
  HomeUpdateUsernameEvent rebuild(
          void Function(HomeUpdateUsernameEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeUpdateUsernameEventBuilder toBuilder() =>
      new HomeUpdateUsernameEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeUpdateUsernameEvent && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeUpdateUsernameEvent')
          ..add('username', username))
        .toString();
  }
}

class HomeUpdateUsernameEventBuilder
    implements
        Builder<HomeUpdateUsernameEvent, HomeUpdateUsernameEventBuilder> {
  _$HomeUpdateUsernameEvent _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  HomeUpdateUsernameEventBuilder();

  HomeUpdateUsernameEventBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeUpdateUsernameEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HomeUpdateUsernameEvent;
  }

  @override
  void update(void Function(HomeUpdateUsernameEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeUpdateUsernameEvent build() {
    final _$result = _$v ?? new _$HomeUpdateUsernameEvent._(username: username);
    replace(_$result);
    return _$result;
  }
}

class _$NavigateToRandomEvent extends NavigateToRandomEvent {
  @override
  final String username;

  factory _$NavigateToRandomEvent(
          [void Function(NavigateToRandomEventBuilder) updates]) =>
      (new NavigateToRandomEventBuilder()..update(updates)).build();

  _$NavigateToRandomEvent._({this.username}) : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('NavigateToRandomEvent', 'username');
    }
  }

  @override
  NavigateToRandomEvent rebuild(
          void Function(NavigateToRandomEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NavigateToRandomEventBuilder toBuilder() =>
      new NavigateToRandomEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NavigateToRandomEvent && username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(0, username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NavigateToRandomEvent')
          ..add('username', username))
        .toString();
  }
}

class NavigateToRandomEventBuilder
    implements Builder<NavigateToRandomEvent, NavigateToRandomEventBuilder> {
  _$NavigateToRandomEvent _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  NavigateToRandomEventBuilder();

  NavigateToRandomEventBuilder get _$this {
    if (_$v != null) {
      _username = _$v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NavigateToRandomEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$NavigateToRandomEvent;
  }

  @override
  void update(void Function(NavigateToRandomEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NavigateToRandomEvent build() {
    final _$result = _$v ?? new _$NavigateToRandomEvent._(username: username);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

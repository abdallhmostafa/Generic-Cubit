// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseCubitState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseCubitState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseCubitState<$T>()';
}


}

/// @nodoc
class $BaseCubitStateCopyWith<T,$Res>  {
$BaseCubitStateCopyWith(BaseCubitState<T> _, $Res Function(BaseCubitState<T>) __);
}


/// Adds pattern-matching-related methods to [BaseCubitState].
extension BaseCubitStatePatterns<T> on BaseCubitState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IdleState<T> value)?  idle,TResult Function( LoadingState<T> value)?  loading,TResult Function( SuccessState<T> value)?  success,TResult Function( FailureState<T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IdleState() when idle != null:
return idle(_that);case LoadingState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case FailureState() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IdleState<T> value)  idle,required TResult Function( LoadingState<T> value)  loading,required TResult Function( SuccessState<T> value)  success,required TResult Function( FailureState<T> value)  failure,}){
final _that = this;
switch (_that) {
case IdleState():
return idle(_that);case LoadingState():
return loading(_that);case SuccessState():
return success(_that);case FailureState():
return failure(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IdleState<T> value)?  idle,TResult? Function( LoadingState<T> value)?  loading,TResult? Function( SuccessState<T> value)?  success,TResult? Function( FailureState<T> value)?  failure,}){
final _that = this;
switch (_that) {
case IdleState() when idle != null:
return idle(_that);case LoadingState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case FailureState() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  loading,TResult Function( T data,  bool isCached)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IdleState() when idle != null:
return idle();case LoadingState() when loading != null:
return loading();case SuccessState() when success != null:
return success(_that.data,_that.isCached);case FailureState() when failure != null:
return failure(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  loading,required TResult Function( T data,  bool isCached)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case IdleState():
return idle();case LoadingState():
return loading();case SuccessState():
return success(_that.data,_that.isCached);case FailureState():
return failure(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  loading,TResult? Function( T data,  bool isCached)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case IdleState() when idle != null:
return idle();case LoadingState() when loading != null:
return loading();case SuccessState() when success != null:
return success(_that.data,_that.isCached);case FailureState() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class IdleState<T> implements BaseCubitState<T> {
  const IdleState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IdleState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseCubitState<$T>.idle()';
}


}




/// @nodoc


class LoadingState<T> implements BaseCubitState<T> {
  const LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BaseCubitState<$T>.loading()';
}


}




/// @nodoc


class SuccessState<T> implements BaseCubitState<T> {
  const SuccessState({required this.data, required this.isCached});
  

 final  T data;
 final  bool isCached;

/// Create a copy of BaseCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessStateCopyWith<T, SuccessState<T>> get copyWith => _$SuccessStateCopyWithImpl<T, SuccessState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState<T>&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.isCached, isCached) || other.isCached == isCached));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),isCached);

@override
String toString() {
  return 'BaseCubitState<$T>.success(data: $data, isCached: $isCached)';
}


}

/// @nodoc
abstract mixin class $SuccessStateCopyWith<T,$Res> implements $BaseCubitStateCopyWith<T, $Res> {
  factory $SuccessStateCopyWith(SuccessState<T> value, $Res Function(SuccessState<T>) _then) = _$SuccessStateCopyWithImpl;
@useResult
$Res call({
 T data, bool isCached
});




}
/// @nodoc
class _$SuccessStateCopyWithImpl<T,$Res>
    implements $SuccessStateCopyWith<T, $Res> {
  _$SuccessStateCopyWithImpl(this._self, this._then);

  final SuccessState<T> _self;
  final $Res Function(SuccessState<T>) _then;

/// Create a copy of BaseCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? isCached = null,}) {
  return _then(SuccessState<T>(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,isCached: null == isCached ? _self.isCached : isCached // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class FailureState<T> implements BaseCubitState<T> {
  const FailureState(this.message);
  

 final  String message;

/// Create a copy of BaseCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureStateCopyWith<T, FailureState<T>> get copyWith => _$FailureStateCopyWithImpl<T, FailureState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailureState<T>&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BaseCubitState<$T>.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureStateCopyWith<T,$Res> implements $BaseCubitStateCopyWith<T, $Res> {
  factory $FailureStateCopyWith(FailureState<T> value, $Res Function(FailureState<T>) _then) = _$FailureStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureStateCopyWithImpl<T,$Res>
    implements $FailureStateCopyWith<T, $Res> {
  _$FailureStateCopyWithImpl(this._self, this._then);

  final FailureState<T> _self;
  final $Res Function(FailureState<T>) _then;

/// Create a copy of BaseCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(FailureState<T>(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

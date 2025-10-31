// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _GetAllCategories value)?  getAllCategories,TResult Function( _GetAllProducts value)?  getAllProducts,TResult Function( _GetCategoryProducts value)?  getCategoryProducts,TResult Function( _SearchProducts value)?  searchProducts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetAllCategories() when getAllCategories != null:
return getAllCategories(_that);case _GetAllProducts() when getAllProducts != null:
return getAllProducts(_that);case _GetCategoryProducts() when getCategoryProducts != null:
return getCategoryProducts(_that);case _SearchProducts() when searchProducts != null:
return searchProducts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _GetAllCategories value)  getAllCategories,required TResult Function( _GetAllProducts value)  getAllProducts,required TResult Function( _GetCategoryProducts value)  getCategoryProducts,required TResult Function( _SearchProducts value)  searchProducts,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _GetAllCategories():
return getAllCategories(_that);case _GetAllProducts():
return getAllProducts(_that);case _GetCategoryProducts():
return getCategoryProducts(_that);case _SearchProducts():
return searchProducts(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _GetAllCategories value)?  getAllCategories,TResult? Function( _GetAllProducts value)?  getAllProducts,TResult? Function( _GetCategoryProducts value)?  getCategoryProducts,TResult? Function( _SearchProducts value)?  searchProducts,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _GetAllCategories() when getAllCategories != null:
return getAllCategories(_that);case _GetAllProducts() when getAllProducts != null:
return getAllProducts(_that);case _GetCategoryProducts() when getCategoryProducts != null:
return getCategoryProducts(_that);case _SearchProducts() when searchProducts != null:
return searchProducts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getAllCategories,TResult Function()?  getAllProducts,TResult Function( String categoryName)?  getCategoryProducts,TResult Function( String query)?  searchProducts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetAllCategories() when getAllCategories != null:
return getAllCategories();case _GetAllProducts() when getAllProducts != null:
return getAllProducts();case _GetCategoryProducts() when getCategoryProducts != null:
return getCategoryProducts(_that.categoryName);case _SearchProducts() when searchProducts != null:
return searchProducts(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getAllCategories,required TResult Function()  getAllProducts,required TResult Function( String categoryName)  getCategoryProducts,required TResult Function( String query)  searchProducts,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _GetAllCategories():
return getAllCategories();case _GetAllProducts():
return getAllProducts();case _GetCategoryProducts():
return getCategoryProducts(_that.categoryName);case _SearchProducts():
return searchProducts(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getAllCategories,TResult? Function()?  getAllProducts,TResult? Function( String categoryName)?  getCategoryProducts,TResult? Function( String query)?  searchProducts,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _GetAllCategories() when getAllCategories != null:
return getAllCategories();case _GetAllProducts() when getAllProducts != null:
return getAllProducts();case _GetCategoryProducts() when getCategoryProducts != null:
return getCategoryProducts(_that.categoryName);case _SearchProducts() when searchProducts != null:
return searchProducts(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements HomeEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.started()';
}


}




/// @nodoc


class _GetAllCategories implements HomeEvent {
  const _GetAllCategories();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllCategories);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getAllCategories()';
}


}




/// @nodoc


class _GetAllProducts implements HomeEvent {
  const _GetAllProducts();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAllProducts);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getAllProducts()';
}


}




/// @nodoc


class _GetCategoryProducts implements HomeEvent {
  const _GetCategoryProducts(this.categoryName);
  

 final  String categoryName;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCategoryProductsCopyWith<_GetCategoryProducts> get copyWith => __$GetCategoryProductsCopyWithImpl<_GetCategoryProducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCategoryProducts&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}


@override
int get hashCode => Object.hash(runtimeType,categoryName);

@override
String toString() {
  return 'HomeEvent.getCategoryProducts(categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$GetCategoryProductsCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$GetCategoryProductsCopyWith(_GetCategoryProducts value, $Res Function(_GetCategoryProducts) _then) = __$GetCategoryProductsCopyWithImpl;
@useResult
$Res call({
 String categoryName
});




}
/// @nodoc
class __$GetCategoryProductsCopyWithImpl<$Res>
    implements _$GetCategoryProductsCopyWith<$Res> {
  __$GetCategoryProductsCopyWithImpl(this._self, this._then);

  final _GetCategoryProducts _self;
  final $Res Function(_GetCategoryProducts) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryName = null,}) {
  return _then(_GetCategoryProducts(
null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SearchProducts implements HomeEvent {
  const _SearchProducts(this.query);
  

 final  String query;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchProductsCopyWith<_SearchProducts> get copyWith => __$SearchProductsCopyWithImpl<_SearchProducts>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchProducts&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'HomeEvent.searchProducts(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchProductsCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$SearchProductsCopyWith(_SearchProducts value, $Res Function(_SearchProducts) _then) = __$SearchProductsCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchProductsCopyWithImpl<$Res>
    implements _$SearchProductsCopyWith<$Res> {
  __$SearchProductsCopyWithImpl(this._self, this._then);

  final _SearchProducts _self;
  final $Res Function(_SearchProducts) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchProducts(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( CategoriesLoading value)?  categoriesLoading,TResult Function( CategoriesSuccess value)?  categoriesSuccess,TResult Function( CategoriesError value)?  categoriesError,TResult Function( ProductsLoading value)?  productsLoading,TResult Function( ProductsSuccess value)?  productsSuccess,TResult Function( ProductsError value)?  productsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading(_that);case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that);case CategoriesError() when categoriesError != null:
return categoriesError(_that);case ProductsLoading() when productsLoading != null:
return productsLoading(_that);case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that);case ProductsError() when productsError != null:
return productsError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( CategoriesLoading value)  categoriesLoading,required TResult Function( CategoriesSuccess value)  categoriesSuccess,required TResult Function( CategoriesError value)  categoriesError,required TResult Function( ProductsLoading value)  productsLoading,required TResult Function( ProductsSuccess value)  productsSuccess,required TResult Function( ProductsError value)  productsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case CategoriesLoading():
return categoriesLoading(_that);case CategoriesSuccess():
return categoriesSuccess(_that);case CategoriesError():
return categoriesError(_that);case ProductsLoading():
return productsLoading(_that);case ProductsSuccess():
return productsSuccess(_that);case ProductsError():
return productsError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( CategoriesLoading value)?  categoriesLoading,TResult? Function( CategoriesSuccess value)?  categoriesSuccess,TResult? Function( CategoriesError value)?  categoriesError,TResult? Function( ProductsLoading value)?  productsLoading,TResult? Function( ProductsSuccess value)?  productsSuccess,TResult? Function( ProductsError value)?  productsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading(_that);case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that);case CategoriesError() when categoriesError != null:
return categoriesError(_that);case ProductsLoading() when productsLoading != null:
return productsLoading(_that);case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that);case ProductsError() when productsError != null:
return productsError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  categoriesLoading,TResult Function( List<Category> categoriesList)?  categoriesSuccess,TResult Function( ErrorHandler errorHandler)?  categoriesError,TResult Function()?  productsLoading,TResult Function( List<Product> productsList)?  productsSuccess,TResult Function( ErrorHandler errorHandler)?  productsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading();case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that.categoriesList);case CategoriesError() when categoriesError != null:
return categoriesError(_that.errorHandler);case ProductsLoading() when productsLoading != null:
return productsLoading();case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that.productsList);case ProductsError() when productsError != null:
return productsError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  categoriesLoading,required TResult Function( List<Category> categoriesList)  categoriesSuccess,required TResult Function( ErrorHandler errorHandler)  categoriesError,required TResult Function()  productsLoading,required TResult Function( List<Product> productsList)  productsSuccess,required TResult Function( ErrorHandler errorHandler)  productsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case CategoriesLoading():
return categoriesLoading();case CategoriesSuccess():
return categoriesSuccess(_that.categoriesList);case CategoriesError():
return categoriesError(_that.errorHandler);case ProductsLoading():
return productsLoading();case ProductsSuccess():
return productsSuccess(_that.productsList);case ProductsError():
return productsError(_that.errorHandler);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  categoriesLoading,TResult? Function( List<Category> categoriesList)?  categoriesSuccess,TResult? Function( ErrorHandler errorHandler)?  categoriesError,TResult? Function()?  productsLoading,TResult? Function( List<Product> productsList)?  productsSuccess,TResult? Function( ErrorHandler errorHandler)?  productsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case CategoriesLoading() when categoriesLoading != null:
return categoriesLoading();case CategoriesSuccess() when categoriesSuccess != null:
return categoriesSuccess(_that.categoriesList);case CategoriesError() when categoriesError != null:
return categoriesError(_that.errorHandler);case ProductsLoading() when productsLoading != null:
return productsLoading();case ProductsSuccess() when productsSuccess != null:
return productsSuccess(_that.productsList);case ProductsError() when productsError != null:
return productsError(_that.errorHandler);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class CategoriesLoading implements HomeState {
  const CategoriesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.categoriesLoading()';
}


}




/// @nodoc


class CategoriesSuccess implements HomeState {
  const CategoriesSuccess(final  List<Category> categoriesList): _categoriesList = categoriesList;
  

 final  List<Category> _categoriesList;
 List<Category> get categoriesList {
  if (_categoriesList is EqualUnmodifiableListView) return _categoriesList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoriesList);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesSuccessCopyWith<CategoriesSuccess> get copyWith => _$CategoriesSuccessCopyWithImpl<CategoriesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesSuccess&&const DeepCollectionEquality().equals(other._categoriesList, _categoriesList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categoriesList));

@override
String toString() {
  return 'HomeState.categoriesSuccess(categoriesList: $categoriesList)';
}


}

/// @nodoc
abstract mixin class $CategoriesSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $CategoriesSuccessCopyWith(CategoriesSuccess value, $Res Function(CategoriesSuccess) _then) = _$CategoriesSuccessCopyWithImpl;
@useResult
$Res call({
 List<Category> categoriesList
});




}
/// @nodoc
class _$CategoriesSuccessCopyWithImpl<$Res>
    implements $CategoriesSuccessCopyWith<$Res> {
  _$CategoriesSuccessCopyWithImpl(this._self, this._then);

  final CategoriesSuccess _self;
  final $Res Function(CategoriesSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoriesList = null,}) {
  return _then(CategoriesSuccess(
null == categoriesList ? _self._categoriesList : categoriesList // ignore: cast_nullable_to_non_nullable
as List<Category>,
  ));
}


}

/// @nodoc


class CategoriesError implements HomeState {
  const CategoriesError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoriesErrorCopyWith<CategoriesError> get copyWith => _$CategoriesErrorCopyWithImpl<CategoriesError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoriesError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.categoriesError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $CategoriesErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $CategoriesErrorCopyWith(CategoriesError value, $Res Function(CategoriesError) _then) = _$CategoriesErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$CategoriesErrorCopyWithImpl<$Res>
    implements $CategoriesErrorCopyWith<$Res> {
  _$CategoriesErrorCopyWithImpl(this._self, this._then);

  final CategoriesError _self;
  final $Res Function(CategoriesError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(CategoriesError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

/// @nodoc


class ProductsLoading implements HomeState {
  const ProductsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.productsLoading()';
}


}




/// @nodoc


class ProductsSuccess implements HomeState {
  const ProductsSuccess(final  List<Product> productsList): _productsList = productsList;
  

 final  List<Product> _productsList;
 List<Product> get productsList {
  if (_productsList is EqualUnmodifiableListView) return _productsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productsList);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsSuccessCopyWith<ProductsSuccess> get copyWith => _$ProductsSuccessCopyWithImpl<ProductsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSuccess&&const DeepCollectionEquality().equals(other._productsList, _productsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_productsList));

@override
String toString() {
  return 'HomeState.productsSuccess(productsList: $productsList)';
}


}

/// @nodoc
abstract mixin class $ProductsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $ProductsSuccessCopyWith(ProductsSuccess value, $Res Function(ProductsSuccess) _then) = _$ProductsSuccessCopyWithImpl;
@useResult
$Res call({
 List<Product> productsList
});




}
/// @nodoc
class _$ProductsSuccessCopyWithImpl<$Res>
    implements $ProductsSuccessCopyWith<$Res> {
  _$ProductsSuccessCopyWithImpl(this._self, this._then);

  final ProductsSuccess _self;
  final $Res Function(ProductsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productsList = null,}) {
  return _then(ProductsSuccess(
null == productsList ? _self._productsList : productsList // ignore: cast_nullable_to_non_nullable
as List<Product>,
  ));
}


}

/// @nodoc


class ProductsError implements HomeState {
  const ProductsError(this.errorHandler);
  

 final  ErrorHandler errorHandler;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsErrorCopyWith<ProductsError> get copyWith => _$ProductsErrorCopyWithImpl<ProductsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsError&&(identical(other.errorHandler, errorHandler) || other.errorHandler == errorHandler));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandler);

@override
String toString() {
  return 'HomeState.productsError(errorHandler: $errorHandler)';
}


}

/// @nodoc
abstract mixin class $ProductsErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $ProductsErrorCopyWith(ProductsError value, $Res Function(ProductsError) _then) = _$ProductsErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandler
});




}
/// @nodoc
class _$ProductsErrorCopyWithImpl<$Res>
    implements $ProductsErrorCopyWith<$Res> {
  _$ProductsErrorCopyWithImpl(this._self, this._then);

  final ProductsError _self;
  final $Res Function(ProductsError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandler = null,}) {
  return _then(ProductsError(
null == errorHandler ? _self.errorHandler : errorHandler // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on

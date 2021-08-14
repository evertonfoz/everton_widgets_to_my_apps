// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'in_processing_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InProcessingStore on _InProcessingStore, Store {
  Computed<bool>? _$isInProcessingComputed;

  @override
  bool get isInProcessing =>
      (_$isInProcessingComputed ??= Computed<bool>(() => super.isInProcessing,
              name: '_InProcessingStore.isInProcessing'))
          .value;

  final _$_isInProcessingAtom =
      Atom(name: '_InProcessingStore._isInProcessing');

  @override
  bool get _isInProcessing {
    _$_isInProcessingAtom.reportRead();
    return super._isInProcessing;
  }

  @override
  set _isInProcessing(bool value) {
    _$_isInProcessingAtom.reportWrite(value, super._isInProcessing, () {
      super._isInProcessing = value;
    });
  }

  final _$_InProcessingStoreActionController =
      ActionController(name: '_InProcessingStore');

  @override
  dynamic registerIsInProcessing(bool value) {
    final _$actionInfo = _$_InProcessingStoreActionController.startAction(
        name: '_InProcessingStore.registerIsInProcessing');
    try {
      return super.registerIsInProcessing(value);
    } finally {
      _$_InProcessingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isInProcessing: ${isInProcessing}
    ''';
  }
}

library otter.json;

import 'package:collection/equality.dart';
import 'dart:convert';
import 'dart:math';

part 'src/bootstrap_transform.dart';
part 'src/json0.dart';
part 'src/_text0.dart';
part 'src/ottypefactory.dart';

abstract class OTType<T, E> {
  String get name;
  String get uri;

  T create([initial]);
  T apply(T doc, E op);
  E transform(E op, E otherOp, String side);
  E invert(E op);
  E compose(E op1, E op2);
}
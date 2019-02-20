import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

  String IdU(){
    var _uuid = new Uuid();
    String uuids = _uuid.v4(options: {'rng': UuidUtil.cryptoRNG});

    return uuids;
  }
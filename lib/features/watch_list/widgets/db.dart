import 'package:hive/hive.dart';

part 'db.g.dart';

@HiveType(typeId: 1)
class db {
  db({
    required this.photo,
    required this.name,
    required this.date,
  });

  @HiveField(0)
  String name;

  @HiveField(1)
  String date;

  @HiveField(2)
  String photo;
}

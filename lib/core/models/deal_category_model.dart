// ignore_for_file: annotate_overrides, overridden_fields

import 'package:clinaj/core/entities/deal_category_entity.dart';

class CategoryModel extends CategoryEntity{
    const CategoryModel({
        required this.name,
    }):super(name: name);

    final String name;

    factory CategoryModel.fromMap(Map<String, dynamic> json) => CategoryModel(
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
}
import 'package:clinaj/core/general_widgets/deals/custom_search_field.dart';
import 'package:flutter/material.dart';

class SearchDeals extends StatelessWidget {
   SearchDeals({Key? key}) : super(key: key);
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.location_on_outlined, size: 30,),
          Expanded(
            child: CustomSearchField(
                controller: searchController,
                hintText: 'search deal',
                inputType: TextInputType.text,
                onChanged: (value){},
                errorText: ''),
          ),
        Icon(Icons.filter_list, size: 30,)
        ],
      ),
    );
  }
}

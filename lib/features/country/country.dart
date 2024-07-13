import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Country {
  final String name;
  final String capital;

  Country(this.name, this.capital);
}
class CountryTable extends StatefulWidget {
  @override
  _CountryTableState createState() => _CountryTableState();
}

class _CountryTableState extends State<CountryTable> {
  final List<Country> countries =
      List.generate(74, (index) => Country('Egypt', 'Cairo'));
  final int _rowsPerPage = 8;
  int _currentPage = 0;

  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int totalRows = countries.length;
    final int totalPages = (totalRows / _rowsPerPage).ceil();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: totalPages,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, pageIndex) {
                final startRow = pageIndex * _rowsPerPage;
                final endRow = startRow + _rowsPerPage < totalRows
                    ? startRow + _rowsPerPage
                    : totalRows;
                final paginatedCountries = countries.sublist(startRow, endRow);

                return Center(
                  child: Container(
                    width: 380.w,
                    height: 600.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 60.h,
                            decoration: BoxDecoration(
                              color: Color(0xFFF9F9F9),
                              borderRadius: BorderRadius.circular(15.0.r),
                            ),
                            child: Padding(
                             padding:  EdgeInsets.symmetric(horizontal: 30.0.w,vertical: 12.h),
                              child: Row(
                                children: [
                                  Text(
                                    "Country",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Capital",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.0.w,vertical: 12.h),
                            child: SizedBox(
                              width: 380.w,
                              height: 450.h,
                              child: ListView.builder(
                                itemCount: paginatedCountries.length,
                                itemBuilder: (context, index) {
                                  final country = paginatedCountries[index];
                                  return Column(
                                    children: [
                                      Row(children: [
                                        Text(country.name),
                                        Spacer(),
                                        Text(country.capital),
                                      ]),
                                      Divider(
                                        color: Colors.grey,
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.chevron_left),
                onPressed: _currentPage > 0
                    ? () {
                        _pageController.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease);
                      }
                    : null,
              ),
              for (int i = 0; i < totalPages; i++)
                InkWell(
                  onTap: () {
                    _pageController.jumpToPage(i);
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _currentPage == i
                            ? Colors.green
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.w, horizontal: 6.h),
                      child: Text(
                        (i + 1).toString(),
                        style: TextStyle(
                          fontWeight: _currentPage == i
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color:
                              _currentPage == i ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              IconButton(
                icon: Icon(Icons.chevron_right),
                onPressed: _currentPage < totalPages - 1
                    ? () {
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease);
                      }
                    : null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// class CountryTable extends StatefulWidget {
//   @override
//   _CountryTableState createState() => _CountryTableState();
// }
//
// class _CountryTableState extends State<CountryTable> {
//   final List<Country> countries =
//       List.generate(68, (index) => Country('Egypt', 'Cairo'));
//   int _rowsPerPage = 7;
//   int _currentPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     final int totalRows = countries.length;
//     final int totalPages = (totalRows / _rowsPerPage).ceil();
//     final int startRow = _currentPage * _rowsPerPage;
//     final int endRow = startRow + _rowsPerPage < totalRows
//         ? startRow + _rowsPerPage
//         : totalRows;
//
//     final paginatedCountries = countries.sublist(startRow, endRow);
//     final dataSource = CountryDataSource(paginatedCountries);
//
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 17.h),
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Center(
//               child: PaginatedDataTable(
//                 header: Text('Countries'),
//                 columns: [
//                   DataColumn(label: Text('Country')),
//                   DataColumn(label: Text('Capital')),
//                 ],
//                 source: dataSource,
//                 rowsPerPage: _rowsPerPage,
//                 onRowsPerPageChanged: (rowsPerPage) {
//                   setState(() {
//                     _rowsPerPage = rowsPerPage ?? _rowsPerPage;
//                   });
//                 },
//                 availableRowsPerPage: [7],
//                 onPageChanged: (newPage) {
//                   setState(() {
//                     _currentPage = newPage;
//                   });
//                 },
//               ),
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//               IconButton(
//                 icon: Icon(Icons.chevron_left),
//                 onPressed: _currentPage > 0
//                     ? () {
//                         setState(() {
//                           _currentPage--;
//                         });
//                       }
//                     : null,
//               ),
//               for (int i = 0; i < totalPages; i++)
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       _currentPage = i;
//                     });
//                   },
//                   child: Padding(
//                     padding:  EdgeInsets.symmetric(horizontal: 8.0.w),
//                     child: Text(
//                       (i + 1).toString(),
//                       style: TextStyle(
//                         fontWeight: _currentPage == i
//                             ? FontWeight.bold
//                             : FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//                   IconButton(
//                     icon: Icon(Icons.chevron_right),
//                     onPressed: _currentPage > 0
//                         ? () {
//                       setState(() {
//                         _currentPage++;
//                       });
//                     }
//                         : null,
//                   ),
//
//                 ])
//           ]),
//         ),
//       ),
//     );
//   }
// }

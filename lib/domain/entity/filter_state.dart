class FilterState {
  final String title;
  bool isSelected;
  FilterType filterType;

  FilterState(this.title, this.isSelected, {required this.filterType});

  static List<FilterState> get productsFilters => [
        FilterState(' All ', true, filterType: FilterType.all),
        FilterState('Active', false, filterType: FilterType.active),
        FilterState('Expired', false, filterType: FilterType.expired),
        FilterState('Pending', false, filterType: FilterType.pending),
      ];
}

enum FilterType { all, active, expired, pending }

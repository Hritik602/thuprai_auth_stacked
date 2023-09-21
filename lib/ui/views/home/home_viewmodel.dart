import 'package:thuprai_stacked_architecture/app/app.bottomsheets.dart';
import 'package:thuprai_stacked_architecture/app/app.dialogs.dart';
import 'package:thuprai_stacked_architecture/app/app.locator.dart';
import 'package:thuprai_stacked_architecture/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked_architecture/ui/views/home/model/book_model.dart';
import 'package:thuprai_stacked_architecture/ui/views/home/service/home_service.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  final _homeService = HomeService();
  final _navigationService = locator<NavigationService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  Future<BookReleaseModel> fetchBooks(int page) async {
    return await _homeService.fetchAllNewReleaseBooks(page);
  }

  void navigateToBookDetailPage(String slug) {
    // _navigationService.navigateTo(
    //   bookDetailPageViewRoute,
    //   arguments: BookDetailPageView(bookSlug: slug),
    // );
  }

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}

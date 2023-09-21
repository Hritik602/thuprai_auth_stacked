import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked_architecture/ui/views/home/model/book_model.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
              color: Colors.black,
            )
          ],
        ),
        body: SafeArea(
            minimum: const EdgeInsets.all(10),
            child: FutureBuilder(
              future: viewModel.fetchBooks(1),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                BookReleaseModel bookReleaseModel =
                    snapshot.data as BookReleaseModel;

                return ListView.builder(
                    itemCount: bookReleaseModel.results?.length,
                    itemBuilder: (context, index) {
                      return Text(
                          bookReleaseModel.results![index].englishTitle ?? "");
                      // return BookListTile(
                      //   books: bookReleaseModel.results![index],
                      //   onTap: () {
                      //     // viewModel.navigateToBookDetailPage(
                      //     //     bookReleaseModel.results![index].slug!);
                      //   },
                      // );
                    });
              },
            )));
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

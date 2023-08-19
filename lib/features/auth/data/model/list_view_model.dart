import '../../../../core/app_assets.dart';
import '../../../../core/app_strings.dart';

class PageViewModel {
  final String imagePath;
  final String title;
  

  PageViewModel({
    required this.imagePath,
    required this.title,
  
  }
  
  );

  static List<PageViewModel> HomeScreen=[
    PageViewModel(imagePath: AppAssets.spider1, title: AppStrings.spiderNoWay, ),   
    PageViewModel(imagePath: AppAssets.spider1, title: AppStrings.spiderNoWay, ),   
    PageViewModel(imagePath: AppAssets.spider1, title: AppStrings.spiderNoWay, ),   
      
   ];
}
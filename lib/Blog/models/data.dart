import 'package:DoctorCom/Blog/models/categorie_model.dart';

List<CategorieModel> getCategories() {
  List<CategorieModel> myCategories = List<CategorieModel>();
  CategorieModel categorieModel;


  //1
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "COVID-19";
  categorieModel.imageAssetUrl =
      "https://www.thehrkiosk.co.uk/wp-content/uploads/2020/03/200130165125-corona-virus-cdc-image-full-169-1-150x150.jpg";
  myCategories.add(categorieModel);

  //2
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Allergies";
  categorieModel.imageAssetUrl =
      "https://d2jx2rerrg6sh3.cloudfront.net/image-handler/ts/20210414070027/ri/673/picture/2021/4/shutterstock_1686033052.jpg";
  myCategories.add(categorieModel);

  //3
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Alzheimer's";
  categorieModel.imageAssetUrl =
      "https://4cy9nx1nwb4f3giw7x37lcaw-wpengine.netdna-ssl.com/wp-content/uploads/sites/10/2018/12/alzheimersprogressionpet_1227001.jpg";
  myCategories.add(categorieModel);

  //4
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Arthritis";
  categorieModel.imageAssetUrl =
      "https://www.mbortho.com/patients/education/photos/Knee-Arthritisv.jpg";
  myCategories.add(categorieModel);

  //5
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Breast Cancer";
  categorieModel.imageAssetUrl =
      "https://static-01.hindawi.com/styles/hindawi_wide/s3/2019-11/Cancer_Awareness-2019_blog_v1.0_noText.jpg?itok=CR034IE-";
  myCategories.add(categorieModel);

  //5
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Science";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
  myCategories.add(categorieModel);

  //5
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Depression";
  categorieModel.imageAssetUrl =
      "https://www.health.harvard.edu/media/content/images/Sad-borderline-personality-disorder-Woman-In-Depression-And-Despai-63903205.jpg";
  myCategories.add(categorieModel);



  return myCategories;
}

import 'package:lekhny/data/model/readingHistoryModelClass.dart';
import 'package:lekhny/data/model/writerPostsModelClass.dart';
import 'package:lekhny/data/model/writerPostsModelClass.dart';
import 'package:lekhny/data/network/baseApiServices.dart';
import 'package:lekhny/data/network/networkApiServices.dart';
import 'package:lekhny/utils/appUrl.dart';

class WriterPostsRepository{

  final BaseApiServices _apiServices = NetworkApiServices();
  WriterPostsModelClass? writerPostsModel;

  Future<WriterPostsModelClass?> writerPostsApi(String writerId, page, dynamic data, dynamic headers) async{

    try{
      dynamic response = await _apiServices.getPostApiResponse('${AppUrl.writerPostsUrl}$writerId&pageId=$page', data, headers);
      print("this is resposne ${response}");
      writerPostsModel = WriterPostsModelClass.fromJson(response);
      return writerPostsModel;
    }catch(e){
      throw(e);
    }
  }
}
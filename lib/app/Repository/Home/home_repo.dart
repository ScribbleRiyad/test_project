import 'package:dio/dio.dart';

import '../../Api/base_client.dart';
import '../../Api/urls.dart';
import '../../Model/User/user_model.dart';

class HomeRepository{
  static getUserName({userName}) async {
    try {
      Response response = await BaseClient.get(
          url: '${Urls.userName}$userName', payload: null);

      if (response.statusCode == 200) {
        print(response);
        return  response;
      }
    } on DioError catch (e) {
      if (e.response != null) {
        int statusCode = e.response!.statusCode!;
        String errorMessage = '';

        switch (statusCode) {
          case 400:
           print('Bad Request of Response');

            break;

          case 403:
          print('Response Forbidden');
            break;
          case 404:
          print('Response Not Found');
            errorMessage = 'Response Not Found';
            break;
          case 500:
           print('Opps! Something went wrong on our end! Please try again later or send us a message.');
             errorMessage =
                'Opps! Something went wrong on our end! Please try again later or send us a message.';
            break;
          case 503:
           print('Service Unavailable');
            break;
          default:
            errorMessage = 'Unknown Error: $statusCode';
            break;
        }

         print(errorMessage);
        return errorMessage;
      }
    }

}}
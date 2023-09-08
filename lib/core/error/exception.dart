import 'package:courseproject/core/Networkerror/error_Network_model.dart';

class ServerError implements Exception{
  final ErrorNetworkModel errorNetworkModel;
  ServerError({
    required this.errorNetworkModel
});
}
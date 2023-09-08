import 'package:equatable/equatable.dart';

class ErrorNetworkModel extends Equatable {
  final int statusCode;
  final String message;

  final bool success;

 const ErrorNetworkModel(
      {required this.statusCode,
      required this.message,
      required this.success});

  factory ErrorNetworkModel.fromJson({required Map<String, dynamic> json}) {
    return ErrorNetworkModel(
        statusCode: json["status_code"],
        message: json["status_message"],
        success: json["success"]);
  }

  @override
  List<Object?> get props => [statusCode, message, success];
}

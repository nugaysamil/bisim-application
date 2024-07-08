// ignore_for_file: public_member_api_docs, inference_failure_on_function_invocation

import 'package:bisim_app/product/model/network_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiClient {
  final Dio _dio = Dio();

  final String apiUrl = 'http://api.citybik.es/v2/networks/baksi-bisim';

  Future<Network> getNetworkData() async {
    final response = await _dio.get(apiUrl);

    if (response.statusCode == 200) {
      final data = response.data as Map<String, dynamic>;
      print(data);
      return Network.fromJson(data['network'] as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load network data');
    }
  }
}

final apiClientProvider = Provider((ref) => ApiClient());

final networkDataProvider = FutureProvider<Network>((ref) async {
  final apiClient = ref.read(apiClientProvider);
  return apiClient.getNetworkData();
});

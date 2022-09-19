import 'package:dio/dio.dart';
import 'package:flutter_full_learn/303/reqres_resource/service/reqres_service.dart';
import 'package:flutter_full_learn/303/reqres_resource/viewModel/reqres_provider.dart';
import 'package:flutter_full_learn/303/testable/user_save_model.dart';
import 'package:flutter_full_learn/product/global/resource_context.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateMocks([ReqresProvider])
void main() {
  setUp(() {
    Map<String, Object> values = <String, Object>{'gm': "gurkan"};
    SharedPreferences.setMockInitialValues(values);
  });

  test('saveToLocale - test', () {
    var mockProvider = ReqresProvider(ReqresService(Dio()));
    final resourceContext = ResourceContext();

    final result = mockProvider.saveToLocal(resourceContext, []);
    expect(result, []);
  });

  test('userTest - Test', () async {
    var userViewModel = UserSaveViewModel();
    final result = userViewModel.getReadData("gm", MockStore());

    expect(result, false);
  });
}

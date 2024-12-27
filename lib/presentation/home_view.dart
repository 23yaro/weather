import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/domain/domain.dart';
import 'package:weather/presentation/home_alert_dialog_widget.dart';
import 'package:weather/presentation/weather_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const Map<HomeState, String> _alertDialogString = {};

  String getAlertDialogString(HomeState homeState) => switch (homeState) {
        HomeState.internetDisabled => 'Отсутствует подключение к интернету',
        HomeState.loadingError =>
          'Не удалось получить геолокацию, отключите VPN или проверте включена ли геолокация',
        HomeState.locationDisabled => 'Включите геолокацию',
        HomeState.permissionDenied => 'Нам нужен доступ к геолокации',
        HomeState.permissionAlwaysDenied =>
          'Вы запретили доступ к геолокации, включите его в настройках вашего устройства',
        _ => 'Произошла неизвестная ошибка',
      };

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeVM>();

    Future<void> onPressed() async {
      await vm.getWeather();
      if (vm.state != HomeState.loaded) {
        await showDialog(
          context: context,
          builder: (_) =>
              HomeAlertDialogWidget(text: getAlertDialogString(vm.state)),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Погода'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (vm.weather != null) WeatherWidget(weather: vm.weather!),
            if (vm.state != HomeState.load) SizedBox(height: 36),
            if (vm.state == HomeState.load) CircularProgressIndicator(),
            ElevatedButton(
              onPressed: onPressed,
              child: const Text('Узнать погоду!'),
            ),
          ],
        ),
      ),
    );
  }
}

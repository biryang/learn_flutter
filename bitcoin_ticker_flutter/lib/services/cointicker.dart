import 'networking.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const coinDataUrl = 'https://rest.coinapi.io/v1/exchangerate';

class CoinTicker {
  Future<dynamic> getCoinData(
      {String base = 'BTC', String quote = 'USD'}) async {
    NetworkHelper networkHelper =
        NetworkHelper('${coinDataUrl}/${base}/${quote}?apikey=${env['API_KEY']}');

    var coinData = await networkHelper.getData();
    return coinData;
  }
}

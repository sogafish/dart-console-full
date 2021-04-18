import 'dart:io';

Future main() async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    8080,
  );

  print('Listening on localhost:${server.port}');

  await for (HttpRequest request in server) {
    request.response.write({'message': 'AppIsRunning'});
    await request.response.close();
  }
}

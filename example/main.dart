import 'package:flutter_client_sse/flutter_client_sse.dart';

void main() {
  SSEClient sseClient = new SSEClient();

  sseClient.subscribeToSSE(url: 'http://192.168.2.161:8085/getDataStream', header: {
    "Cache-Control": "no-cache",
    "Connection": "Keep-Alive",
  }).listen((event) {
    print('Id: ' + event.id!);
    print('Event: ' + event.event!);
    print('Data: ' + event.data!);
  });
}

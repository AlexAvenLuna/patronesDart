import 'medio-pago.dart';

//Simular servicio de pagos en pesos
class ServicioPago implements MedioPago {
  @override
  void pagar(double pesos) {
    print('Servicio: pago de ${pesos.toStringAsFixed(2)} pesos');
  }
}

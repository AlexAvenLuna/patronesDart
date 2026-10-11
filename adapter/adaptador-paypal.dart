import 'pasarela-paypal.dart';
import 'procesador-pago.dart';

class AdaptadorPaypal implements ProcesadorPago {
  final PasarelaPaypal pasarela;

  AdaptadorPaypal(this.pasarela);

  @override
  void pagar(double monto) {
    pasarela.enviarPagoEnDolares(monto);
  }
}

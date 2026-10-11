import 'pasarela-stripe.dart';
import 'procesador-pago.dart';

class AdaptadorStripe implements ProcesadorPago {
  final PasarelaStripe pasarela;

  AdaptadorStripe(this.pasarela);

  @override
  void pagar(double monto) {
    // La conversion a centavos vive en el adaptador, no en el cliente
    final centavos = (monto * 100).round();
    pasarela.crearCargo(centavos);
  }
}

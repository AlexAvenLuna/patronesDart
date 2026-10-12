import 'servicio-pago.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main() {
  final tienda = Tienda(ServicioPago(), TerminalExterna());

  tienda.finaizarCompra(100, 'servicioPago');
  tienda.finaizarCompra(100, 'terminalExterna');

  //La tienda mezcla su tarea de finalizar la compra
  // con la tarea de convertir pesos a dolares, lo cual no es ideal
}

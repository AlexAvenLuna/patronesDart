import 'servicio-pago.dart';
import 'terminal-adapter.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main() {
  final tiendaConServicio = Tienda(ServicioPago());

  final tiendaConTerminal = Tienda(TerminalAdapter(TerminalExterna()));

  tiendaConServicio.finaizarCompra(158.50); // pesos
  tiendaConTerminal.finaizarCompra(250.50); // dolares

  //La tienda ya no mezcla su tarea de finalizar la compra
  // con la tarea de convertir pesos a dolares,
  //pero ahora tenemos dons instancias de tienda
}

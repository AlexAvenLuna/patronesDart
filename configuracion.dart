// Constructor con Singleton
class Configuracion {
  // Constructor privado
  // No recibe parametros y no puede ser llamado desde fuera de la clase
  Configuracion._();

  // Instancia unica de la clase
  static final Configuracion _instancia = Configuracion._();

  // Metodo factory devuelve la instancia unica
  // Un constructor no tiene que crear una nueva inastancia
  factory Configuracion() => _instancia;

  String idioma = "es"; // Valor por defecto
}

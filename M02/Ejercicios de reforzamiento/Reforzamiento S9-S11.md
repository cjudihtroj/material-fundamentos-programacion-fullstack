<img src="https://posgrado.utec.edu.pe/sites/default/files/2023-08/Testimonial-home-2.jpg" alt="UTEC" width="900" height="200">

# Ejercicios de reforzamiento: Sesión 9, Sesión 10 y Sesión 11

Repaso de: herencia (`extends`, `super`), sobreescritura de métodos (`@Override`), polimorfismo, `instanceof`, `toString()`, `ArrayList` con operaciones CRUD (`add`, `get`, `set`, `remove`, `size`) sobre listas de objetos, e interfaces (`interface`, `implements`) con polimorfismo.

---

## Ejercicio 1: Clase base Animal

Crea una clase base `Animal` (nombre, edad) con un método `hacerSonido()` que imprima `"El animal hace un sonido"`. Crea dos subclases `Perro` y `Gato` que hereden de `Animal` usando `extends` y sobrescriban `hacerSonido()` con su propio sonido (`@Override`).

## Ejercicio 2: `super` en el constructor

A las clases `Perro` y `Gato` del ejercicio anterior, agrégales un atributo propio (`raza` en `Perro`, `color` en `Gato`). En sus constructores, usa `super(nombre, edad)` para inicializar los atributos heredados y luego inicializa el atributo propio.

## Ejercicio 3: Polimorfismo con arreglo de Animal

En un `main`, crea un arreglo de tipo `Animal` que contenga 2 objetos `Perro` y 2 `Gato`. Recorre el arreglo con un `for` llamando a `hacerSonido()` en cada elemento y comprueba que se ejecuta la versión correcta según el tipo real del objeto (comportamiento polimórfico).

## Ejercicio 4: `instanceof`

Sobre el mismo arreglo de `Animal` del ejercicio 3, recorre cada elemento y usa `instanceof` para identificar si es un `Perro` o un `Gato`, e imprime un mensaje distinto para cada caso (por ejemplo, mostrando el atributo propio de cada subclase).

## Ejercicio 5: Jerarquía Figura -> Cuadrado, Circulo, Triangulo

Crea una clase base `Figura` con un método `calcularArea()` que retorne `0` por defecto. Crea 3 subclases (`Cuadrado`, `Circulo`, `Triangulo`) que sobrescriban `calcularArea()` con su propia fórmula. Crea un arreglo de `Figura` con una de cada tipo y muestra el área de cada una junto con la suma total.

## Ejercicio 6: toString() sobrescrito en herencia

A la clase `Perro` del ejercicio 2, sobrescribe `toString()` para que retorne un texto con todos sus datos (heredados y propios). Imprime un objeto `Perro` directamente con `println` y comprueba el resultado.

## Ejercicio 7: Jerarquía Empleado -> Vendedor, Gerente

Crea una clase base `Empleado` (nombre, sueldoBase) con un método `calcularSueldo()` que retorne el sueldo base. Crea `Vendedor` (agrega comisión por ventas) y `Gerente` (agrega bono fijo), ambas sobrescribiendo `calcularSueldo()`. Crea un `ArrayList<Empleado>` con varios de cada tipo y, recorriéndolo, calcula la suma total de sueldos a pagar.

## Ejercicio 8: ArrayList - Crear y leer objetos

Usando la clase `CProducto` (nombre, precio, stock) crea un `ArrayList<CProducto>` con al menos 5 productos (`add`). Muestra el producto en la posición 0 y en la última posición usando `get` y `size()`.

## Ejercicio 9: ArrayList - Actualizar y eliminar objetos

Sobre el `ArrayList<CProducto>` del ejercicio anterior, usa `set` para reemplazar el producto en la posición 2 por uno nuevo, y `remove` para eliminar el producto en la posición 0. Imprime la lista completa (recorrida con `for`) antes y después de cada cambio.

## Ejercicio 10: Buscar y filtrar en ArrayList

Sobre el mismo `ArrayList<CProducto>`, crea un método `buscarPorNombre(ArrayList<CProducto> lista, String nombre)` que retorne el índice del producto (o `-1` si no existe). Crea también un método `filtrarStockBajo(ArrayList<CProducto> lista, int minimo)` que retorne un nuevo `ArrayList<CProducto>` solo con los productos cuyo stock sea menor al mínimo indicado.

## Ejercicio 11: Usuario de mayor edad en un ArrayList

Crea una clase `CUsuario` (nombre, edad). Crea un `ArrayList<CUsuario>` con al menos 6 usuarios. Recorre la lista con un `for` para encontrar y mostrar el usuario de mayor edad (sin usar librerías adicionales, comparando manualmente).

## Ejercicio 12: Interfaz Pagable

Crea una interfaz `Pagable` con el método `calcularPago()`. Crea dos clases `Empleado` y `Proveedor` que implementen la interfaz (`implements`), cada una calculando el pago de forma distinta. Crea un `ArrayList<Pagable>` que mezcle ambos tipos y, recorriéndolo, muestra el pago de cada uno (polimorfismo mediante interfaz).

## Ejercicio 13: Interfaz Notificable

Crea una interfaz `Notificable` con el método `enviarNotificacion(String mensaje)`. Crea las clases `Email`, `SMS` y `Push` que la implementen, cada una imprimiendo el mensaje con un formato distinto (por ejemplo `"[SMS] " + mensaje`). Crea un `ArrayList<Notificable>` que mezcle las 3 clases y envía el mismo mensaje a todas recorriendo la lista.

## Ejercicio 14: Combinando herencia e interfaz

Crea una clase base `Vehiculo` (marca, modelo) con un método `mostrarInfo()`. Crea una interfaz `Rentable` con el método `calcularAlquilerDiario()`. Crea una clase `Auto` que herede de `Vehiculo` **y** implemente `Rentable`, calculando el alquiler según una tarifa base. Crea un `ArrayList<Vehiculo>` para mostrar la info de todos y, por separado, recorre solo los que sean `instanceof Rentable` mostrando su tarifa de alquiler.

## Ejercicio 15 (integrador): Mini sistema de biblioteca con préstamos y notificaciones

Construye un mini sistema de consola (sin persistencia) que integre lo visto en el módulo:

1. Clase `CLibro` (titulo, autor, id) y clase `CBiblioteca` con un `ArrayList<CLibro>` y métodos `agregarLibro`, `eliminarLibro` y `buscarLibroXTitulo` (retorna el índice, o `-1` si no existe).
2. Clase base `Usuario` (nombre, id) con `mostrarInfo()`. Subclases `Administrador` y `Lector` que hereden de `Usuario` y sobrescriban `mostrarInfo()`.
3. Clase `Prestamo` que relacione un `CLibro` con un `Usuario`, y agregue un contador simple de días de retraso (`diasRetraso`). Un método `calcularMora(Prestamo prestamo)` que retorne S/ 1 por cada día de retraso.
4. `CBiblioteca` debe tener también un `ArrayList<Usuario>` y un `ArrayList<Prestamo>`, con métodos para registrar un préstamo y para listar los préstamos vencidos (`diasRetraso > 0`) junto con su mora.
5. Interfaz `Notificable` con `enviarNotificacion(String mensaje)`, implementada por `Email` y `SMS`. Cuando un préstamo esté vencido, recorre un `ArrayList<Notificable>` (mezclando `Email` y `SMS`) y notifica a cada uno con el mismo mensaje de aviso (polimorfismo mediante interfaz).

Desde `main`: registra al menos 3 libros, 2 usuarios (uno `Administrador` y uno `Lector`) y 2 préstamos (uno vencido y uno al día). Muestra el listado de préstamos vencidos con su mora y dispara las notificaciones correspondientes.

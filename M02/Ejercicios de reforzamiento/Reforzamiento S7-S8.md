<img src="https://posgrado.utec.edu.pe/sites/default/files/2023-08/Testimonial-home-2.jpg" alt="UTEC" width="900" height="200">

# Ejercicios de reforzamiento: Sesión 7 y Sesión 8

Repaso de: clases y objetos, atributos y métodos, constructores (incluida sobrecarga), encapsulamiento (atributos `private` con getters/setters), validación dentro de setters, la palabra clave `this`, `toString()`, composición, agregación, asociación bidireccional y `ArrayList` (crear, `add`, `get`, `set`, `remove`, `size`, recorrer con `for`).

---

## Ejercicio 1: Clase CPersona

Crea una clase `CPersona` con atributos privados `nombre`, `edad` y `dni`. Agrega un constructor que reciba los 3 datos y sus respectivos getters y setters. En una clase `Principal`, crea 2 objetos `CPersona` y muestra sus datos.

## Ejercicio 2: Validación en el setter

A la clase `CPersona` del ejercicio anterior, agrégale validación en `setEdad(int edad)`: si el valor recibido es negativo, no debe actualizar el atributo y debe imprimir un mensaje de error. Prueba el setter con un valor válido y uno inválido.

## Ejercicio 3: Clase CProducto con sobrecarga de constructores

Crea una clase `CProducto` (nombre, precio, stock) con **dos constructores**: uno que reciba los 3 datos, y otro que solo reciba `nombre` y `precio`, asignando `stock = 0` por defecto. Crea objetos usando ambos constructores.

## Ejercicio 4: Clase CTriangulo con validación

Crea una clase `CTriangulo` con atributos `ladoA`, `ladoB` y `ladoC`. En el constructor, valida que ningún lado sea menor o igual a 0 (si algún lado es inválido, asigna 1 por defecto a ese lado). Agrega un método `calcularPerimetro()`.

## Ejercicio 5: Uso de `this` para diferenciar atributos

Crea una clase `CCirculo` con un atributo `radio` y un constructor `CCirculo(double radio)` que use `this.radio = radio` para diferenciar el parámetro del atributo. Agrega un método `calcularArea()` y otro `calcularPerimetro()` (usa `Math.PI`).

## Ejercicio 6: Clase CCuentaBancaria

Crea una clase `CCuentaBancaria` con atributos privados `titular` y `saldo`. Agrega los métodos `depositar(double monto)` y `retirar(double monto)`, ambos con validación (no se permite depositar montos negativos ni retirar más del saldo disponible). Agrega un método `mostrarSaldo()`.

## Ejercicio 7: toString()

Sobrescribe el método `toString()` en la clase `CProducto` del ejercicio 3 para que retorne un texto con el formato: `"Producto: <nombre> | Precio: S/ <precio> | Stock: <stock>"`. Imprime un objeto `CProducto` directamente con `System.out.println(producto)` y comprueba que use tu `toString()`.

## Ejercicio 8: Clase CEmpleado con encapsulamiento

Crea una clase `CEmpleado` con atributos privados `nombre`, `sueldoBase` y `añosServicio`. Agrega un método `calcularBono()` que retorne S/ 100 por cada año de servicio. Agrega getters y setters, validando que `sueldoBase` no pueda ser negativo.

## Ejercicio 9: Composición - Clase CMotor y CAuto

Crea una clase `CMotor` (atributos: `cilindrada`, `tipoCombustible`). Crea una clase `CAuto` que **tenga un** `CMotor` como atributo (composición: el auto se crea siempre con su propio motor, inicializado en el constructor de `CAuto`). Agrega un método `mostrarInfo()` en `CAuto` que también muestre los datos del motor.

## Ejercicio 10: Agregación - Clase CCurso y CProfesor

Crea una clase `CProfesor` (nombre, especialidad). Crea una clase `CCurso` (nombre, `CProfesor` asignado) donde el profesor se recibe ya creado desde fuera (agregación: el profesor puede existir sin el curso y se le puede asignar por constructor o por un método `asignarProfesor(CProfesor profesor)`).

## Ejercicio 11: Asociación bidireccional - CMedico y CPaciente

Crea las clases `CMedico` (nombre, especialidad, `ArrayList<CPaciente>`) y `CPaciente` (nombre, `CMedico` asignado). Al asignar un paciente a un médico (método `agregarPaciente(CPaciente paciente)` en `CMedico`), el paciente también debe quedar enlazado a su médico. Muestra desde un médico la lista de sus pacientes, y desde un paciente el nombre de su médico.

## Ejercicio 12: ArrayList de enteros

Crea un `ArrayList<Integer>` vacío. Agrega 6 números por teclado con un `for`. Luego recorre la lista mostrando cada elemento junto con su posición (índice).

## Ejercicio 13: CRUD básico con ArrayList

Crea un `ArrayList<String>` con 5 nombres. Realiza sobre la lista: `add` (agrega un nombre nuevo al final), `get` (muestra el nombre en la posición 2), `set` (reemplaza el nombre en la posición 0 por otro), y `remove` (elimina el nombre en la última posición). Imprime la lista completa después de cada operación.

## Ejercicio 14: Suma y promedio con ArrayList

Crea un `ArrayList<Double>` con las notas de un curso (mínimo 5 notas). Crea un método `calcularPromedio(ArrayList<Double> notas)` que recorra la lista con un `for` y retorne el promedio.

## Ejercicio 15: Buscar en un ArrayList de objetos

Usando la clase `CProducto` del ejercicio 3, crea un `ArrayList<CProducto>` con al menos 4 productos. Crea un método `buscarPorNombre(ArrayList<CProducto> productos, String nombre)` que retorne el índice del producto encontrado (o `-1` si no existe), comparando con `.equals()`.

## Ejercicio 16: Composición con ArrayList - CBiblioteca y CLibro

Crea una clase `CLibro` (titulo, autor). Crea una clase `CBiblioteca` (nombre, `ArrayList<CLibro>` inicializado en el propio atributo). Agrega los métodos `agregarLibro(CLibro libro)` y `eliminarLibro(int posicion)`. Agrega también un método `mostrarLibros()` que recorra la lista con un `for` e imprima cada libro.

## Ejercicio 17: Eliminar un producto sin stock

Sobre el `ArrayList<CProducto>` del ejercicio 15, crea un método `eliminarSinStock(ArrayList<CProducto> productos)` que recorra la lista y elimine (con `remove`) todos los productos cuyo `stock` sea 0.

## Ejercicio 18 (integrador): Sistema simple de gestión de una tienda

Crea una clase `CProducto` (nombre, precio, stock, con validación de que precio y stock no sean negativos) y una clase `CTienda` (nombre, `ArrayList<CProducto>`, inicializado en el atributo) con los métodos:

- `agregarProducto(CProducto producto)`.
- `venderProducto(String nombre, int cantidad)`: busca el producto por nombre (usa el método del ejercicio 15 como referencia), valida que haya stock suficiente y, si es así, descuenta la cantidad vendida del stock.
- `mostrarInventario()`: recorre la lista e imprime cada producto usando su `toString()`.
- `calcularValorInventario()`: retorna la suma de `precio * stock` de todos los productos.

Desde `Principal`, crea una tienda, agrega al menos 4 productos, realiza 2 ventas (una válida y una que exceda el stock disponible) y muestra el inventario final junto con su valor total.

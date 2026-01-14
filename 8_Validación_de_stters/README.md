# Validación en Setters

Este módulo explica cómo implementar validaciones en los setters de contratos inteligentes en Solidity. Los setters son funciones que modifican variables de estado, y las validaciones aseguran que los datos sean correctos antes de almacenarlos en la blockchain.

## ValidacionSetters.sol

### Descripción
Contrato básico que demuestra validación en un setter simple para la variable `edad`.

### Variables de Estado
- `uint256 private edad`: Almacena la edad del usuario.

### Funciones
- `setEdad(uint256 _edad)`: Setter con validación. Verifica que la edad esté entre 1 y 120 años usando `require`. Si falla, revierte la transacción con un mensaje de error.
- `getEdad()`: Getter que retorna el valor de `edad`.

### Ejemplo de Uso
```solidity
// Llamada válida
setEdad(25); // Establece edad a 25

// Llamada inválida
setEdad(150); // Revierte con "Edad invalida: debe estar entre 1 y 120"
```

## 2ValidacionSetters.sol

### Descripción
Versión más robusta con múltiples setters validados, eventos para logging y documentación NatSpec.

### Variables de Estado
- `uint256 private edad`: Edad en años.
- `string private nombre`: Nombre del usuario.
- `address private propietario`: Dirección del propietario.
- `uint256 private saldo`: Saldo en wei.

### Eventos
- `EdadActualizada(uint256 nuevaEdad)`: Emitido al cambiar la edad.
- `NombreActualizado(string nuevoNombre)`: Emitido al cambiar el nombre.
- `PropietarioActualizado(address nuevoPropietario)`: Emitido al cambiar el propietario.
- `SaldoActualizado(uint256 nuevoSaldo)`: Emitido al cambiar el saldo.

### Funciones
- `setEdad(uint256 _edad)`: Valida que la edad esté entre 0 y 150. Emite evento.
- `setNombre(string memory _nombre)`: Valida que el nombre no esté vacío y tenga ≤50 caracteres. Emite evento.
- `setPropietario(address _propietario)`: Valida que la dirección no sea `address(0)`. Emite evento.
- `setSaldo(uint256 _saldo)`: Valida que el saldo sea positivo y ≤100 ether. Emite evento.
- Getters correspondientes: `getEdad()`, `getNombre()`, `getPropietario()`, `getSaldo()`.

### Ejemplo de Uso
```solidity
// Establecer valores válidos
setEdad(30);
setNombre("Juan");
setPropietario(0x123...);
setSaldo(1 ether);

// Intentar valor inválido
setSaldo(200 ether); // Revierte con "Saldo excede el limite maximo de 100 ether"
```

### Conceptos Clave
- **Require**: Revertir transacciones si la condición falla.
- **Eventos**: Para logging y seguimiento de cambios.
- **NatSpec**: Comentarios para documentación automática.
- **Validaciones**: Prevenir datos inválidos en la blockchain, ahorrando gas y mejorando seguridad.
# Modificadores de Funciones en Solidity

Esta carpeta explora los modificadores de funciones en Solidity: `view`, `pure` y `payable`. Estos modificadores indican qué tipo de operaciones puede realizar una función, afectando el consumo de gas y la funcionalidad.

## Archivos en esta carpeta

### ModiFuncView.sol
Demuestra el modificador `view`. Las funciones `view` pueden leer el estado del contrato (variables de estado) pero no modificarlo. Se usan para consultas de datos y no consumen gas cuando se llaman externamente.

### ModiFuncPure.sol
Ilustra el modificador `pure`. Las funciones `pure` solo trabajan con los parámetros que reciben y pueden hacer cálculos matemáticos, pero no pueden leer ni escribir en el almacenamiento del contrato. Son las más eficientes en términos de gas.

### ModiFuncPayable.sol
Muestra el modificador `payable`. Permite que la función reciba pagos en Ether. Esencial para contratos que manejan transacciones financieras. Incluye eventos para registrar pagos y funciones para consultar balances.

### ModiEjemplo.sol
Un ejemplo práctico que combina todos los modificadores en un contrato de banco simple. Incluye:
- `pure`: Para cálculos matemáticos
- `view`: Para consultar balances
- `payable`: Para depositar fondos
- Funciones sin modificador: Para operaciones que modifican el estado

## Conceptos clave

- **`view`**: Lee estado, no lo modifica. Gas-free para llamadas externas.
- **`pure`**: Solo parámetros y cálculos. Máxima eficiencia.
- **`payable`**: Acepta Ether. Requiere para recibir pagos.
- **Sin modificador**: Puede leer y escribir estado. Consume más gas.

Elegir el modificador correcto optimiza el gas y asegura que las funciones hagan exactamente lo que deben hacer. Usa `pure` para cálculos, `view` para consultas, `payable` para transacciones y ninguno para modificaciones de estado.
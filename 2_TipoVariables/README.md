# Tipos de Variables en Solidity

Esta carpeta explora los diferentes tipos de variables en Solidity: variables de estado, locales y globales. Estos conceptos son fundamentales para entender cómo se almacenan y manejan los datos en contratos inteligentes.

## Archivos en esta carpeta

### 1_VarLocal.sol
Demuestra el uso de variables locales en Solidity. Las variables locales son temporales y existen únicamente durante la ejecución de una función. No se almacenan en la blockchain y se usan para cálculos intermedios.

### 2_VarEstado.sol
Ilustra las variables de estado, que se almacenan permanentemente en la blockchain. Se declaran fuera de las funciones y mantienen su valor entre llamadas al contrato. En este ejemplo, se usa un contador que se incrementa con cada llamada a la función.

### 3_VarGlobal.sol
Muestra el uso de variables globales en Solidity. Estas son variables especiales proporcionadas por el lenguaje, como `msg.sender` (dirección del llamador) y `msg.value` (valor enviado en wei). Contienen información contextual sobre la transacción y la blockchain.

### 4_VarEjemplo.sol
Un ejemplo completo que combina todos los tipos de variables en un solo contrato. Incluye:
- Variables de estado para almacenar datos persistentes
- Variables locales para cálculos temporales
- Variables globales para acceder a información de la transacción
- Funciones auxiliares para conversiones de tipos

Este contrato demuestra cómo interactúan los diferentes tipos de variables en un escenario práctico.

## Conceptos clave

- **Variables de estado**: Permanecen en la blockchain, consumen gas para almacenamiento.
- **Variables locales**: Temporales, no cuestan gas adicional para almacenamiento.
- **Variables globales**: Información del entorno de ejecución (bloque, transacción, etc.).

Estos ejemplos te ayudarán a comprender cuándo y cómo usar cada tipo de variable en tus contratos inteligentes.
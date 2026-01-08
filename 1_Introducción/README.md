# Introducción a Solidity

Esta carpeta contiene ejemplos básicos para introducirte al lenguaje de programación Solidity, utilizado para crear contratos inteligentes en la blockchain de Ethereum. Aquí encontrarás contratos simples que cubren conceptos fundamentales como variables, tipos de datos y operaciones básicas.

## Archivos en esta carpeta

### 0_HolaMundo.sol
Un contrato simple que demuestra el "Hola Mundo" en Solidity. Contiene variables públicas con mensajes de saludo.

### 00_HolaMundo.sol
Otra versión del contrato "Hola Mundo" que incluye funciones para agregar un usuario y generar un saludo personalizado.

### 1_TiposDeDatos.sol
Ejemplo que ilustra los tipos de datos básicos en Solidity, incluyendo:
- `bool`: Valores booleanos (true/false)
- `uint`: Enteros sin signo (positivos)
- `int`: Enteros con signo (positivos y negativos)
- `address`: Direcciones de Ethereum
- `string`: Cadenas de texto

También explica el uso de diferentes tamaños de `uint` (uint8, uint16, uint256) y su impacto en el almacenamiento y el gas.

### 2_1_VarEstado.sol
Demuestra el uso de variables de estado en Solidity. Las variables de estado se almacenan permanentemente en la blockchain y se declaran fuera de las funciones. Incluye un contador que se incrementa mediante una función.

### 2_2_VarLocal.sol
(No leído, pero probablemente cubre variables locales, que existen solo dentro de funciones)

### 2_3_VarGlobal.sol
(No leído, pero probablemente cubre variables globales, como `msg.sender`, `block.timestamp`, etc.)

### 3_1_Calculadora.sol
Un contrato de calculadora básica que implementa operaciones aritméticas simples: suma, resta, multiplicación y división.

### 3_2_Calculadora_v2.sol
(No leído, probablemente una versión mejorada de la calculadora)

### 3_3_Calculadora_v2_comp.sol
(No leído, posiblemente una versión compilada o comparativa)

## Cómo usar estos ejemplos

1. Instala un entorno de desarrollo como Remix IDE o Hardhat.
2. Compila y despliega estos contratos en una red de prueba como Sepolia o en un entorno local.
3. Interactúa con las funciones a través de la consola o una interfaz web3.

Estos ejemplos están diseñados para principiantes y sirven como base para entender los fundamentos de Solidity antes de pasar a temas más avanzados como herencia, modificadores y contratos complejos.
# Curso de Solidity - Desarrollo de Contratos Inteligentes

Un curso completo de Solidity que cubre conceptos fundamentales e intermedios del desarrollo de contratos inteligentes en blockchain Ethereum.

## 📋 Tabla de Contenidos

1. [Introducción](#introducción)
2. [Estructura del Curso](#estructura-del-curso)
3. [Prerrequisitos](#prerrequisitos)
4. [Primeros Pasos](#primeros-pasos)
5. [Resumen de Módulos](#resumen-de-módulos)
6. [Recursos](#recursos)

## 🦙 Introducción

Este repositorio contiene ejemplos prácticos y ejercicios para aprender Solidity, el lenguaje de programación para contratos inteligentes de Ethereum. Cada módulo se construye progresivamente sobre conceptos anteriores, proporcionando ejemplos prácticos que pueden ser desplegados y probados.

## 🦙 Estructura del Curso

### 1. Introducción (`1_Introducción/`)
Conceptos básicos y primeros pasos en el desarrollo con Solidity.

- **Hola Mundo** (`0_HolaMundo.sol`, `00_HolaMundo.sol`)
  - Primer contrato inteligente
  - Variables públicas
  - Estructura básica de contrato

- **Tipos de Datos** (`1_TiposDeDatos.sol`)
  - Booleano: `bool`
  - Enteros sin signo: `uint`, `uint8`, `uint16`, `uint256`
  - Enteros con signo: `int`
  - Dirección: `address`
  - Cadenas: `string`
  - Consideraciones de optimización de gas

- **Variables** (`2_1_VarEstado.sol`, `2_2_VarLocal.sol`, `2_3_VarGlobal.sol`)
  - Variables de estado
  - Variables locales
  - Variables globales (`msg.sender`, `msg.value`, `block.timestamp`, etc.)

- **Ejemplos de Calculadora** (`3_1_Calculadora.sol`, `3_2_Calculadora_v2.sol`, `3_3_Calculadora_v2_comp.sol`)
  - Operaciones aritméticas básicas
  - Implementación de funciones
  - Mejoras progresivas

### 2. Tipos de Variables (`2_TipoVariables/`)
Análisis profundo de los alcances y comportamientos de las variables.

- **Variables Locales** (`1_VarLocal.sol`)
  - Alcance de función
  - Asignación de memoria
  - Almacenamiento temporal

- **Variables de Estado** (`2_VarEstado.sol`)
  - Persistencia a nivel de contrato
  - Ubicación de almacenamiento
  - Costos de gas

- **Variables Globales** (`3_VarGlobal.sol`)
  - `msg.sender`: Remitente de la transacción
  - `msg.value`: ETH enviado con la transacción
  - `block.number`: Número del bloque actual
  - `block.timestamp`: Timestamp del bloque

- **Ejemplo Práctico** (`4_VarEjemplo.sol`)

### 3. Tipos de Visibilidad (`3_TipoVisibilidad/`)
Entendiendo los modificadores de visibilidad de funciones y variables.

- **Público** (`TipoVisibilidadPublic.sol`)
  - Accesible desde cualquier lugar
  - Genera automáticamente funciones getter
  - Permite llamadas externas e internas

- **Privado** (`TipoVisibilidadPrivate.sol`)
  - Solo accesible dentro del mismo contrato
  - No visible para contratos derivados
  - Máxima encapsulación

- **Interno** (`TipoVisibilidadInternal.sol`)
  - Accesible dentro del contrato y contratos derivados
  - Similar a `protected` en POO
  - Valor por defecto para variables de estado

- **Externo** (`TipoVisibilidadExternal.sol`)
  - Solo puede ser llamado desde fuera del contrato
  - Eficiente en gas para llamadas externas
  - No puede ser llamado internamente (excepto con `this`)

- **Ejemplos de Herencia** (`PadreVisibilidad.sol`, `HijoVisibilidad.sol`)
  - Relaciones padre-hijo entre contratos
  - Visibilidad en jerarquías de herencia

### 4. Modificadores de Función (`4_Modificadores/`)
Palabras clave especiales que modifican el comportamiento de las funciones.

- **View** (`ModiFuncView.sol`)
  - Lee el estado pero no lo modifica
  - Sin costo de gas cuando se llama externamente
  - Retorna datos sin transacciones

- **Pure** (`ModiFuncPure.sol`)
  - No lee ni modifica el estado
  - Realiza solo cálculos
  - Llamadas externas sin gas

- **Payable** (`ModiFuncPayable.sol`)
  - Permite a la función recibir ETH
  - Requerido para transferencias de valor
  - Acceso a `msg.value`

- **Ejemplo Práctico** (`ModiEjemplo.sol`)

### 5. Ejemplos (`5_Ejemplos/`)
Implementaciones de contratos inteligentes del mundo real.

- **Banco Simple** (`BancoSimple.sol`)
  - Funcionalidad de depósito
  - Sistema de retiros
  - Seguimiento de saldos con `mapping`
  - Registro de eventos (`Deposito`, `Reg`)
  - Control de acceso con `require`
  - Transferencias ETH con `payable` y `transfer`

### 6. Getters y Setters (`6_Getters_And_Setters/`)
Patrones de acceso a datos en Solidity.

- **Getters** (`getters.sol`)
  - Lectura de variables de estado
  - Getters públicos automáticos
  - Funciones getter personalizadas

- **Setters** (`setters.sol`)
  - Modificación de variables de estado
  - Validación de entrada
  - Control de acceso

- **Ejemplo Combinado** (`get_set.sol`)

## 🔧 Prerrequisitos

- Conocimientos básicos de programación
- Entendimiento de conceptos de blockchain
- [Node.js](https://nodejs.org/) instalado
- [Remix IDE](https://remix.ethereum.org/) (basado en web) o
- [VS Code](https://code.visualstudio.com/) con extensión de Solidity

## 🚀 Primeros Pasos

### Opción 1: Usando Remix IDE (Recomendado para Principiantes)

1. Abre [Remix IDE](https://remix.ethereum.org/)
2. Crea un nuevo archivo
3. Copia cualquier archivo `.sol` de este repositorio
4. Compila con el compilador de Solidity (0.7.0 - 0.9.0)
5. Despliega en JavaScript VM para pruebas

### Opción 2: Desarrollo Local

```bash
# Instalar Hardhat
npm install --save-dev hardhat

# Crear un proyecto Hardhat
npx hardhat

# Compilar contratos
npx hardhat compile

# Ejecutar pruebas
npx hardhat test
```

### Opción 3: Usando Truffle

```bash
# Instalar Truffle globalmente
npm install -g truffle

# Inicializar proyecto
truffle init

# Compilar
truffle compile

# Desplegar
truffle migrate
```

## 📖 Resumen de Módulos

### Conceptos Clave Cubiertos

#### Tipos de Datos
- **Tipos de Valor**: `bool`, `uint`, `int`, `address`, `bytes`
- **Tipos de Referencia**: `string`, `arrays`, `mapping`, `struct`
- **Optimización de Tipos**: Usar tamaños apropiados (`uint8`, `uint16`, etc.) para eficiencia de gas

#### Variables
- **Variables de Estado**: Almacenadas en blockchain, persistentes
- **Variables Locales**: Existen solo durante la ejecución de la función
- **Variables Globales**: Propiedades incorporadas (`msg`, `block`, `tx`)

#### Modificadores de Visibilidad
- `public`: Accesible en todas partes
- `private`: Solo dentro del contrato
- `internal`: Dentro del contrato y sus hijos
- `external`: Solo desde fuera

#### Modificadores de Función
- `view`: Funciones de solo lectura
- `pure`: Sin interacción con estado
- `payable`: Puede recibir ETH

#### Conceptos Avanzados
- **Eventos**: Registro de acciones importantes
- **Mappings**: Almacenamiento clave-valor
- **Require**: Validación de entrada
- **Transferencias ETH**: `payable()`, `transfer()`

## 📝 Mejores Prácticas

1. **Siempre especificar el identificador de licencia SPDX**
   ```solidity
   // SPDX-License-Identifier: MIT
   ```

2. **Usar versión apropiada de Solidity**
   ```solidity
   pragma solidity ^0.8.0;
   ```

3. **Validar entradas con `require`**
   ```solidity
   require(msg.value > 0, "Debes enviar ETH");
   ```

4. **Emitir eventos para acciones importantes**
   ```solidity
   event Deposito(address indexed usuario, uint256 cantidad);
   emit Deposito(msg.sender, msg.value);
   ```

5. **Optimizar uso de gas**
   - Usar tipos de datos apropiados
   - Empaquetar variables eficientemente
   - Minimizar operaciones de almacenamiento

6. **Consideraciones de seguridad**
   - Verificar vulnerabilidades de reentrancy
   - Usar `require` para validación
   - Ser cauteloso con llamadas externas

## 🔗 Recursos

### Documentación Oficial
- [Documentos de Solidity](https://docs.soliditylang.org/)
- [Ethereum.org](https://ethereum.org/es/developers/)
- [OpenZeppelin](https://docs.openzeppelin.com/)

### Herramientas de Desarrollo
- [Remix IDE](https://remix.ethereum.org/) - IDE basado en web
- [Hardhat](https://hardhat.org/) - Entorno de desarrollo
- [Truffle](https://trufflesuite.com/) - Framework de desarrollo
- [Ganache](https://trufflesuite.com/ganache/) - Blockchain local

### Redes de Prueba
- [Sepolia Testnet](https://sepoliafaucet.com/) - Red de pruebas de Ethereum
- [Mumbai Testnet](https://mumbaifaucet.com/) - Red de pruebas de Polygon

### Aprendizaje Adicional
- [CryptoZombies](https://cryptozombies.io/) - Tutorial interactivo
- [Ethernaut](https://ethernaut.openzeppelin.com/) - Desafíos de seguridad
- [Solidity by Example](https://solidity-by-example.org/) - Ejemplos de código

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Siéntete libre de:
- Agregar nuevos ejemplos
- Mejorar la documentación
- Corregir errores
- Sugerir mejoras

## 📄 Licencia

Este proyecto está licenciado bajo GPL-3.0 y MIT (dependiendo del archivo).

## ⚠️ Descargo de Responsabilidad

Este repositorio es solo para fines educativos. Siempre audita los contratos inteligentes antes de desplegarlos en mainnet. Nunca despliegues código no auditado con fondos reales.

---

**¡Feliz Aprendizaje! 🚀**

*¡Tú Puedes, Amigo!* 💪
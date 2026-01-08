# Segunda Parte - Integración con Blockchain

Esta carpeta representa el siguiente nivel del desarrollo web, integrando la interfaz con contratos inteligentes en la blockchain usando Web3.js. Es la evolución natural de los "primeros pasos" hacia una dApp funcional.

## Archivos en esta carpeta

### index.html
Página HTML completa que simula un "Banco Simple Cyberpunk". Incluye:
- **Conexión de billetera**: Botón para conectar MetaMask u otras wallets
- **Operaciones bancarias**: Depósitos y retiros de ETH
- **Información en tiempo real**: Dirección de wallet, saldo, dirección del contrato
- **Interfaz cyberpunk**: Tema futurista con efectos neon
- **JavaScript con Web3.js**: Lógica para interactuar con contratos Solidity

Esta página demuestra cómo una interfaz web se conecta con contratos inteligentes desplegados en la blockchain.

### estilo.css
Hoja de estilos con tema cyberpunk completo:
- **Paleta de colores neon**: Rosa, azul, púrpura, verde sobre fondos oscuros
- **Efectos de glow**: Sombras y brillos para elementos interactivos
- **Gradientes y transparencias**: Efectos visuales futuristas
- **Tipografía monospace**: Estilo terminal/cyberpunk
- **Animaciones**: Transiciones suaves y efectos hover

## Funcionalidades principales

1. **Conexión Web3**: Detecta si MetaMask está instalado y permite conectar la billetera
2. **Interacción con contrato**: Usa el ABI del contrato para llamar funciones (depositar, retirar)
3. **Gestión de estado**: Muestra información actualizada de saldo y transacciones
4. **UI/UX moderna**: Interfaz atractiva que combina web development con blockchain

## Requisitos para usar

1. **MetaMask o wallet compatible** instalada en el navegador
2. **Contrato desplegado**: Necesitas el address del contrato Solidity y su ABI
3. **Red de prueba**: Configurar la wallet en una testnet (Sepolia, Goerli, etc.)
4. **ETH de prueba**: Fondos para testing

## Flujo de uso

1. Abrir la página en un navegador con MetaMask
2. Hacer clic en "Conectar Billetera"
3. Autorizar la conexión
4. Realizar depósitos/retiros usando ETH de prueba
5. Verificar las transacciones en un explorador de bloques

Esta carpeta marca la transición de desarrollo web puro a aplicaciones descentralizadas reales, combinando HTML/CSS/JS con contratos inteligentes.
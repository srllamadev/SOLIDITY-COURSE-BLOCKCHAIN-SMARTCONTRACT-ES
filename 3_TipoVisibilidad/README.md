# Tipos de Visibilidad en Solidity

Esta carpeta explora los diferentes modificadores de visibilidad en Solidity: `public`, `private`, `internal` y `external`. La visibilidad controla quién puede acceder a variables y funciones, lo cual es crucial para la seguridad y el diseño de contratos inteligentes.

## Archivos en esta carpeta

### TipoVisibilidadPublic.sol
Demuestra el modificador `public`. Las variables y funciones públicas son accesibles desde cualquier lugar: dentro del contrato, contratos heredados, contratos externos y desde fuera (wallets, dApps). Las variables públicas generan automáticamente funciones getter.

### TipoVisibilidadPrivate.sol
Ilustra el modificador `private`. Solo accesible dentro del mismo contrato donde se define. No se puede acceder ni siquiera desde contratos que heredan de este. Ideal para datos sensibles que no deben ser visibles externamente.

### TipoVisibilidadInternal.sol
Muestra el modificador `internal`. Accesible desde el contrato actual y contratos heredados, pero no desde contratos externos. Esencial cuando se usa herencia, ya que permite compartir funcionalidad entre contratos relacionados.

### TipoVisibilidadExternal.sol
Explica el modificador `external`. Solo puede ser llamado desde fuera del contrato (otras funciones, wallets, interfaces). No se puede llamar internamente como una función normal; requiere usar `this.nombreFuncion()`. Útil para funciones que solo deben ser llamadas desde el exterior.

### TipoVisibilidadEjemplo_1.sol
Un ejemplo completo que combina todos los tipos de visibilidad en un solo contrato. Incluye variables y funciones con diferentes visibilidades, mostrando cómo interactúan y cuándo usar cada una.

### PadreVisibilidad.sol
Contrato padre que define variables y funciones con diferentes visibilidades para demostrar herencia.

### HijoVisibilidad.sol
Contrato hijo que hereda del padre, mostrando qué elementos pueden ser accedidos desde el contrato heredado (no puede acceder a elementos `private`, pero sí a `internal` y `public`).

## Conceptos clave

- **`public`**: Máxima accesibilidad, genera getters automáticos para variables.
- **`private`**: Solo el contrato actual, máxima privacidad.
- **`internal`**: Contrato actual y descendientes, útil para herencia.
- **`external`**: Solo llamadas externas, eficiente en gas para interfaces.

Elegir la visibilidad correcta es fundamental para la seguridad y eficiencia de tus contratos. Usa `private` para datos sensibles, `internal` para lógica compartida en herencia, `public` para interfaces y `external` para funciones que solo se llaman desde fuera.
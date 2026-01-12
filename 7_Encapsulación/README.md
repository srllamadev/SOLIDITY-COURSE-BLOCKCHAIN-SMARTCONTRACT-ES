# Ejemplo de Encapsulación en Solidity

## ¿Qué es la Encapsulación?

La encapsulación es un principio fundamental de la programación orientada a objetos que consiste en:

1. **Ocultar los detalles internos**: Las variables y lógica interna no son accesibles directamente desde fuera del contrato.
2. **Exponer interfaces controladas**: Se proporcionan funciones públicas (getters/setters) para acceder y modificar los datos de forma segura.

## Beneficios de la Encapsulación

- **Seguridad**: Control sobre quién puede modificar los datos y cómo.
- **Mantenibilidad**: Los cambios internos no afectan el código externo.
- **Validación**: Se pueden agregar reglas de negocio en los setters.
- **Abstracción**: Los usuarios externos no necesitan conocer los detalles internos.

## Archivo del Ejemplo

`EncapsulacionEjemplo.sol`: Contrato que demuestra encapsulación con:

- Variables privadas (`_balance`, `_nombre`, `_owner`, `_activo`)
- Getters públicos para lectura
- Setters con validaciones y modificadores
- Eventos para logging de cambios
- Modificadores de acceso (`soloOwner`, `contratoActivo`)

## Cómo Usar Este Ejemplo

1. **Despliega el contrato** con un nombre inicial.
2. **Lee datos** usando los getters: `getBalance()`, `getNombre()`, etc.
3. **Modifica datos** usando setters: `setNombre()`, `depositar()`, etc.
4. **Observa los eventos** emitidos en cada cambio.

## Conceptos Clave Demostrados

- **Visibilidad**: `private`, `public`, `internal`, `external`
- **Modificadores**: `soloOwner`, `contratoActivo`
- **Validaciones**: `require` statements en setters
- **Eventos**: Para tracking de cambios
- **Mappings**: Para datos estructurados


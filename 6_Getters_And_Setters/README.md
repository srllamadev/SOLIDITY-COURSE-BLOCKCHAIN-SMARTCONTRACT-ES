# Getters y Setters en Solidity

Esta carpeta explora cómo acceder y modificar variables de estado en contratos inteligentes. Los getters permiten leer datos, mientras que los setters permiten modificarlos de forma controlada.

## Archivos en esta carpeta

### get_set.sol
Ejemplo completo que combina getters y setters personalizados. Incluye:
- Variables privadas para encapsulación
- Funciones setter para modificar datos
- Funciones getter para acceder a datos
- Constructor para inicialización
- Comentarios NatSpec para documentación

Este contrato maneja información de una persona (nombre, edad, correo) con control total sobre el acceso.

### getters.sol
Demuestra diferentes tipos de getters:
- **Getters automáticos**: Variables `public` generan getters automáticamente
- **Getters personalizados**: Para variables `private`, se crean funciones manualmente
- Comparación entre acceso público y privado

Muestra cómo las variables públicas permiten acceso directo, mientras que las privadas requieren funciones getter específicas.

### setters.sol
Se enfoca en las funciones setter para modificar variables de estado:
- Funciones públicas que cambian variables privadas
- Validación y control sobre las modificaciones
- Encapsulación de datos sensibles

Incluye algunos getters para completar el patrón de acceso.

## Conceptos clave

### Getters
- **Automáticos**: Para variables `public`, Solidity genera `function nombreVariable() view returns(tipo)`
- **Personalizados**: Para variables `private`, se crean funciones `getNombreVariable()`
- Siempre son `view` (no modifican estado)
- Pueden incluir lógica adicional (validaciones, cálculos)

### Setters
- Funciones públicas que modifican variables de estado
- Permiten control sobre qué datos se pueden cambiar y cómo
- Pueden incluir validaciones antes de modificar
- Esenciales para encapsulación

### Patrón recomendado
```solidity
contract Ejemplo {
    uint private _valor;

    function getValor() public view returns(uint) {
        return _valor;
    }

    function setValor(uint nuevoValor) public {
        // Validaciones aquí
        _valor = nuevoValor;
    }
}
```

## Casos de uso
- **Encapsulación**: Proteger datos sensibles
- **Validación**: Controlar qué valores se aceptan
- **Lógica de negocio**: Ejecutar código adicional al cambiar datos
- **Interfaz limpia**: Separar almacenamiento de acceso

Estos patrones son fundamentales para contratos seguros y mantenibles.
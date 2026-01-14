// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title ValidacionSettersAvanzado
 * @dev Contrato de ejemplo para demostrar validaciones robustas en setters.
 * Incluye validaciones para diferentes tipos de datos: enteros, strings y direcciones.
 * Las validaciones usan 'require' para revertir transacciones inválidas.
 */
contract ValidacionSettersAvanzado {
    // Variables de estado
    uint256 private edad;          // Edad en años
    string private nombre;         // Nombre del usuario
    address private propietario;   // Dirección del propietario
    uint256 private saldo;         // Saldo en wei

    // Eventos para logging de cambios
    event EdadActualizada(uint256 nuevaEdad);
    event NombreActualizado(string nuevoNombre);
    event PropietarioActualizado(address nuevoPropietario);
    event SaldoActualizado(uint256 nuevoSaldo);

    /**
     * @dev Setter para la edad con validación.
     * La edad debe estar entre 0 y 150 años.
     * @param _edad Nueva edad a establecer.
     */
    function setEdad(uint256 _edad) public {
        require(_edad >= 0 && _edad <= 150, "Edad invalida: debe estar entre 0 y 150");
        edad = _edad;
        emit EdadActualizada(_edad);
    }

    /**
     * @dev Setter para el nombre con validación.
     * El nombre no puede estar vacío y debe tener menos de 50 caracteres.
     * @param _nombre Nuevo nombre a establecer.
     */
    function setNombre(string memory _nombre) public {
        require(bytes(_nombre).length > 0, "Nombre no puede estar vacio");
        require(bytes(_nombre).length <= 50, "Nombre demasiado largo: maximo 50 caracteres");
        nombre = _nombre;
        emit NombreActualizado(_nombre);
    }

    /**
     * @dev Setter para el propietario con validación.
     * La dirección no puede ser cero (address(0)).
     * @param _propietario Nueva dirección del propietario.
     */
    function setPropietario(address _propietario) public {
        require(_propietario != address(0), "Direccion de propietario invalida: no puede ser cero");
        propietario = _propietario;
        emit PropietarioActualizado(_propietario);
    }

    /**
     * @dev Setter para el saldo con validación.
     * El saldo debe ser positivo y no exceder un límite máximo (ej. 100 ether en wei).
     * @param _saldo Nuevo saldo a establecer.
     */
    function setSaldo(uint256 _saldo) public {
        require(_saldo > 0, "Saldo debe ser positivo");
        require(_saldo <= 100 ether, "Saldo excede el limite maximo de 100 ether");
        saldo = _saldo;
        emit SaldoActualizado(_saldo);
    }

    // Getters para acceder a las variables
    function getEdad() public view returns (uint256) {
        return edad;
    }

    function getNombre() public view returns (string memory) {
        return nombre;
    }

    function getPropietario() public view returns (address) {
        return propietario;
    }

    function getSaldo() public view returns (uint256) {
        return saldo;
    }
}
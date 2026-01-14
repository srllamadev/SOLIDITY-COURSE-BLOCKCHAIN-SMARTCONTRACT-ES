// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ValidacionSetters {
    // Variable de estado privada para almacenar la edad
    uint256 private edad;

    // Setter con validación: la edad debe estar entre 1 y 120 años
    function setEdad(uint256 _edad) public {
        require(_edad >= 1 && _edad <= 120, "Edad invalida: debe estar entre 1 y 120");
        edad = _edad;
    }

    // Getter para obtener la edad
    function getEdad() public view returns (uint256) {
        return edad;
    }
}
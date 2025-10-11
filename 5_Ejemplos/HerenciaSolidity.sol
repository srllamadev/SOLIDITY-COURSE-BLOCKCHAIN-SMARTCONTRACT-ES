# SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Herencia en Solidity - Ejemplo Simple
 * @dev Este contrato demuestra el concepto de herencia en Solidity
 * con un ejemplo de Animales y sus características
 */

// Contrato base (Padre)
contract Animal {
    string public nombre;
    uint public edad;

    constructor(string memory _nombre, uint _edad) {
        nombre = _nombre;
        edad = _edad;
    }

    function hacerSonido() public pure virtual returns (string memory) {
        return "Sonido genérico de animal";
    }

    function comer() public pure returns (string memory) {
        return "El animal está comiendo";
    }

    function dormir() public pure returns (string memory) {
        return "El animal está durmiendo";
    }
}

// Contrato que hereda de Animal (Hijo)
contract Perro is Animal {
    string public raza;

    constructor(string memory _nombre, uint _edad, string memory _raza)
        Animal(_nombre, _edad)
    {
        raza = _raza;
    }

    // Override de la función virtual del padre
    function hacerSonido() public pure override returns (string memory) {
        return "¡Guau guau!";
    }

    // Función específica del perro
    function moverCola() public pure returns (string memory) {
        return "El perro mueve la cola felizmente";
    }

    // Función que combina funcionalidad del padre e hijo
    function presentarse() public view returns (string memory) {
        return string(abi.encodePacked(
            "Hola, soy ", nombre, ", un perro de raza ", raza,
            " y tengo ", uint2str(edad), " años. ", hacerSonido()
        ));
    }

    // Función helper para convertir uint a string
    function uint2str(uint _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint j = _i;
        uint len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint k = len;
        while (_i != 0) {
            k = k-1;
            uint8 temp = (48 + uint8(_i - _i / 10 * 10));
            bytes1 b1 = bytes1(temp);
            bstr[k] = b1;
            _i /= 10;
        }
        return string(bstr);
    }
}

// Contrato que hereda de Animal (Hijo)
contract Gato is Animal {
    string public color;

    constructor(string memory _nombre, uint _edad, string memory _color)
        Animal(_nombre, _edad)
    {
        color = _color;
    }

    // Override de la función virtual del padre
    function hacerSonido() public pure override returns (string memory) {
        return "¡Miau miau!";
    }

    // Función específica del gato
    function ronronear() public pure returns (string memory) {
        return "El gato está ronroneando";
    }

    // Función que combina funcionalidad del padre e hijo
    function presentarse() public view returns (string memory) {
        return string(abi.encodePacked(
            "Hola, soy ", nombre, ", un gato de color ", color,
            " y tengo ", uint2str(edad), " años. ", hacerSonido()
        ));
    }

    // Función helper para convertir uint a string
    function uint2str(uint _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint j = _i;
        uint len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint k = len;
        while (_i != 0) {
            k = k-1;
            uint8 temp = (48 + uint8(_i - _i / 10 * 10));
            bytes1 b1 = bytes1(temp);
            bstr[k] = b1;
            _i /= 10;
        }
        return string(bstr);
    }
}

// Contrato que demuestra herencia múltiple (hereda de ambos)
contract Veterinario {
    function examinarAnimal(Animal animal) public pure returns (string memory) {
        return string(abi.encodePacked(
            "Examinando a: ", animal.nombre(),
            ". Edad: ", uint2str(animal.edad()),
            ". Hace este sonido: ", animal.hacerSonido()
        ));
    }

    // Función helper para convertir uint a string
    function uint2str(uint _i) internal pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        uint j = _i;
        uint len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint k = len;
        while (_i != 0) {
            k = k-1;
            uint8 temp = (48 + uint8(_i - _i / 10 * 10));
            bytes1 b1 = bytes1(temp);
            bstr[k] = b1;
            _i /= 10;
        }
        return string(bstr);
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 // @title Ejemplo de Encapsulación en Solidity
 // @dev Este contrato demuestra el concepto de encapsulación en Solidity.
 // La encapsulación se refiere a ocultar los detalles internos de un objeto
 // y exponer solo lo necesario a través de interfaces públicas.
contract EncapsulacionEjemplo {

    // Variables privadas para encapsular datos sensibles
    uint256 private _balance;
    string private _nombre;
    address private _owner;
    bool private _activo;

    // Mapping privado para almacenar datos de usuarios
    mapping(address => uint256) private _saldosUsuarios;

    // Evento para logging de cambios
    event BalanceActualizado(address indexed usuario, uint256 nuevoBalance);
    event NombreActualizado(string nuevoNombre);
    event EstadoActivado(bool activo);

    /**
     * @dev Constructor que inicializa el contrato
     */
    constructor(string memory nombreInicial) {
        _owner = msg.sender;
        _nombre = nombreInicial;
        _activo = true;
        _balance = 0;
    }

    /**
     * @dev Modificador para restringir acceso solo al owner
     */
    modifier soloOwner() {
        require(msg.sender == _owner, "Solo el owner puede ejecutar esta funcion");
        _;
    }

    /**
     * @dev Modificador para verificar que el contrato esté activo
     */
    modifier contratoActivo() {
        require(_activo, "El contrato no esta activo");
        _;
    }

    // ============ GETTERS (Lectura de datos encapsulados) ============

    /**
     * @dev Getter para obtener el balance actual
     * @return El balance almacenado
     */
    function getBalance() public view returns (uint256) {
        return _balance;
    }

    /**
     * @dev Getter para obtener el nombre
     * @return El nombre almacenado
     */
    function getNombre() public view returns (string memory) {
        return _nombre;
    }

    /**
     * @dev Getter para verificar si el contrato está activo
     * @return Estado de actividad
     */
    function estaActivo() public view returns (bool) {
        return _activo;
    }

    /**
     * @dev Getter para obtener el owner del contrato
     * @return Dirección del owner
     */
    function getOwner() public view returns (address) {
        return _owner;
    }

    /**
     * @dev Getter para obtener el saldo de un usuario específico
     * @param usuario Dirección del usuario
     * @return Saldo del usuario
     */
    function getSaldoUsuario(address usuario) public view returns (uint256) {
        return _saldosUsuarios[usuario];
    }

    // ============ SETTERS (Modificación controlada de datos) ============

    /**
     * @dev Setter para actualizar el nombre (solo owner)
     * @param nuevoNombre El nuevo nombre a establecer
     */
    function setNombre(string memory nuevoNombre) public soloOwner contratoActivo {
        require(bytes(nuevoNombre).length > 0, "El nombre no puede estar vacio");
        _nombre = nuevoNombre;
        emit NombreActualizado(nuevoNombre);
    }

    /**
     * @dev Setter para depositar fondos (cualquiera puede depositar)
     * @param cantidad Cantidad a depositar
     */
    function depositar(uint256 cantidad) public contratoActivo {
        require(cantidad > 0, "La cantidad debe ser mayor a 0");
        _balance += cantidad;
        _saldosUsuarios[msg.sender] += cantidad;
        emit BalanceActualizado(msg.sender, _balance);
    }

    /**
     * @dev Setter para retirar fondos (solo owner)
     * @param cantidad Cantidad a retirar
     */
    function retirar(uint256 cantidad) public soloOwner contratoActivo {
        require(cantidad <= _balance, "Fondos insuficientes");
        _balance -= cantidad;
        emit BalanceActualizado(msg.sender, _balance);
    }

    /**
     * @dev Función para activar/desactivar el contrato (solo owner)
     * @param activo Nuevo estado
     */
    function setActivo(bool activo) public soloOwner {
        _activo = activo;
        emit EstadoActivado(activo);
    }

    // ============ FUNCIONES ADICIONALES ============

    /**
     * @dev Función para transferir fondos entre usuarios
     * @param destinatario Dirección del destinatario
     * @param cantidad Cantidad a transferir
     */
    function transferir(address destinatario, uint256 cantidad) public contratoActivo {
        require(_saldosUsuarios[msg.sender] >= cantidad, "Saldo insuficiente");
        require(destinatario != address(0), "Direccion invalida");

        _saldosUsuarios[msg.sender] -= cantidad;
        _saldosUsuarios[destinatario] += cantidad;

        emit BalanceActualizado(msg.sender, _saldosUsuarios[msg.sender]);
        emit BalanceActualizado(destinatario, _saldosUsuarios[destinatario]);
    }

    /**
     * @dev Función para obtener información completa del contrato
     * @return balance, nombre, owner, activo
     */
    function getInformacionCompleta() public view returns (
        uint256 balance,
        string memory nombre,
        address owner,
        bool activo
    ) {
        return (_balance, _nombre, _owner, _activo);
    }
}

/**
 * En Solidity, usamos modificadores de visibilidad:
 * - private: Solo accesible dentro del contrato
 * - internal: Accesible dentro del contrato y contratos derivados
 * - public: Accesible desde cualquier lugar
 * - external: Solo accesible desde fuera del contrato
 *
 * Para encapsulación, típicamente:
 * - Variables de estado: private o internal
 * - Funciones getter: public o external
 * - Funciones setter: public, con validaciones
 */
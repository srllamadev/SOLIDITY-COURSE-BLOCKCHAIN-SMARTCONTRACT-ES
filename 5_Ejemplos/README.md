# Ejemplos Prácticos - Herencia

Esta carpeta contiene ejemplos prácticos de **herencia** en diferentes lenguajes de programación, específicamente Python y Solidity. Estos ejemplos están diseñados para enseñar el concepto de herencia de manera clara y sencilla.

## 📋 Contenido

- [`BancoSimple.sol`](./BancoSimple.sol) - Banco simple con mappings y eventos
- [`HerenciaPython.py`](./HerenciaPython.py) - Ejemplo de herencia en Python
- [`HerenciaSolidity.sol`](./HerenciaSolidity.sol) - Ejemplo de herencia en Solidity

## 🎯 ¿Qué es la Herencia?

La **herencia** es un concepto fundamental en la programación orientada a objetos que permite crear nuevas clases basadas en clases existentes. Una clase hija (o subclase) puede heredar propiedades y métodos de una clase padre (o superclase), y además puede:

- **Agregar** nuevas propiedades y métodos
- **Modificar** (override) métodos existentes
- **Reutilizar** código de la clase padre

## 🐕🐱 Ejemplo Conceptual: Animales

Usaremos el ejemplo de **Animales** para explicar la herencia:

### Jerarquía de Clases
```
Animal (Clase Padre/Base)
├── nombre
├── edad
├── hacerSonido() -> "Sonido genérico"
├── comer() -> "El animal está comiendo"
├── dormir() -> "El animal está durmiendo"
└── presentarse()

├── Perro (Clase Hija)
│   ├── raza (propiedad específica)
│   ├── hacerSonido() -> "¡Guau guau!" (override)
│   └── moverCola() (método específico)
│
└── Gato (Clase Hija)
    ├── color (propiedad específica)
    ├── hacerSonido() -> "¡Miau miau!" (override)
    └── ronronear() (método específico)
```

## 🐍 Herencia en Python

### Archivo: `HerenciaPython.py`

```python
# Clase base
class Animal:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def hacer_sonido(self):
        return "Sonido genérico de animal"

# Clase que hereda
class Perro(Animal):  # ← Herencia con sintaxis: class Hijo(Padre)
    def __init__(self, nombre, edad, raza):
        super().__init__(nombre, edad)  # ← Llamar constructor del padre
        self.raza = raza

    def hacer_sonido(self):  # ← Override del método
        return "¡Guau guau!"
```

### Características de la Herencia en Python:

1. **Sintaxis**: `class Hijo(Padre)`
2. **Constructor**: Usar `super().__init__()` para llamar al padre
3. **Override**: Simplemente redefinir el método (sin palabras clave especiales)
4. **Polimorfismo**: Funciona automáticamente

### 🚀 Cómo Ejecutar:

```bash
python HerenciaPython.py
```

**Salida esperada:**
```
=== DEMOSTRACIÓN DE HERENCIA EN PYTHON ===

1. MÉTODOS HEREDADOS:
Perro come: El animal está comiendo
Gato duerme: El animal está durmiendo

2. MÉTODOS SOBREESCRITOS (OVERRIDE):
Perro hace sonido: ¡Guau guau!
Gato hace sonido: ¡Miau miau!

3. MÉTODOS ESPECÍFICOS DE CADA CLASE:
Perro mueve cola: El perro mueve la cola felizmente
Gato ronronea: El gato está ronroneando

4. POLIMORFISMO - MÉTODO PRESENTARSE:
Hola, soy Rex, un perro de raza Labrador y tengo 3 años. ¡Guau guau!
Hola, soy Whiskers, un gato de color Negro y tengo 2 años. ¡Miau miau!

5. POLIMORFISMO CON VETERINARIO:
Examinando a: Rex. Edad: 3. Hace este sonido: ¡Guau guau!
Examinando a: Whiskers. Edad: 2. Hace este sonido: ¡Miau miau!

6. VERIFICACIÓN DE HERENCIA:
¿Perro es instancia de Animal? True
¿Gato es instancia de Animal? True
¿Animal es instancia de Perro? False
```

## ⛓️ Herencia en Solidity

### Archivo: `HerenciaSolidity.sol`

```solidity
// Contrato base
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
}

// Contrato que hereda
contract Perro is Animal {  // ← Herencia con sintaxis: contract Hijo is Padre
    string public raza;

    constructor(string memory _nombre, uint _edad, string memory _raza)
        Animal(_nombre, _edad)  // ← Llamar constructor del padre
    {
        raza = _raza;
    }

    function hacerSonido() public pure override returns (string memory) {
        return "¡Guau guau!";
    }
}
```

### Características de la Herencia en Solidity:

1. **Sintaxis**: `contract Hijo is Padre`
2. **Constructor**: Llamar explícitamente al constructor del padre
3. **Virtual/Override**: Palabras clave requeridas para métodos sobreescribibles
4. **Polimorfismo**: A través de interfaces y contratos

### 🚀 Cómo Probar en Remix:

1. Abre [Remix IDE](https://remix.ethereum.org/)
2. Crea un nuevo archivo y copia el contenido de `HerenciaSolidity.sol`
3. Compila con Solidity ^0.8.0
4. Despliega el contrato `Perro` o `Gato`
5. Prueba las funciones heredadas y específicas

## 🔄 Comparación Python vs Solidity

| Aspecto | Python | Solidity |
|---------|--------|----------|
| **Sintaxis** | `class Hijo(Padre)` | `contract Hijo is Padre` |
| **Constructor Padre** | `super().__init__()` | `Padre(parametros)` |
| **Override** | Automático | `virtual` en padre, `override` en hijo |
| **Polimorfismo** | Natural | A través de interfaces |
| **Visibilidad** | `public` por defecto | `public`/`private`/`internal`/`external` |
| **Herencia Múltiple** | Soportada | Limitada (interfaces) |

## 🎓 Conceptos Aprendidos

### 1. **Reutilización de Código**
- Las clases hijas heredan automáticamente propiedades y métodos del padre
- No necesitas reescribir código común

### 2. **Polimorfismo**
- Un objeto puede ser tratado como su clase padre
- El mismo método puede comportarse diferente en diferentes clases

### 3. **Especialización**
- Las clases hijas pueden agregar funcionalidad específica
- Pueden modificar el comportamiento heredado

### 4. **Jerarquía de Clases**
- Crea estructuras lógicas de "es-un" (un perro ES un animal)
- Facilita la organización y mantenimiento del código

## 🛠️ Ejercicios Sugeridos

1. **Agregar más animales**: Crea clases `Pajaro`, `Pez`, etc.
2. **Métodos adicionales**: Agrega métodos como `correr()`, `volar()`, `nadar()`
3. **Polimorfismo avanzado**: Crea una función que acepte cualquier `Animal`
4. **Herencia múltiple**: En Python, crea una clase que herede de múltiples padres

## 📚 Recursos Adicionales

- [Documentación de Herencia en Python](https://docs.python.org/3/tutorial/classes.html#inheritance)
- [Documentación de Herencia en Solidity](https://docs.soliditylang.org/en/latest/contracts.html#inheritance)
- [Ejemplos de OpenZeppelin](https://docs.openzeppelin.com/contracts/4.x/) - Herencia en contratos reales

---

**¡Practica estos ejemplos y domina la herencia!** 🚀

*¡Tú Puedes, Amigo!* 💪
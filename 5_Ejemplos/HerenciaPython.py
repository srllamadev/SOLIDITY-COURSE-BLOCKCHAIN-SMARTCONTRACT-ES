"""
Herencia en Python - Ejemplo Simple
Este archivo demuestra el concepto de herencia en Python
con un ejemplo de Animales y sus características
"""

# Clase base (Padre)
class Animal:
    def __init__(self, nombre, edad):
        self.nombre = nombre
        self.edad = edad

    def hacer_sonido(self):
        return "Sonido genérico de animal"

    def comer(self):
        return "El animal está comiendo"

    def dormir(self):
        return "El animal está durmiendo"

    def presentarse(self):
        return f"Hola, soy {self.nombre} y tengo {self.edad} años"


# Clase que hereda de Animal (Hijo)
class Perro(Animal):
    def __init__(self, nombre, edad, raza):
        # Llamar al constructor del padre
        super().__init__(nombre, edad)
        self.raza = raza

    # Override del método del padre
    def hacer_sonido(self):
        return "¡Guau guau!"

    # Método específico del perro
    def mover_cola(self):
        return "El perro mueve la cola felizmente"

    # Método que combina funcionalidad del padre e hijo
    def presentarse(self):
        return f"Hola, soy {self.nombre}, un perro de raza {self.raza} y tengo {self.edad} años. {self.hacer_sonido()}"


# Clase que hereda de Animal (Hijo)
class Gato(Animal):
    def __init__(self, nombre, edad, color):
        # Llamar al constructor del padre
        super().__init__(nombre, edad)
        self.color = color

    # Override del método del padre
    def hacer_sonido(self):
        return "¡Miau miau!"

    # Método específico del gato
    def ronronear(self):
        return "El gato está ronroneando"

    # Método que combina funcionalidad del padre e hijo
    def presentarse(self):
        return f"Hola, soy {self.nombre}, un gato de color {self.color} y tengo {self.edad} años. {self.hacer_sonido()}"


# Clase que demuestra polimorfismo
class Veterinario:
    def examinar_animal(self, animal):
        return f"Examinando a: {animal.nombre}. Edad: {animal.edad}. Hace este sonido: {animal.hacer_sonido()}"


# Función principal para demostrar el funcionamiento
def main():
    print("=== DEMOSTRACIÓN DE HERENCIA EN PYTHON ===\n")

    # Crear instancias
    perro = Perro("Rex", 3, "Labrador")
    gato = Gato("Whiskers", 2, "Negro")

    print("1. MÉTODOS HEREDADOS:")
    print(f"Perro come: {perro.comer()}")
    print(f"Gato duerme: {gato.dormir()}\n")

    print("2. MÉTODOS SOBREESCRITOS (OVERRIDE):")
    print(f"Perro hace sonido: {perro.hacer_sonido()}")
    print(f"Gato hace sonido: {gato.hacer_sonido()}\n")

    print("3. MÉTODOS ESPECÍFICOS DE CADA CLASE:")
    print(f"Perro mueve cola: {perro.mover_cola()}")
    print(f"Gato ronronea: {gato.ronronear()}\n")

    print("4. POLIMORFISMO - MÉTODO PRESENTARSE:")
    print(perro.presentarse())
    print(gato.presentarse())
    print()

    print("5. POLIMORFISMO CON VETERINARIO:")
    vet = Veterinario()
    print(vet.examinar_animal(perro))
    print(vet.examinar_animal(gato))
    print()

    print("6. VERIFICACIÓN DE HERENCIA:")
    print(f"¿Perro es instancia de Animal? {isinstance(perro, Animal)}")
    print(f"¿Gato es instancia de Animal? {isinstance(gato, Animal)}")
    print(f"¿Animal es instancia de Perro? {isinstance(Animal('Genérico', 1), Perro)}")


if __name__ == "__main__":
    main()
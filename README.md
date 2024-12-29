
# Notes App

Una aplicación sencilla de notas desarrollada para poner en practicas el uso de **SwiftUI** utilizando la arquitectura **MVVM**.  
Permite a los usuarios crear, editar y eliminar notas con un título y contenido.

## Características

- **Crear notas**: Agrega una nueva nota con un título y un texto.
- **Editar notas**: Modifica el título y el contenido de las notas existentes.
- **Eliminar notas**: Borra notas fácilmente desde la lista.
- **Arquitectura MVVM**: Separación de la lógica de negocio y la vista.
- **Pruebas unitarias**: Cobertura de las funciones principales del ViewModel.

---

## Tecnologías utilizadas

- **SwiftUI**: Framework para crear interfaces declarativas.
- **MVVM**: Arquitectura para organizar el código.
- **XCTest**: Framework para pruebas unitarias.

---

## Instalación y configuración

1. Clona este repositorio en tu máquina local.
   ```bash
   git clone https://github.com/tu-usuario/notes-app.git
   cd notes-app
   ```
2. Abre el proyecto en **Xcode**.
3. Selecciona un simulador y ejecuta la aplicación presionando `Cmd + R`.

---

## Estructura del proyecto

```
NotesApp/
├── Models/
│   └── Notas.swift          # Modelo que representa una nota
├── ViewModels/
│   └── ViewModel.swift # Lógica de negocio y conexión con las vistas
├── Views/
│   ├── CreateView.swiftUI  # Vista de las crear la notas de notas
│   └── UpdateView.swiftUI # Vista para actuliazar o editar notas
|   └── ContentView.swifUI # Vista del contenido principal 
|
└── NoteTests/
    └── NoteTests.swift # Pruebas unitarias
```

---

## Funcionalidades principales

### Crear una nota
1. Haz clic en el botón `+` en la parte superior derecha.
2. Ingresa el título y el contenido en el formulario.
3. Presiona `Save` para guardar la nueva nota.

### Editar una nota
1. Selecciona una nota de la lista.
2. Modifica el título y/o el contenido en el formulario.
3. Presiona `Save` para actualizar la nota.

### Eliminar una nota
1. Desliza la nota hacia la izquierda en la lista.
2. Presiona el botón `Delete`.

---

## Pruebas unitarias

Las pruebas aseguran que la funcionalidad principal del ViewModel funcione correctamente.  
Para ejecutar las pruebas:  

1. Abre el proyecto en Xcode.
2. Selecciona el esquema de prueba (⌘ + U).

Pruebas incluidas:
- Agregar una nota.
- Actualizar una nota existente.
- Eliminar una nota.

---

## Próximos pasos

- **Persistencia de datos**: Implementar Core Data o UserDefaults para guardar notas.
- **Pruebas UI**: Validar la interacción del usuario con la interfaz.
- **Estilo visual**: Mejorar el diseño con colores y fuentes personalizados.

---

## Capturas de pantalla

### Lista de notas
![Lista de notas](https://via.placeholder.com/400x300?text=Lista+de+notas)

### Formulario de creación/edición
![Formulario de nota](https://via.placeholder.com/400x300?text=Formulario+de+nota)

---

## Contribuciones

Si deseas contribuir:
1. Realiza un fork del repositorio.
2. Crea una rama (`git checkout -b feature-nueva-funcionalidad`).
3. Envía tus cambios (`git commit -m 'Descripción de los cambios'`).
4. Sube tu rama (`git push origin feature-nueva-funcionalidad`).
5. Abre un Pull Request.

---

## Autor

**Marcel Diaz Granados**  
*Ingeniero de Sistemas*  
[marceldgr@gmail.com](mailto:marceldgr@gmail.com)

---

## Licencia

Este proyecto está licenciado bajo la [MIT License](LICENSE).

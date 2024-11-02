Feature: US01 - Registro de usuario

Como usuario, quiero registrarme en la plataforma para poder iniciar sesión y acceder a funciones personalizadas.

Scenario: Registro en creación
Given que estoy en la página de registro
When completo los datos requeridos y envío el formulario
Then debo recibir un correo electrónico de confirmación

Examples:
    | Iniciar Sesion con Google |
    | Iniciar Sesion            |
    | Registrarse               |

Scenario: Confirmación de registro
Given que confirmo mi correo electrónico
When hago clic en el enlace de confirmación
Then debo poder iniciar sesión en mi cuenta

Examples:
    | Registro Exitoso                       |
    | Reinicia la pagina para Iniciar Sesion |


Feature: US02 - Inicio de sesion

Como usuario registrado, quiero iniciar sesión en la plataforma para acceder a mis funciones personalizadas.

Scenario: Ingresar a mi cuenta
Given que estoy en la página de inicio de sesión
When ingreso mis credenciales correctas
Then debo poder acceder a mi cuenta

Examples:
    | Iniciar Sesion            |
    | Usuario:                  |
    | Contraseña:               |

Scenario: Inicio de sesion incorrecto
Given que el usuario ha ingresado credenciales incorrectas
When intente iniciar sesión
Then debe recibir un mensaje de error que indique que las credenciales son inválidas y la opción de reintentar

Examples:
    | Inicio de Sesion incorrecto                                 | 
    | El usuario o contraseña son incorrectos, intentelo de nuevo |

Feature: US04 - Buscar Contenido

Como usuario, quiero buscar contenido relevante en la plataforma para encontrar la información que necesito para mejorar mi rendimiento en futuras competiciones.

Scenario: Busqueda exitosa
Given que estoy en la barra de búsqueda.
When ingreso un término de búsqueda.
Then debería ver una lista de resultados relevantes.

Examples:
    | Busquerda | Ensaladas       |
    | Mejores recetas de ensaldas |
    | Ensaldas caseras            |

Scenario: Busqueda fallida
Given que el usuario realiza una búsqueda que no devuelve resultados
When la búsqueda se completa
Then debe recibir un mensaje que indique que no se encontraron resultados y sugerencias para así reformular su búsqueda

Examples:
    | Busqueda Fallida                           |
    | No se encontraron los resultados deseados  |
    | Reformule su busqueda e intentelo de nuevo |

Feature: US13 - Compartir fotos sobre los platillos de la dieta

Como usuario quiero un apartado de comunidad para compartir como se ven los platillos que preparo.

Scenario: Compartir fotos 
Given que el usuario quiere compartir imágenes de sus platillos
When acceda a la comunidad y suba la(s) imagen(es)
Then podrá interactuar con otros usuarios

Examples:
    | Foros             |
    | Suba sus imagenes |
    | Enviar            |

Scenario: Interaccion con la comunidad
Given que el usuario ha compartido un platillo en la comunidad
When otros usuarios interactúan con su publicación (mediante "me gusta" o comentarios)
Then la plataforma debe notificar al usuario para mantenerlo informado sobre la interacción 

Examples:
    | Foros | Notificaciones              |
    | Le dieron me gusta a tu ultima foto!|

Feature: US14 - Foro de discusion y ayuda para usuarios

Como usuario quiero un foro de discusión para estudiantes, programadores y deportistas

Scenario: Ingreso al foro
Given que el usuario necesita ayuda con su dieta
When el usuario entre al foro de ayuda
Then podrá resolver su duda/problema

Examples:
    | Foros                              |
    | Temas populares                    |
    | Nuevas actualizaciones para la app |
    | Las mejores dietas                 |

Scenario: Interaccion con la comunidad
Given que el usuario ha publicado una pregunta en el foro
When otros usuarios responden a su pregunta
Then la plataforma debe enviar notificaciones al usuario para mantenerlo actualizado sobre las respuestas y permitirle marcar las respuestas más útiles

Examples:  
    | Foros  | Notificaciones                 |
    | Recibio una respuesta en su ultimo post |

Feature: US27 - Selección de idioma en la aplicación.

Como usuario, quiero poder seleccionar mi idioma preferido para usar la aplicación de forma más cómoda y accesible.

Scenario: Eleccion de idioma
Given que el usuario está creando una cuenta nueva en la plataforma
When accede a la pantalla de registro por primera vez
Then la plataforma le ofrece una lista de idiomas para seleccionar el de su preferencia, configurando toda la interfaz en el idioma elegido

Examples:
    | Logo | Inicio | Idioma |Iniciar Sesion    |
    | Elija el idioma de su preferencia         |
    | Español        | Ingles                   |
   

Scenario: Cambio instantaneo
Given que el usuario ya tiene una cuenta en la plataforma
Whenaccede a la configuración de su perfil
Then la plataforma le permite cambiar el idioma en cualquier momento, adaptando automáticamente la interfaz a la nueva selección

Examples:
    | Logo | Inicio | Idioma | Iniciar Sesion    |
    | Desea cambiar de idioma?                   |


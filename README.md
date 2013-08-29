# Timeline.me v0.1
Trabajo Práctico Integrador - Taller Web I

## Notas preliminares
El presente documento tiene como objetivo definir los lineamientos del trabajo práctico integrador a desarrollarse durante la cursada de la materia Taller Web I, modalidad Java. Se irá incrementando la documentación adjunta a la consigna, dado que la misma es dinámica. Sin embargo, toda consigna definida no se volverá atrás (para no perjudicar a aquellos que hayan comenzado el desarrollo de las mismas).

## Contexto
La aplicación a desarrollar será la de una flamante [startup](http://www.google.com/url?q=http%3A%2F%2Fen.wikipedia.org%2Fwiki%2FStartup_company&sa=D&sntz=1&usg=AFQjCNGyB9cBDzy7as7Q_NeV7aJ7TcRMWg) llamada timeline.me. La misma se encarga de brindar servicios a otras startup, proporcionándoles una línea de tiempo (similar a la del [Twitter](https://si0.twimg.com/help/1347477275_95741) o [Facebook](http://www.coldscoop.com/wp-content/gallery/the-new-facebook-timeline/new-facebook-timeline-5.jpg)) en la cual podrán publicar las noticias relativas a su empresa. De este modo, una nueva empresa puede reservar su línea de tiempo y comenzar a compartir eventos como ser la obtención de fondos o la liberación de la primera beta de su software.

Para cada nueva empresa existirán n agentes, los cuales podrán emitir sus actualizaciones en nombre de la empresa. Cada agente podrá “seguir” a otras empresas para poder facilitar tareas de [mystery shopping](http://www.google.com/url?q=http%3A%2F%2Fen.wikipedia.org%2Fwiki%2FMystery_shopping&sa=D&sntz=1&usg=AFQjCNGY9A3RZSfoOwfuNCscSH-zmHLoYA) hacia los competidores.

> **Nota:** Los agentes no siguen a otros agentes, sino a empresas.

Las actualizaciones que se publicarán pueden ser de lo más variadas, pero en este primer incremento deberá soportar la publicación de texto plano.

## Requerimientos extraídos del diálogo con el cliente
* Cada publicación debe tener una fecha, para poder ordenarlas cronológicamente
* El agente debe tener una especie de inbox en la cual pueda observar las actualizaciones de las empresas a las que está siguiendo sin necesidad de estar pendiente de un timeline general
* Ningún agente podrá pertenecer a más de una empresa
* Cada empresa puede crear tantos agentes como desee
* Todo agente puede elegir a qué empresas seguir y a cuáles dejar de seguir

## Extensibilidad
En lo sucesivo se incrementará esta consigna, proporcionando pantallas de ejemplo y formalizando los requerimientos puntuales dentro de los lineamientos generales.

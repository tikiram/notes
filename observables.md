
- Un valor observable puede ser representado en UI.

- Un arbol con nodos observables puede ser representado en UI.

- Una variable o accion puede ser observada, es decir, el resultado de una variable o accion puede ser notificado a sus suscriptores.

- Todas las entradas provenientes de una UI son eventos manejados por un callback (definido por el developer)
  - Todos estos callbacks modifican el estado de la UI
  - Estos callbacks son la fuente de la verdad de la UI

- Si un callback (accion) puede ser observado y un observable puede ser traducido en UI, debe de haber una conexion directa entre los callbacks y la UI.
  - No deberia de haber necesidad de crear una copia de la "fuente de la verdad" en una variable aparte.

- El valor producido por un observable es lo que se representa en UI.

- Un observable puede producir otro observable.
- Un observable puede producir un objeto que contenga muchos observables.

Se puede utilizar un traductor t1 para pintar un observable o1 en UI y un traductor t2 para printar un observable o2 en UI.

- Un observable podria ser representado de forma abstracta como su ultimo valor producido. 
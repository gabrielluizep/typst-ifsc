#import "default.typ": default

#let vf(
  enunciado: none,
  items: ()
) = {
  par(enunciado)

  list(..items, marker: "[   ]")
}

/* Exemplo de uso:
  #vf(
    enunciado: "Marque a alternativa correta",
    // Se só existir um item deverá ser colocado um "," ao final
    items: (
      [Item 1],
      [Item 2],
      [Item 3],
      [Item 4]
    )
  )
*/

#let prova(
  titulo: none,
  professor: none,
  email: none,
  curso: none,
  materia: none,
  data: none,
  doc,
) = {


  default(doc)  
}

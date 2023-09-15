#import "default.typ": default

#let article(title: none, subtitle: none, authors: (), date: none, doc) = {
  set enum(numbering: "1º)")
  set heading(numbering: "1.")
  set math.equation(numbering: "(1)")

  align(center)[
    #image("./assets/ifsc-v.png", width: 100pt)
  ]

  align(horizon + center)[
    #text(20pt, title, weight: "bold") \
    #text(16pt, subtitle, weight: "semibold")
  ]

  align(bottom + left)[
    #text(list(..authors, marker: "", body-indent: 0pt), weight: "semibold")
    date
  ]

  pagebreak()

  default(doc)
}

/* Exemplo de uso:
  #show: doc => article(
    title: [
      Typst IFSC-SJ
    ],
    subtitle: [
      Um template para o Typst voltado para
    ],
    // Se apenas um autor colocar , no final para indicar que é um array
    authors: (
      [Gabriel Luiz Espindola Pedro],
    ),
    date: [
      13 de Setembro de 2023
    ],
    doc,
  )
*/
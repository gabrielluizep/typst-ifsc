/* Exemplo de uso:
  #vf(
    enunciado: "Marque a alternativa correta",
    items: (
      [Item 1],
      [Item 2],
      [Item 3],
      [Item 4]
    )
  )
*/

#let vf(
  enunciado: none,
  items: ()
) = {
  par(enunciado)

  list(..items, marker: "[   ]")
}

/* Exemplo de uso:
  #show: doc => conf(
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

#let conf(
  title: none,
  subtitle: none,
  authors: (),
  date: none,
  doc,
) = {
  let sans-font = "New Computer Modern Sans"
  set text(font: sans-font, lang: "br")
  
  show par: set block(above: 1.5em, below: 1.5em)
  set par(justify: true, first-line-indent: 1.25cm)
  set text(12pt)

  set heading(numbering: "1.")
  set math.equation(numbering: "(1)")

  set align(center)
  image("./assets/ifsc-v.png", width: 100pt)

  set align(horizon + center)
  text(20pt, title, weight: "bold")
  
  set align(horizon + center)
  text(16pt, subtitle, weight: "semibold")

  set align(bottom + left)
  text(list(..authors, marker: "", body-indent: 0pt), weight: "semibold")
  
  text(date)

  pagebreak()

  set align(start + top)
  doc
}


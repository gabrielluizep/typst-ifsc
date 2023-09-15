#let default(doc) = {
  let sans-font = "New Computer Modern Sans"
  set text(12pt, font: sans-font, lang: "br")

  set par(justify: true, first-line-indent: 1.25cm)
  show par: set block(above: 1.5em, below: 1.5em)

  doc
}


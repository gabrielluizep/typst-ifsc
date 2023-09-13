
#let conf(
  title: none,
  authors: (),
  date: none,
  doc,
) = {
  set heading(numbering: "1.")

  set align(center)
  image("assets/ifsc-v.png", width: 100pt)

  set align(horizon + center)

  text(20pt, title, weight: "bold")

  for author in authors {
    set align(bottom + left)
    text(12pt, author.name, weight: "semibold")
  } 
  
  set align(bottom + left)
  text(date)

  pagebreak()

  set align(start + top)
  doc
}
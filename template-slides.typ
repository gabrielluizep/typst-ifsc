#import "@preview/polylux:0.3.1": *

#let primaryColor = rgb("#30504e")
#let bgColor = rgb("eef1ec")
#let paddingX = 1.5em
#let paddingY = 1em

#set page(
  paper: "presentation-16-9",
  margin: 0cm,
  fill: bgColor,
  numbering: "1/1",
)
#set text(size: 25pt, font: "FreeSans")

#let title-slide = (title: none, doc) => polylux-slide[
  #box(width: 100.1%, height: 40%, fill: primaryColor)[
    #align(left + bottom)[
      #pad(x: paddingX, y: paddingY)[
        #text([*IFSC Polylux*], 2em, fill: bgColor)
      ]
    ]
  ]

  #pad(x: paddingX, y: paddingY)[
    #grid(columns: (1fr, 1fr), [
      #doc
    ], [
      #align(right)[
        #image("./assets/ifsc-v.png", width: 30%)
      ]
    ])
  ]
]

#let slide = (title: none, doc) => polylux-slide[
  #box(width: 100.1%, height: 10%, fill: primaryColor)[
    #align(left + horizon)[
      #pad(x: paddingX)[
        #text([#title], fill: bgColor)
      ]
    ]
  ]

  #pad(x: paddingX, y: paddingY)[
    #doc
  ]

  #align(bottom)[
    #box(width: 100.1%, height: 5%, fill: primaryColor)[
      #v(.25em)
      #pad(x: paddingX / 2)[
        #text(.7em, fill: bgColor)[
          #locate(loc => [#loc.page() /])
        ]
      ]

      #align(right)[
        #pad(x: 0em)[
          #circle(width: 1.8em, height: 1.8em, fill: primaryColor)[
            #align(center + horizon)[
              #image("./assets/ifsc-logo.png", width: 70%)
            ]
          ]
        ]
      ]
    ]
  ]
]

#title-slide(title: [Slide Massa])[
  Gabriel Luiz Espindola Pedro\
  #text(.8em, link("gabrielluizep.glep@gmail.com"))

  #align(bottom)[
    20/09/2023
  ]
]

#slide(title: [Slide Massa])[
  #text([Título]) \ \
  #uncover(2)[
    #text([Subtítulo])
  ]
]
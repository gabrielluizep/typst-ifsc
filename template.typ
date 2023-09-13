#import "conf.typ": *

#show: doc => conf(
  title: [
    Typst IFSC-SJ
  ],
  authors: (
    (
      name: "Gabriel Luiz Espindola Pedro",
    ),
  ),
  date: [
    13 de Setembro de 2023
  ],
  doc,
)

= Introdução

#lorem(80)

= Objetivos

#lorem(80)

= Metodologia

_emph_ #lorem(80) \ 

== Código
```python
def f(x):
  return sum(2**k for k in range(x+1))
```

= Resultados

#underline[
  #lorem(80)
]

= Conclusão

#lorem(80)

== Bloco de equações
$ f(x)=sum_(k=0)^x 2^k $


#pagebreak()

= Referências

#lorem(80)
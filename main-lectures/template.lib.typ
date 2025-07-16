#import "@preview/quick-maths:0.2.1": shorthands
#import "@preview/equate:0.3.2": equate

#let int = math.circle.small
#let empty = math.diameter
#let gral = $limits(integral)$
#let hh = h(1mm)

#let formatting = doc => {
  set page("a4", margin: 0.5in, numbering: "1")
  set text(12pt, lang: "ru")
  set heading(numbering: "1.1.")
  show heading.where(level:1): it => {
    counter(math.equation).update(0)
    it
  }
  set enum(numbering: "(1)")
  set math.equation(numbering: "(1)", supplement: none)

  show: equate.with(sub-numbering: false, number-mode: "label")
  show: shorthands.with(
    ($>=$, math.gt.eq.slant),
    ($<=$, math.lt.eq.slant),
  )

  show outline.entry.where(level: 1): it => {
    v(1em, weak: true)
    strong(it)
  }
  set outline(indent: auto)

  doc
}

#let head(str) = align(center)[
  #text(18pt)[*#str*]\
  #text(14pt)[_Функциональный анализ, 2025_]
]

#let problem-weights = (
  (cost: 5, dur: 2),
  (cost: 13, dur: 7),
  (cost: 9, dur: 4),
  (cost: 5, dur: 3),
  (cost: 7, dur: 4),
  (cost: 8, dur: 5),
  (cost: 4, dur: 5),
  (cost: 6, dur: 7),
  (cost: 5, dur: 8),
  (cost: 9, dur: 13),
  (cost: 9, dur: 14),
  (cost: 9, dur: 15),
  (cost: 7, dur: 17),
  (cost: 9, dur: 17),
  (cost: 5, dur: 17),
)

#let hint(content) = box(
  stroke: 0.5pt,
  width: 100%,
  inset: 0.25cm,
  radius: 0.2cm,
  content
)

#let info(n) = [
  #h(1fr)
  _(*#problem-weights.at(n - 1).at("cost")* кг., годно в теч. *#problem-weights.at(n - 1).at("dur")* дней)_
]

#let problemlist(title) = doc => {
  show: formatting
  set page(numbering: none, background: image(
    "pictures/troubles-faded.jpg",
    width: 100%,
    height: 100%,
    fit: "stretch"
  ))
  set enum(numbering: n => [
    #h(-6mm)
    _(#problem-weights.at(n - 1).at("cost"),
      #problem-weights.at(n - 1).at("dur"))_
    #h(1mm)
    *#n.*
  ])

  head([ #title ])
  doc
}

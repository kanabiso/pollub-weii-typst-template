#set text(lang: "pl")
#set page("a4") //typ papieru

#set page(numbering: none) // wyłączneie numerowania 
#set heading(numbering: "1.1") //numerowanie nagłówków
#include "rozdzialy/001a_strona_tytulowa.typ"
// dołączenie strony tyułowej
#pagebreak() // aby była pusta strona po tytułowej
#pagebreak()
#set page(numbering: "1") // włączenie numerowania


//ustawienia strony
#set page(margin: 
  (inside: 3.5cm, outside: 2.5cm, top: 2.5cm, bottom: 2cm)
)
#set text(12pt) //wielkosc czcionki

// #set text(font: "EB Garamond") // darmowy "Times"
// #set text(font: "Liberation Serif") // darmowy "Times"


// dodaje pusty paragraf po nagłówku aby było wciecie (bo po angielsku nie ma)
#show heading: it => {
  it
  par(text(size: 0pt, ""))
}

//ustawienia paragrafu 
#set par(
  first-line-indent: 2em,
  spacing: 1.5em,  
  leading: 1.5em, // interlinia
  justify: true,
)

#set enum(numbering: "1.1.", full: true) // numerowanie list
#set math.equation(numbering: "(1)") //numerowanie wzorów

// Ustawia rozmiar czcionki dla H1 na 1x rozmiaru bazowego
#show heading.where(level: 1): set text(size: 1em)

// Ustawia rozmiar czcionki dla H2 na 0.8x rozmiaru bazowego
#show heading.where(level: 2): set text(size: 0.9em)

// Ustawia duży odstęp nad nagłówkiem głównym (H1)
#show heading.where(level: 1): set block(
  above: 0em,
  below: 0em,
)
#show heading.where(level: 2): set block(
  above: 2em, // Odstęp od akapitu PO WYŻ E J
  below: 0em    // Odstęp od akapitu P O N I Ż E J
)
#show heading.where(level: 3): set block(
  above: 2em, // Odstęp od akapitu PO WYŻ E J
  below: 0em    // Odstęp od akapitu P O N I Ż E J
)


//podpis tabeli na górze
#show figure.where(
  kind: table
): set figure.caption(position: top)

// ============ Spis treści ============================
#outline(
  title: "Spis treści", 
  indent: auto,         
)
#pagebreak()


// ============ Dołączenia rozdziałów ==================
#include "rozdzialy/02_cel_i_zakres.typ"
#pagebreak()
#include "rozdzialy/03_przeglad_literatury.typ"
#pagebreak()
#include "rozdzialy/04_metody_badawcze.typ"

// ============ Dołączenia spisu rysunków i tabel jeśli potrzebne ==================
#heading(numbering: none)[Spis rysunków (jeśli potrzebne)]
#outline(
  title: none,
  target: figure.where(kind: image),
)

#linebreak()

#heading(numbering: none)[Spis tabel (jeśli potrzebne)]
#outline(
  title: none,
  target: figure.where(kind: table),
)


// ============ Bibliografia ===========================
#pagebreak()
#set bibliography(style: "ieee")
#bibliography("Moja_biblioteka.bib")

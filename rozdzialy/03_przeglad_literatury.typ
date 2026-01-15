
= Ogólne
== Bibliografia 
Oznaczenie źródeł `@nazwa_zrodla`

trzeba je najpierw dodać do Moja_biblioteka.bib w formacie bibtex

przykład:  @ALMARHABI2024598 @VERONI2022103190 @Zou @CHATZOGLOU2022103058 @WPA3_server_aut

== Sierotki
Jednym ze sposobów pozbywania się sierotek jest użycie `#block[]` i złączenie tekstu np `#block[w domu]`.

== Rozdziały
Konkretne rozdział pisz w osobnych plikach w katalogu 'rozdzialy' i dołączaj je w pliku main.typ. Po stronie tytułowej musi być pusta strona. Spis treści generuje się automatycznie tak jak bibliografia

== Problemy
Jeśli wystąpią problemy można spojrzeć do dokumentacji * https://typst.app/docs/ * cała konfiguracja szablonu znajduję się w pliku main.typ. 

#pagebreak()

= Obrazki, tabele, wzory
== Obrazki

//przyklad obrazka z podpisem 
#figure(
  image("../img/cat.png", width: 30%),
  supplement: [Rysunek],
  caption: [Podpis rysunku.],

) <kotek>

Jak pokazano na @kotek jest sobie kotek. Manualny odstęp pomiędzy elementami można ustawić za pomocą `#v()`
//np
#v(1em)

== Tabele

#figure(
  table(
    columns: (auto, auto, auto),
    inset: 10pt,
    align: center,
    table.header(
      [*L.p*], [*1 kolumna*], [*2 kolumna*],
    ),
    [ 1 ],[ treść ],[ treść ],
    [ 2 ],[ treść ],[ treść ]
  ),
  supplement: [Tabela],
  caption: [Podpis tabeli.],
)<tabela1>

Odwołanie do @tabela1. #linebreak()
Poradnik do tabeli - * https://typst.app/docs/guides/tables * #linebreak()

== Wzory
Siła jest zdefiniowana jako $F = m a$, gdzie $m$ to masa. #linebreak()

Równanie energii z numeracją wzoru:
$ E = m c^2 $

Skomplikowany wzór
$ f(x) = 1 / sigma sqrt(2 pi) exp( - (x - mu)^2 / (2 sigma^2) ) $ <rozklad_normalny>
oraz odwołanie do wzoru @rozklad_normalny

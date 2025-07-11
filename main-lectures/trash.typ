// = Мера и интеграл
//
// == Пространства с мерой
//
// #def("пространство с мерой")[
//   Пара $(S, frak(B))$, где $frak(B) subset 2^S$, называется $sigma$-алгеброй подмножеств $S$, если выполнены следующие условия:
//   + Всё множество $S$ лежит в $frak(B)$;
//   + Если $B in frak(B)$, то дополнение $B^C = S - B$ также является элементом $frak(B)$;
//   + Если $B_n in frak(B)$ при всех $n in NN$, то $union.big_(n in NN) B_n$ также лежит в $frak(B)$. #h(1fr) ($sigma$-аддитивность)
// ]
//
// #exer[
//   Докажите, что и всякое счётное пересечение элементов $sigma$-алгебры $(S, frak(B))$ лежит в $frak(B)$.
// ]
//
// #def("мера")[
//   Пусть $(S, frak(B))$ --- некая $sigma$-алгебра. Тогда функция $m : frak(B) -> RR_0^+$ называется _$sigma$-аддитивной мерой,_ если выполнены следующие условия:
//   + $m(union.sq.big_(n in NN) B_n) = sum_(n = 1)^oo m(B_n)$, для каждой счётной системы попарно непересекающихся множеств $B_n in frak(B)$; #h(1fr) ($sigma$-аддитивность)
//   + Множество $S$ можно представить в виде счётного объединения множеств $B_n in frak(B)$, таких, что $m(B_n) < oo$ при всех $n in NN$. #h(1fr) ($sigma$-финитность)
//   Значение $m(B)$ называется $m$-мерой множества $B$, а множества $B in frak(B)$ называются $frak(B)$-измеримыми.
// ]
//
// #def("измеримые функции")[
//   Вещественная функция $x : S -> RR$, определённая на множестве $S$, называется _измеримой,_ если прообраз всякого открытого множества $U subset RR$ представляет из себя измеримое подмножество $S$, т.е. $x^(-1)(U) in frak(B)$.
// ]
//
// #def("почти всюду")[
//   Свойство $P$, относящееся к точкам множества $S$, выполняется _$m$-почти всюду_ на $S$, если множество точек, в которых оно не выполняется, имеет $m$-меру нуль.
// ]
//
// == Интеграл по мере
//
// #def("простая функция")[
//   Вещественная функция $x : S -> RR$ называется _простой,_ если существует конечный набор попарно непересекающихся множеств $B_1, ..., B_n in frak(B)$, такой, что на каждом из множеств $B_j$ функция $x$ принимает постоянное значение, и $x(s) = 0$ при $x in.not union.big_(j = 1)^n B_j$.\
//   Такая функция $x$ называется _$m$-интегрируемой_ на множестве $S$, если
//   $
//     sum_(j = 1)^n abs(x_j) dot m(B_j) < oo,
//   $ <simple-integral>
//   где $x_j$ есть постоянное значение $x$ на множестве $B_j$. Величина (@simple-integral) называется _интешралом_ функции $x$ и обозначается
//   $
//     gral_S x(s) #hh m(d s) " или " gral_S x(s).
//   $
// ]
// #def("интеграл по мере")[
//   Произвольная вещественная функция $x$, определённая\ $m$-почти всюду на $S$, называется\ _$m$-интегрируемой_, если существует последовательность ${x_n}_(n = 1)^oo$ простых $m$-интегрируемых функций, сходящаяся $m$-п.в. к $x$, и при этом
//   $
//     gral_S abs(x_n (s) - x_m (s)) #hh m(d s) stretch(->)_(n, m -> oo) 0.
//   $
//   Так как пространство $RR$ полно, существует конечный предел
//   $
//     lim_(n -> oo) gral_S x_n (s) #hh m(d s),
//   $
//   не зависящий от выбора аппроксимирующей последовательности ${x_n}$. Этот предел называется интегралом функции $x$.
// ]
//
// #exer[
//   Докажите, что если поменять значения интегрируемой функции $x$ на множестве меры нуль, то интеграл не изменится.
// ]
//
// == Свойства интеграла
//
// + Если $x$, $y$ --- интегрируемые функции, то линейная комбинация $alpha x + beta y$ (где $alpha, beta in RR$) также представляет собой интегрируемую функцию, и
//   $
//     gral_S (alpha x + beta y)(s) #hh m(d s) = alpha gral_S x(s) #hh m(d s) + beta gral_S y(s) #hh m(d s).
//   $
// + Функция $x$ интегрируема тогда и только тогда, когда интегрируема $abs(x)$ (упражнение).
// + Если функция $x$ интегрируема и $x(s) >= 0$ почти всюду на $S$, то $integral_S x(s) #hh m(d s) >= 0$.
// + Если функция $x$ интегрируема, то для любого множества $B in frak(B)$ мы полагаем
//   $
//     gral_B x(s) #hh m(d s) =^"def" gral_S x(s) dot chi_B (s) #hh m(d s),
//   $
//   где $chi_B$ --- характеристическая функция множества $B$. В таком случае, функция $X : frak(B) -> RR$, определённая как $X(B) = integral_B x(s) #hh m(d s)$ является $sigma$-аддитивной.
// + Опреденённая выше функция $X$ является _абсолютно непрерывной_ относительно меры $m$, т.е. выполняется сходимость $X(B) stretch(->)_(m(B) -> 0) 0$ равномерно по $B in frak(B)$. #h(1fr) (упражнение)

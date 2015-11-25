## Learn Arrays in X minutes



```ruby




# Tablice są numerowane od zera, podobnie jak w C albo w Javie.
# Ujemny indeks oznacza pozycję od końca tablicy tj.
# pole z indeksem -1 będzie oznaczało ostatnie pole w tablicy,
# -2 przedostatnie i tak dalej.


# Metody które możemy stosować przy tablicach:
#----------------------------------------------------------------------------------------------------------------
#[ ] – nawiasy kwadratowe. Pozwalają wypełnić nowo powstałą tablicę konkretnymi wartościami,
#na przykład:

Array.[]( 1, 'a', /^A/ )
=>[1, "a", /^A/]

#Jak widzimy tablice nie muszą przechowywać tylko jednego typu danych. Każde pole może być innego typu.
#Tą samą operację możemy zapisać również jako:
Array[ 1, 'a', /^A/ ]

#Nie musimy nawet używać jakby się wydawało kluczowego słówka "Array"

[ 1, 'a', /^A/ ]

#new - zwraca nową tablicę, w któej opcjonalnie możemy zadeklarować jej wielkość, a nawet wartość domyślną.

Array.new - pusta tablica, nie wypełniona.
=>[]

Array.new(2) - pusta tablica z 2 pustymi (nil) polami.
=>[nil,nil]

Array.new(5, "A") - 5 elementowa tablica wypełniona w każdym polu dużą literą A.
=>["A", "A", "A", "A", "A"]
#----------------------------------------------------------------------------------------------------------------


#Operacje na tablicach
#----------------------------------------------------------------------------------------------------------------
#& - tablica1 & tablica2 - zwraca nową tablicę składającą się z części wspólnej tablicy 1 i 2. Bez powtórzeń.
[ 1, 1, 3, 5 ] & [ 1, 2, 3 ]
=>[1, 3]
#----------------------------------------------------------------------------------------------------------------
#* - tablica * liczba - zwraca tablicę pomnożoną o daną liczbę.
[ 1, 2, 3 ] * 3
=>[1, 2, 3, 1, 2, 3, 1, 2, 3]
#----------------------------------------------------------------------------------------------------------------
#* - tablica * napis - zwraca tablicę w której między polami oryginalnej został dodany podany napis.
[1,2,3,4,5] * test
=> "1test2test3test4test5"
#----------------------------------------------------------------------------------------------------------------
#+ - tablica1+tablica2 - dodaje ze sobą dwie tablice i tworzy nową.
[1,2,3] + [5,6]
=> [1,2,3,5,6]
#----------------------------------------------------------------------------------------------------------------
#- - tablica1 - tablica 2 - odejmuje od pierwszej tablicy drugą i tworzy nową.
[1,2,3,5,6] - [1,2,3]
=> [5,6]
#----------------------------------------------------------------------------------------------------------------
#<< - tablica1 << obiekt - dodaje na końcu tablicy podany obiekt i tworzy nową tablicę, dlatego tą operację
#można wykonać wielokrotnie.
[1,2,3] << "c" << "a" << [5,6]
=> [1,2,3,c,a,5,6]
#----------------------------------------------------------------------------------------------------------------
#<=> - tablica1 <=> tablica2 - zwraca wartość -1,0 lub 1 jeśli: pierwsza tablica jest mniejsza, są równe,
#albo pierwsza jest większa.
[1,2,3] <=> [1,2]
=> 1

[1,2] <=> [1,2,3]
=> -1

[1,2,3] <=> [1,2,3]
=>0
#----------------------------------------------------------------------------------------------------------------
#== - tablica1 == tablica2 - zwraca wartość true jeśli dwie tablice są sobie równe, bądź false jeśli nie.
[1,2,3] == [1,2,3]
=> true

[1,2,3] == [1,2]
=> false
#----------------------------------------------------------------------------------------------------------------
#=== - tablica1 === tablica2 - tak samo jak "=="
#----------------------------------------------------------------------------------------------------------------
#[] - tablica[indeks] lub tablica[start,długość] lub tablica[zakres] - zwraca element o podanym indeksie, nową tablicę
#zaczynającą się w podanym punkcie i o długości podanej w parametrze, nową tablicę z wartościami z danego zakresu
#lub nil jeśli podaliśmy indeks spoza zakresu
a = [ "a", "b", "c", "d", "e" ]

a[2] +  a[0] + a[1]
=> "cab"

a[6]
=> nil

a[1, 2]
=> ["b", "c"]

a[1..3]
=> ["b", "c", "d"]

a[4..7]
=> ["e"]

a[6..10]
=> nil

a[-3, 3]
=> ["c", "d", "e"]
#----------------------------------------------------------------------------------------------------------------
#[]= - tablica[indeks] lub tablica[start,długość] lub tablica[zakres] - ustawia wartość w polu o podanym indeksie,
#zakresie. Jeśli podany indeks jest większy niż obecna długość tablicy, to tablica jest automatycznie zwiększana.
a = Array.new
=> []

a[4] = "4";  
=> [ nil, nil, nil, nil, 4]

a[0, 3] = [ 'a', 'b', 'c' ];
=> ["a", "b", "c", nil, "4"]

a[1..2] = [ 1, 2 ];  
=> ["a", 1, 2, nil, "4"]

a[0, 2] = "?";
=> ["?", 2, nil, "4"]

a[0..2] = "A";
=> ["A", "4"]

a[-1] = "Z";
=> ["A", "Z"]

a[1..-1] = nil;
=> ["A"]
#----------------------------------------------------------------------------------------------------------------
#| - tablica1|tablica2 - łączy ze sobą 2 tablice bez powtórzeń.
["a","b","c"] | ["c","d","a"] 	
=>	["a", "b", "c", "d"]
#----------------------------------------------------------------------------------------------------------------
#assoc - tablica.assoc(obiekt) - Przeszukuje tablice, której elementami są inne tablice w poszukiwaniu danego obiektu.
#Zwraca pierwszą tablicę w której odnaleziono szukany obiekt, lub nil jeśli nie znaleziono go wcale.
s1 = [ "colors", "red", "blue", "green" ]
s2 = [ "letters", "a", "b", "c" ]
s3 = "foo"
a  = [ s1, s2, s3 ]
a.assoc("letters") 	
=> ["letters", "a", "b", "c"]

a.assoc("foo")
=> nil
#----------------------------------------------------------------------------------------------------------------
#at - tablica.at(indeks) - zwraca element o podanym indeksie. Ujemny indeks oznacza pozycję od końca tablicy.
a = [ "a", "b", "c", "d", "e" ]
a.at(0)
=> "a"

a.at(-1)
=> "e"
#----------------------------------------------------------------------------------------------------------------
#clear - tablica.clear - czyści wszystkie elementy tablicy
a = [ "a", "b", "c", "d", "e" ]
a.clear
=> []
#----------------------------------------------------------------------------------------------------------------
#collect - tablica.collect{| obiekt | blok }  - zwraca nową tablicę i wywołuje się dla każdego elementu tablicy
#wykonując wykonując instrukcje podane w bloku.
a = [ "a", "b", "c", "d" ]
a.collect {|x| x + "!" }
=> ["a!", "b!", "c!", "d!"]

a
=> ["a", "b", "c", "d"]
#----------------------------------------------------------------------------------------------------------------
#collect! - tablica.collect!{| obiekt | block } - zwraca tablice przechodząc przez jej każde pole i wykonując
#polecenia w bloku.
a = [ "a", "b", "c", "d" ]
a.collect! {|x| x + "!" }
=>["a!", "b!", "c!", "d!"]

a
=> ["a!", "b!", "c!", "d!"]
#----------------------------------------------------------------------------------------------------------------
#compact - tablica.compact - zwraca nową tablicę z usuniętymi pustymi polami (nil).
[ "a",nil,"b",nil,"c",nil ].compact
=> ["a","b","c"]
#----------------------------------------------------------------------------------------------------------------
#compact! - tablica.compact! - to samo co compact, ale modyfikuje daną tablicę. Jeśli nic nie zmieniono to zwraca nil.
[ "a", nil, "b", nil, "c" ].compact! 	
=> ["a", "b", "c"]

[ "a", "b", "c" ].compact!
=> nil
#----------------------------------------------------------------------------------------------------------------
#concat - tablica1.concat(tablica2) - dodaje do tablicy elementy z drugiej tablicy.
[ "a", "b" ].concat( ["c", "d"] )
=> ["a", "b", "c", "d"]
#----------------------------------------------------------------------------------------------------------------
#delete - tablica.delete(obiekt) lub tablica.delete(obiekt) {| | blok} - usuwa wszystkie elementy tablicy
#które są równe obiektowi.Zwraca podany obiekt lub nil jeśli nie znaleziono podanego obiektu.
#Można opcjonalnie dodać blok czynności do wykonania.

a = [ "a", "b", "b", "b", "c" ]
a.delete("b") 	
=> "b"

a 	
=> ["a", "c"]

a.delete("z") 	
=>	nil

a.delete("z") { "not found" } 	
=> "not found"
#----------------------------------------------------------------------------------------------------------------
#delete_at - tablica.delete_at(indeks) - usuwa element o podanym indeksie i zwraca go.
#Jeśli indeks jest poza zakresem zwraca nil.
a = %w( ant bat cat dog )
a.delete_at(2) 	
=> "cat"

a
=> ["ant", "bat", "dog"]

a.delete_at(99) 	
=> nil
#----------------------------------------------------------------------------------------------------------------
#delete_if - tablica.delete_if {| | blok } - usuwa wszystkie elementy tablicy dla których blok zwrócił wartość true.
a = [ "a", "b", "c" ]
a.delete_if {|x| x >= "b" }
=> ["a"]
#----------------------------------------------------------------------------------------------------------------
#each - tablica.each {| pozycja | blok } - wykonuje blok pojedynczo dla każdego elementu tablicy,
#podając ten element jako parametr.
a = [ "a", "b", "c" ]
a.each {|x| print x, " -- " }

#wynikiem jest:
a -- b -- c --
#----------------------------------------------------------------------------------------------------------------
#each_index -	tablica.each_index {|indeks|blok } - to samo co each, ale podaje indeks elementu zamiast samego elementu.
#----------------------------------------------------------------------------------------------------------------
#empty? -	tablica.empty? - zwraca wartość true jeśli tablica jest pusta, albo false jeśli nie.
[].empty?
=> true
#----------------------------------------------------------------------------------------------------------------
#eql? - tablica1.eql?(tablica2) - zwraca wartość true, jeśli tablice mają tą samą długość, a odpowiadające sobie
#wartości są równe. W przeciwnym przypadku false.
[ "a", "b", "c" ].eql?(["a", "b", "c"])
=> true

[ "a", "b", "c" ].eql?(["a", "b"])
=> false

[ "a", "b", "c" ].eql?(["b", "c", "d"])
=> false
#----------------------------------------------------------------------------------------------------------------
#fill - tablica.fill(obiekt), tablica.fill(obiekt,start[,długość]), tablica.fill(obiekt,zakres) - ustawia wyznaczone
#elementy tablicy jako wartość obiektu. Podanie nil jako startu jest równoznaczny z zerem, długość nil jest
#równoznaczna z tablica.length (długością całej tablicy).
a = [ "a", "b", "c", "d" ]
a.fill("x") 	
=>["x", "x", "x", "x"]

a.fill("z", 2, 2)
=> ["x", "x", "z", "z"]

a.fill("y", 0..1)
=> ["y", "y", "z", "z"]
#----------------------------------------------------------------------------------------------------------------
#first - tablica.first - zwraca pierwszy element tablicy, jeśli tablica jest pusta zwraca nil.
a = [ "q", "r", "s", "t" ]
a.first
=> "q"
#----------------------------------------------------------------------------------------------------------------
#flatten - tablica.flatten - zwraca nową tablicę spłaszczając ją do jednego wymiaru (rekurencyjnie).
#Z każdego elementu który jest tablicą wyciąga elementy do nowej tablicy.
s = [ 1, 2, 3 ] 	
=> [1, 2, 3]

t = [ 4, 5, 6, [7, 8] ]
=> [4, 5, 6, [7, 8]]

a = [ s, t, 9, 10 ] 	
=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]

a.flatten 	
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#----------------------------------------------------------------------------------------------------------------
#flatten! - tablica.flatten! - to samo co flatten, ale modyfikuje aktualną tabelę. Jeśli nie przeprowadzono
#zmian zwraca nil.
#----------------------------------------------------------------------------------------------------------------
#include? -	tablica.include?(obiekt) - zwraca true jeśli w tablicy odnaleziono dany obiekt, w przeciwnym razie false.
a = [ "a", "b", "c" ]
a.include?("b") 	
=> true

a.include?("z") 	
=> false
#----------------------------------------------------------------------------------------------------------------
#index -	tablica.index(obiekt) - zwraca indeks elementu w tablicy który jest taki jak obiekt,
#albo nil jeśli takiego nie ma.
a = [ "a", "b", "c" ]
a.index("b") 	
=> 1

a.index("z") 	
=> nil
#----------------------------------------------------------------------------------------------------------------
#indexes -	tablica.indexes( i1, i2, ... iN ) - zwraca nową tablicę złożoną z elementów o podanych indeksach.
#Może zwrócić nil jeśli podamy indeks spoza zakresu.
a = [ "a", "b", "c", "d", "e", "f", "g" ]
a.indexes(0, 2, 4) 	
=> ["a", "c", "e"]

a.indexes(0, 2, 4, 12) 	
=> ["a", "c", "e", nil]
#----------------------------------------------------------------------------------------------------------------
#indices - tablica.indices - to smao co indexes.
#----------------------------------------------------------------------------------------------------------------
#join -	tablica.join("Napis") - zwraca napis powstały po ponwersji każdego elementu tablicy do napisu, rozdzielonego
#poprzez "Napis".
[ "a", "b", "c" ].join 	
=> "abc"

[ "a", "b", "c" ].join("-") 	
=> "a-b-c"
#----------------------------------------------------------------------------------------------------------------
#last -	tablica.last - zwraca ostatni element tablicy, albo nil jeśli tablica jest pusta.
[ "w", "x", "y", "z" ].last
=> "z"
#----------------------------------------------------------------------------------------------------------------
#length - tablica.length - zwraca długość tablicy. Może być zerem.
[ 1, 2, 3, 4, 5 ].length
=> 5
#----------------------------------------------------------------------------------------------------------------
#nitems -	tablica.nitems - zwraca ilość elementó któe nie są nilem, może zwrócić zero.
[ 1, nil, 3, nil, 5 ].nitems
=> 3
#----------------------------------------------------------------------------------------------------------------
#pop -	tablica.pop - usuwa i zwraca ostatni element tablicy. Zwraca nil jeśli tablica była pusta.
a = [ "a", "m", "z" ]
a.pop 	
=> "z"

a 	
=> ["a", "m"]
#----------------------------------------------------------------------------------------------------------------
#push -	tablica.push( [obiekt] ) - dodaje do tablicy wszystko zawarte w obiekcie i zwraca jako nową tablicę.
a = [ "a", "b", "c" ]
a.push("d", "e", "f") 	
=> ["a", "b", "c", "d", "e", "f"]
#----------------------------------------------------------------------------------------------------------------
#rassoc -	tablica.rassoc(klucz) - przeszukuje tablicę której elementy też są tablicami. Porównuje klucz z drugim
#elementem każdej zawartej tablicy używając do tego "==". Zwraca pierwszą tablicę która spełni warunek.
a = [ [ 1, "one"], [2, "two"], [3, "three"], ["ii", "two"] ]
a.rassoc("two") 	
=> [2, "two"]

a.rassoc("four")
=> nil
#----------------------------------------------------------------------------------------------------------------
#reject! -	tabica.reject! {| | blok } - to samo co delete_if ale zwraca nil jeśli nie wprowadzono żadnych zmian.
#----------------------------------------------------------------------------------------------------------------
#replace -	tablica1.replace(tablica2) - zamienia elementy tablicy1 na elementy tablicy2. Wydłużając ją lub skracając
#w zależności od potrzeb.
a = [ "a", "b", "c", "d", "e" ]
a.replace( [ "x", "y", "z" ] ) 	
=> ["x", "y", "z"]

a
=> ["x", "y", "z"]
#----------------------------------------------------------------------------------------------------------------
#reverse -	tablica.reverse - zwraca nową tablicę w odwrotnej kolejności.
[ "a", "b", "c" ].reverse 	
=> ["c", "b", "a"]
#----------------------------------------------------------------------------------------------------------------
#reverse! -	tablica.reverse! - to samo co reverse, ale zwraca też nil jeśli długość tablicy wynosi 1 lub 0.
#----------------------------------------------------------------------------------------------------------------
#reverse_each -	tablica.reverse_each {| | blok } - to samo co each, ale przechodzi po tablicy od tyłu.
a = [ "a", "b", "c" ]
a.reverse_each {|x| print x, " " }

#wynikiem jest:
c b a
----------------------------------------------------------------------------------------------------------------
#rindex - tablica.rindex(obiekt) - zwraca indeks ostatniego elementu w tablicy który był taki jak podany obiekt.
#Zwraca nil jeśli nie odnaleziono takiego elementu.
a = [ "a", "b", "b", "b", "c" ]
a.rindex("b") 	
=> 3

a.rindex("z") 	
=> nil
#----------------------------------------------------------------------------------------------------------------
#shift -	tablica.shift - zwraca pierwszy element tablicy i usuwa go.
args = [ "-m", "-q", "filename" ]
args.shift
=> "-m"

args
=> ["-q", "filename"]
#----------------------------------------------------------------------------------------------------------------
#size -	tablica.size - to samo co length.
#----------------------------------------------------------------------------------------------------------------
#sort -	tablica.sort , tablica.sort{|a,b|blok} - zwraca nową tablicę stworzoną poprzez sortowanie tablicy. Porównania
#podczas sortowania zostaną przeprowadzonę poprzez "<=>" albo przez opcjonalny blok kodu.
a = [ "d", "a", "e", "c", "b" ]
a.sort 	
=> ["a", "b", "c", "d", "e"]

a.sort {|x,y| y <=> x } 	
=> ["e", "d", "c", "b", "a"]
#----------------------------------------------------------------------------------------------------------------
#sort! - tablica.sort! - to samo co sort, ale operuje na tablicy (nie zwraca nowej). Tablica jest "zamrożona" podczas
#sortowania.
#----------------------------------------------------------------------------------------------------------------
#to_a - tablica.to_a - zwraca tablicę.
#----------------------------------------------------------------------------------------------------------------
#to_ary - synonim to_a
#----------------------------------------------------------------------------------------------------------------
#to_s - tablica.to_s - zwraca tablice w postaci napisu.
[ "a", "e", "i", "o" ].to_s 	
=> "aeio"
#----------------------------------------------------------------------------------------------------------------
#uniq -	tablica.uniq - zwraca nową tablicę bez powtarzających się wartości.
a = [ "a", "a", "b", "b", "c" ]
a.uniq 	
=> ["a", "b", "c"]
#----------------------------------------------------------------------------------------------------------------
#uniq! - tablica.uniq! - to samo co uniq, ale operuje na obecnej tablicy. Zwraca nil jeśli nie dokonano zmian
#(nie było duplikatów w tablicy).
a = [ "a", "a", "b", "b", "c" ]
a.uniq! 	
=> ["a", "b", "c"]

b = [ "a", "b", "c" ]
b.uniq!
=> nil
#----------------------------------------------------------------------------------------------------------------
#unshift - tablica.unshift(obiekt) - dodaje obiekt na początku tablicy reszte elementów przesuwając o jeden.
a = [ "b", "c", "d" ]
a.unshift("a") 	
=> ["a", "b", "c", "d"]
```

require_relative '../spec/spec_helper'

#przykladowe uzycie programu

klient1 = Klient.new('Janusz', 'Kowalski')
samochod1 = Samochod.new('Fiat', 'Punto', 'S')
samochod2 = Samochod.new('Ferrari', '458', 'P')

klient1.add_wypozyczenie Wypozyczenie.new(samochod1, 1)
klient1.add_wypozyczenie Wypozyczenie.new(samochod2, 1)
klient1.add_wypozyczenie Wypozyczenie.new(samochod1, 1)
klient1.add_wypozyczenie Wypozyczenie.new(samochod2, 1)

puts klient1.podsumowanie







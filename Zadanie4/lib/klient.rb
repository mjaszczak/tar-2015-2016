class Klient
  attr_accessor :imie , :nazwisko, :punkty, :wypozyczenie, :kwota

  def initialize(imie, nazwisko)
    @imie = imie
    @nazwisko = nazwisko

    @wypozyczenie = []

  end

  def getKlient
    return @imie, @nazwisko
  end

  def add_wypozyczenie(arg)
    @wypozyczenie << arg
  end

  def podsumowanie
    result = "Klient: #{@imie} #{@nazwisko}\n"

    @wypozyczenie.each do |element|
      result += "\t" + element.samochod.marka + "\t" + element.samochod.model + "\t"+ "koszt: "+ "\t" + element.kwota.to_s + "\t" + "\n"
    end

    result += "Razem: #{kwota}\n"
    result += "zgromadziles: #{punkty} pkt\n"
    result
  end

  def kwota
    @wypozyczenie.inject(0) { |sum, wypozyczenie| sum += wypozyczenie.kwota }

  end

  def punkty
    @wypozyczenie.inject(0) { |sum, wypozyczenie| sum += wypozyczenie.punkty }
  end

end
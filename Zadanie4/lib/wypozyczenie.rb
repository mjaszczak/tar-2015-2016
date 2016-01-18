class Wypozyczenie
  attr_reader :samochod, :dni
  def initialize(samochod, dni)
    @samochod, @dni = samochod, dni
  end

  def kwota
    samochod.kwota(dni)
  end

  def punkty
    samochod.punkty(dni)
  end

end
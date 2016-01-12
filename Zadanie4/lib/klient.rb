class Klient
  attr_accessor :id, :imie , :nazwisko

  def initialize(id, imie, nazwisko)
    @id = id
    @imie = imie
    @nazwisko = nazwisko
  end

end
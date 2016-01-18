class Samochod
  attr_accessor :marka , :model, :cena

  def initialize(marka, model, klasa)
    @marka = marka
    @model = model
    @klasa = klasa
    @cena = 0

    @punkty = 0
  end

  def getSamochod
    return @marka, @model, @klasa
  end

  def kwota(dni)
    if @klasa == 'S'
      @cena = 50 * dni
    elsif @klasa == 'W'
      @cena = 100 * dni
    elsif @klasa == 'P'
      @cena = 200 * dni
    end

  end

  def punkty(dni)

    if @klasa == 'S'
      @punkty = dni
    elsif @klasa == 'W'
      @punkty = 2 * dni
    elsif @klasa == 'P'
      @punkty = 5 * dni
    end
  end
end
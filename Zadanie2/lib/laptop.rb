class Laptop

  @marka = nil
  @model = nil
  @procesor = nil
  @ram = nil

  def initialize (marka, model, procesor, ram)
    @marka = marka
    @model = model
    @procesor = procesor
    @ram = ram
  end

  def getMarka
    return @marka
  end

  def getModel
    return @model
  end

  def getProcesor
    return @procesor
  end

  def getRam
    return @ram
  end

  def setMarka (marka)
    @marka = marka
  end

  def setModel (model)
    @Model = model
  end

  def setProcesor (procesor)
    @procesor = procesor
  end

  def setRam (ram)
    @ram = ram
  end

  def getLaptop
    return @marka, @model, @procesor, @ram
  end
end
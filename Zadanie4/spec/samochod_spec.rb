require 'rspec'
require 'simplecov'
SimpleCov.start
require_relative '../spec/spec_helper'

describe Samochod do
  it "be initialized with two arguments" do
    expect {
      Samochod.new('Opel', 'Corsa',nil)
    }.to_not raise_error
  end

  before  do
    @samochod = Samochod.new :marka, :model, :klasa
  end

  it 'powinno sie rownac' do
   samochod = Samochod.new('Fiat','Uno', 'S')

   expect(@samochod.marka).to equal :marka
  end

  it 'powinno byc takie same' do
    samochod = Samochod.new('Fiat','Uno', 'S')
    samochod1 = samochod.getSamochod
    'expect(samochod1).to equal(samochod)'
  end

  it 'powinno obliczyc cene S' do
    samochod = Samochod.new('Opel', 'Vectra', 'S')
    kwota = samochod.kwota(1)
    expect(kwota).to equal(50)
  end

  it 'powinno obliczyc cene W' do
    samochod = Samochod.new('Opel', 'Insignia', 'W')
    kwota = samochod.kwota(1)
    expect(kwota).to equal(100)
  end

  it 'powinno obliczyc cene P' do
    samochod = Samochod.new('Porsche', '911', 'P')
    kwota = samochod.kwota(1)
    expect(kwota).to equal(200)
  end

  it 'powinno obliczyc punkty S' do
    samochod = Samochod.new('Opel', 'Vectra', 'S')
    punkty = samochod.punkty(1)
    expect(punkty).to equal(1)
  end

  it 'powinno obliczyc punkty W' do
    samochod = Samochod.new('Opel', 'Insignia', 'W')
    punkty = samochod.punkty(1)
    expect(punkty).to equal(2)
  end

  it 'powinno obliczyc punkty P' do
    samochod = Samochod.new('Porsche', '911', 'P')
    punkty = samochod.punkty(1)
    expect(punkty).to equal(5)
  end

end

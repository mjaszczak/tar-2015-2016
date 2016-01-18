require 'rspec'
require 'simplecov'
SimpleCov.start

require_relative '../spec/spec_helper'



describe Klient do
  it 'uzywa dwoch argumentow' do
    expect {
      Klient.new('Janusz', 'Wiercipieta')
    }.to_not raise_error
  end
end

describe "#add_wypozyczenie" do
  let(:klient) {Klient.new("Olaf","Pan")}
  it "dodanie wypozyczenia do listy" do
    klient.add_wypozyczenie(double)
    klient.add_wypozyczenie(double)
    klient.add_wypozyczenie(double)
    klient.add_wypozyczenie(double)
    klient.add_wypozyczenie(double)
    expect(klient.wypozyczenie.length).to eq(5)
  end

  let(:samochod) {Samochod.new('Fiat', 'Punto', 'S')}
  let(:wypozyczenie) {Wypozyczenie.new(samochod, 1)}
  let(:klient2) {Klient.new("Olaf","Pan")}
  it "dodanie wypozyczenia do listy" do
    klient2.add_wypozyczenie(wypozyczenie)

    expect(klient2.wypozyczenie.length).to eq(1)
  end

end

describe "#podsumowanie" do
  let(:samochod) {Samochod.new('Fiat', 'Punto', 'S')}
  let(:wypozyczenie) {Wypozyczenie.new(samochod, 1)}
  let(:klient) {Klient.new("Adam", "Kalosz")}

  it "tworzy podsumowanie wypozyczen klienta" do
    klient.add_wypozyczenie(wypozyczenie)
    klient.add_wypozyczenie(wypozyczenie)
    expect(klient.podsumowanie).to eq("Klient: Adam Kalosz\n\tFiat\tPunto\tkoszt: \t50\t\n\tFiat\tPunto\tkoszt: \t50\t\nRazem: 100\nzgromadziles: 2 pkt\n")

  end

  it "sprawdzenie kwoty" do
    klient.add_wypozyczenie(wypozyczenie)
    klient.add_wypozyczenie(wypozyczenie)
    expect(klient.kwota).to eq(100)
  end
  it "sprawdzenie punktow" do
    klient.add_wypozyczenie(wypozyczenie)
    klient.add_wypozyczenie(wypozyczenie)
    expect(klient.punkty).to eq(2)
  end

end
require 'rspec'
require 'simplecov'
SimpleCov.start
require_relative '../lib/wypozyczenie'

describe 'wypozyczenie' do
  it "uzywa dwoch argumentow" do
    expect {
      Wypozyczenie.new(nil, 10)
    }.to_not raise_error
  end
end

describe "#kwota" do
  let(:wypozyczenie) {Wypozyczenie.new(double(:kwota =>1),10)}
  it "kwota za samochod" do
    expect(wypozyczenie.kwota()).to eq(1)
  end
end

describe "#punkty" do
  let(:wypozyczenie) {Wypozyczenie.new(double(:punkty =>1),10)}
  it "dodaje punkty" do
    expect(wypozyczenie.punkty()).to eq(1)
  end
end
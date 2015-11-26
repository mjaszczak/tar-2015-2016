require 'rspec'
require_relative '../lib/Laptop'

describe 'Test Laptop Class' do

  it 'should get initialized brand' do

    laptop = Laptop.new('Asus','N51','i7', 8)
    marka = laptop.getMarka
    puts marka

  end

  it 'should get initialized brands' do

    laptop = Laptop.new('Asus','N51','i7', 8)
    laptop2 = Laptop.new('HP','probook','i7', 16)
    marka = laptop.getMarka
    marka2 = laptop2.getMarka
    puts marka
    puts marka2

  end

  it 'should get initialized model' do
    laptop = Laptop.new('Asus','N51','i7', 8)
    model = laptop.getModel
    puts model
  end

  it 'should get initialized procesor' do
    laptop = Laptop.new('Asus','N51','i7', 8)
    procesor = laptop.getProcesor
    puts procesor
  end

  it 'should get initialized ram' do
    laptop = Laptop.new('Asus','N51','i7', 8)
    ram = laptop.getRam
    puts ram
  end

  it 'should set new brand' do
    laptop = Laptop.new('Asus','N51','i7', 8)
    laptop.setMarka('Acer')
    marka = laptop.getMarka
    puts marka
  end

  it 'should set new model' do
    laptop = Laptop.new('Asus','N51','i7', 8)
    laptop.setModel('R550')
    model = laptop.getModel
    puts model
  end

  describe '#sprawdz' do

    it 'initialized laptop properly' do
      laptop = Laptop.new('Asus','N51','i7', 8)
      marka = laptop.getMarka
      expect(marka).to eq('Asus')
    end

    it 'should set new brand' do
      laptop = Laptop.new('Asus','N51','i7', 8)
      laptop.setMarka('Acer')
      marka = laptop.getMarka
      expect(marka).to eq('Acer')
    end

    it 'shouldnt set new brand' do
      laptop = Laptop.new('Asus','N51','i7', 8)
      laptop.setMarka('Acer')
      marka = laptop.getMarka
      expect(marka).not_to eq('Asus')
    end

  end
end
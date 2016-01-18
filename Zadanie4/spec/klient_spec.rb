require 'rspec'
require_relative '../spec/spec_helper'


  describe Klient do
    it 'be initialized with two arguments' do
      expect {
        Klient.new('Janusz', 'Wiercipieta')
      }.to_not raise_error
    end
  end



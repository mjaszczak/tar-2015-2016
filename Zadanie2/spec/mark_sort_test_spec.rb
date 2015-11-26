require 'rspec'
require_relative '../lib/mark_sort'

describe 'Test Mark_sort' do

  before :each do
    @tab = []
    expect(@tab).to be_empty
    @tab = [1 ,2 ,3 ,4 ,5 ,6 ,7 ,8, 9, 10, 11, 12, 13, 14]
  end
  it 'initialized array properly' do
    expect(@tab).to eq([1 ,2 ,3 ,4 ,5 ,6 ,7 ,8, 9, 10, 11, 12, 13, 14])
  end
  it 'should be defined' do
    expect { blend(@tab) }.not_to raise_error
  end
  it 'is blend' do
    blend(@tab)
    expect(@tab).not_to eq([1 ,2 ,3 ,4 ,5 ,6 ,7 ,8, 9, 10, 11, 12, 13, 14])
    p @tab
  end
  it 'should be defined' do
    expect { mark_sort(@tab) }.not_to raise_error
  end
  it 'is sort' do
    p @tab
    blend(@tab)
    p @tab
    @tab = mark_sort(@tab)
    expect(@tab).to eq([1 ,2 ,3 ,4 ,5 ,6 ,7 ,8, 9, 10, 11, 12, 13, 14])
    p @tab
  end
  it 'is properly sort' do

    blend(@tab)
    @tab = mark_sort(@tab)
    expect(@tab).to eq([1 ,2 ,3 ,4 ,5 ,6 ,7 ,8, 9, 10, 11, 12, 13, 14])
    @tab.push(-777)
    expect(@tab.last).to eq(-777)
    @tab = mark_sort(@tab)
    expect(@tab.first).to eq(-777)

  end

end
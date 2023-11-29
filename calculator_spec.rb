require_relative 'calculator.rb'
require 'rspec'


describe 'get_full_isbn13' do
  it 'returns the complete ISBN-13' do
    expect(get_full_isbn13('978014300723')).to eq('9780143007234')
  end
  it 'raises an ArgumentError if the argument is not a string' do
    expect { get_full_isbn13(123) }.to raise_error(ArgumentError, 'the argument must be a string')
  
  end
end

require_relative 'calculator.rb'
require 'rspec'


describe 'get_full_isbn13' do
  it 'returns a full ISBN 13 code' do
    expect(get_full_isbn13('978014300723')).to eq('9780143007234')
  end
end

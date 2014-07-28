require 'spec_helper'
require '04a'

describe 'uniq_subs' do
  it 'works for a string with no letters' do
    expect(uniq_subs("")).to eq([])
  end

  it 'works for a single lettered string' do
    expect(uniq_subs("t")).to eq(["t"])
  end

  it 'works for strings of length 3' do
    expect(uniq_subs("tes").sort).to eq(["t", "te", "tes", "e", "es", "s"].sort)
  end

  it 'works for strings with common substrings' do
    expect(uniq_subs("banana").sort).to eq(["a", "an", "ana", "anan", "anana", "b", "ba", "ban", "bana", "banan", "banana", "n", "na", "nan", "nana"])
  end
end

require 'spec_helper'
require '03b'

describe 'folding_cipher' do
  it 'encrypts the a correctly' do
    expect(folding_cipher("a")).to eq("z")
    expect(folding_cipher_solution("a")).to eq("z")
  end

  it 'encrypts the plaintext correctly' do
    expect(folding_cipher("thisisatest")).to eq("gsrhrhzgvhg")
    expect(folding_cipher_solution("thisisatest")).to eq("gsrhrhzgvhg")
  end
end

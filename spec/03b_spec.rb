require 'spec_helper'
require '03b'

describe 'folding_cipher' do
  it 'encrypts the plaintext correctly' do
    expect(folding_cipher("thisisatest")).to eq("gsrhrhzgvhg")
    expect(folding_cipher_solution("thisisatest")).to eq("gsrhrhzgvhg")
  end
end

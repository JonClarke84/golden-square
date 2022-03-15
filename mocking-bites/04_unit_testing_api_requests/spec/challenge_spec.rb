require 'challenge'

RSpec.describe CatFacts do
  it 'provides a random cat fact' do
    requester_dbl = double :requester

    allow(requester_dbl).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return('{"fact":"The richest cat is Blackie who was left \u00a315 million by his owner, Ben Rea.","length":74}')

    cat_fact = CatFacts.new(requester_dbl)
    expect(cat_fact.provide).to eq "Cat fact: The richest cat is Blackie who was left \u00a315 million by his owner, Ben Rea."
  end
end
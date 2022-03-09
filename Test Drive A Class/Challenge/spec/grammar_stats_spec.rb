require 'grammar_stats'

RSpec.describe GrammarStats do
  
  it 'ends with a . ! or ?' do
    result = GrammarStats.new()
    expect(result.check("This is a sentence")).to eq false
    expect(result.check("This is a sentence>")).to eq false
    expect(result.check("This is a sentence!")).to eq true
    expect(result.check("This is a sentence?")).to eq true
    expect(result.check("This is a sentence.")).to eq true
  end
  
  it 'starts with a capital letter' do
    result = GrammarStats.new()
    expect(result.check("This is a sentence.")).to eq true
    expect(result.check("this is a sentence.")).to eq false
  end
  
  it 'returns the percentage of texts passed' do
    result = GrammarStats.new()
    result.check("This is a sentence.") #true
    result.check("This is a sentence.") #true
    result.check("This is a sentence)") #false
    expect(result.percentage_good).to eq 66   
    
    result = GrammarStats.new()
    result.check("This is a sentence.") #true
    result.check("This is a sentence.") #true
    result.check("This is a sentence)") #false
    result.check("This is a sentence>") #false
    expect(result.percentage_good).to eq 50   
    
    result = GrammarStats.new()
    result.check("This is a sentence.") #true
    result.check("This is a sentence.") #true
    result.check("This is a sentence.") #true
    result.check("This is a sentence)") #false
    result.check("This is a sentence>") #false
    expect(result.percentage_good).to eq 60   
    
  end

end
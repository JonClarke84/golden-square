require 'json'
#require 'net/http'

class CatFacts
  def initialize(requester)
    @requester = requester
  end

  def provide
    return "Cat fact: #{get_cat_fact["fact"]}"
  end

  private

  def get_cat_fact
    #text_response = Net::HTTP.get(URI("https://catfact.ninja/fact"))
    text_response = @requester.get(URI("https://catfact.ninja/fact"))
    return JSON.parse(text_response)
  end
end

# require 'json'
# require 'net/http'

# class CatFacts
#   def provide
#     return "Cat fact: #{get_cat_fact["fact"]}"
#   end

#   private

#   def get_cat_fact
#     text_response = Net::HTTP.get(URI("https://catfact.ninja/fact"))
#     return JSON.parse(text_response)
#   end
# end

# cat_fact = CatFacts.new

# p cat_fact.provide
require "net/http"
require "json"

def get_friends(id)
  response = Net::HTTP.get_response(URI.parse("http://fg-69c8cbcd.herokuapp.com/user/#{id}"))
  JSON.parse(response.body.to_s)['friends']
end

id = gets.split[1]

friends = get_friends(id)
friends_of_friends = friends.map { |_id| get_friends(_id) }

puts '## 友人'
puts friends
puts '## 友人の友人'
puts friends_of_friends

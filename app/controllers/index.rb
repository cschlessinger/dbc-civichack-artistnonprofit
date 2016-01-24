get '/sushi.json' do

  content_type :json
  return {:sushi => ["Maguro", "Hamachi", "Uni", "Saba", "Ebi", "Sake", "Tai"]}.to_json
end

get '/watson' do 
	User.analyze
end
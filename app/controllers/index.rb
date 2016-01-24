get '/watson' do 



	nonprofit_big_fives = User.analyze(NONPROFITS)
	artist_big_five = User.analyze(ARTIST)
	scores = User.score(nonprofit_big_fives)
	p "*" * 100
	p User.match(artist_big_five, scores)
	p "*" * 100

end
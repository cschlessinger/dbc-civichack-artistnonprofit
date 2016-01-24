class User < ActiveRecord::Base
	require 'json'
	require 'excon'
	require 'awesome_print'


	ARTIST = {

		"Zio" => "Zio Ziegler (born February 18, 1988) is an American artist, known for his intricately patterned paintings and his large-scale murals that can be seen in major cities in the U.S., Europe and Asia. His work reflects the diverse influences of late medieval and quattrocento painting, aboriginal, African and naive art, and the European graffiti movement. Driven by intuition and depicted with a playful use of space and materials, his subject matter reflects the human condition, with reference to allegorical, mythical and artistic lineage. He paints in the belief that his paintings complete themselves by triggering self-discovery in their viewers.

	Life and Career

	Zio Ziegler studied at The Rhode Island School of Design and Brown University. Since graduating with a BFA from RISD in 2010, Ziegler has developed an international studio and mural practice to support his philosophy that art should be available to all.

	He currently lives and works in San Francisco.

	Painting is my attempt at self-understanding. I create an experience for the viewer that parallels my own search in creation. This process, my examination, is a constant balance between reason and intuition. I make in order to understand, rather to explain what has been made. 

	Whether I am painting on a public wall or in my studio, my craft is a vehicle that shows me how to turn every crisis into an opportunity. The naiveté and freedom I see and admire in the physical world directly influence the most primitive aspects of my work. My materials are the tools I use to try to understand my human condition. The paint, surface, and subject matter parallel my subconscious call to action and often manifest themselves in the same forms; however each form displays varying levels of emphasis, color, line and pattern. I paint how I feel, not how I see. Rather than finding a concept and executing it in a linear fashion, I react to my questions, life and awareness. My work is not about a final product, rather the process that helps me solve a problem.

	I've often been asked what my symbols mean in relation to one another, and while I hint at their meanings with a reference in a title, their meanings are as ephemeral as the process itself. This transience of meaning serves as catalyst for each viewer’s understanding. Because each painting lacks a singular explanation, the viewer is faced with self-reflection of his or her own life and internal pursuit. My paintings have subjectively different meanings for each person that views them, and through the observer’s own balance of reason, context, and intuitive reaction, each one serves as a starting place of thought and reflection rather than a means to an end.

	There is no conclusion, only more questions. There is no meaning except for that which the viewer designates. My paintings begin with an existential journey, and can only end with an absurdist conclusion - the rest is just a vehicle for conveying this.﻿"
	}

	NONPROFITS = {
		"Madres" => "The mission of La Casa de las Madres is to respond to calls for help from domestic violence victims, of all ages, 24 hours a day, 365 days a year. We give survivors the tools to transform their lives. We seek to prevent future violence by educating the community and by redefining public perceptions about domestic violence.	 
	La Casa de las Madres acts boldly to create a community where violence against women and children is not tolerated.  We envision a society in which all individuals and families have equal access to basic resources and asset-building opportunities.  In our future, safety and respect in intimate relationships are the norm. To achieve this future, La Casa offers a continuum of comprehensive and empowering services to women, teens, and children exposed to and at risk of abuse.  We provide access, tools and support—clinical and peer-based—that strengthen their ability to affect change and break the cycle of violence. At our core, La Casa is an empowerment program.  We inform and facilitate transitions, investing participants with the fortitude and skills to articulate their needs, access healing resources, and build sustainable lives free of violence.  A survivor has many choices in seeking to address or escape the violence in her life, and we know that an empowered person makes her own choices.  We understand that each survivor will best understand her own history and present needs, and we value each step she takes as an incremental move toward thriving and safety.  Furthermore, we empower families and communities to interrupt the intergenerational and cultural transmission of attitudes and behaviors enabling abuse, cultivating expectations of non-violence and encouraging community dialogue about domestic violence. Victims of domestic violence experience repeated and escalating violence that impacts many aspects of life, impeding positive health outcomes, earning potential, and capacity to thrive.  As such, survivors must be able to access immediate safety as well as services supporting their transition to lives free from violence.  Accordingly, our specialized services address both the immediate and long-term needs of individuals and families.
	
	La Casa is a vocal advocate and community partner.  We are always alert and ready to give help when needed: 24/7/365.  All of our services are free of charge, confidential, and multicultural.  They are available to all victims, in English and Spanish at all times, with additional linguistic capacities available through staff, volunteers, and interpreter resources.",

		"Second" => "The mission of La Casa de las Madres is to respond to calls for help from domestic violence victims, of all ages, 24 hours a day, 365 days a year. We give survivors the tools to transform their lives. We seek to prevent future violence by educating the community and by redefining public perceptions about domestic violence.	 
	La Casa de las Madres acts boldly to create a community where violence against women and children is not tolerated.  We envision a society in which all individuals and families have equal access to basic resources and asset-building opportunities.  In our future, safety and respect in intimate relationships are the norm.
	
	To achieve this future, La Casa offers a continuum of comprehensive and empowering services to women, teens, and children exposed to and at risk of abuse.  We provide access, tools and support—clinical and peer-based—that strengthen their ability to affect change and break the cycle of violence.
	
	At our core, La Casa is an empowerment program.  We inform and facilitate transitions, investing participants with the fortitude and skills to articulate their needs, access healing resources, and build sustainable lives free of violence.  A survivor has many choices in seeking to address or escape the violence in her life, and we know that an empowered person makes her own choices.  We understand that each survivor will best understand her own history and present needs, and we value each step she takes as an incremental move toward thriving and safety.  Furthermore, we empower families and communities to interrupt the intergenerational and cultural transmission of attitudes and behaviors enabling abuse, cultivating expectations of non-violence and encouraging community dialogue about domestic violence.
	
	Victims of domestic violence experience repeated and escalating violence that impacts many aspects of life, impeding positive health outcomes, earning potential, and capacity to thrive.  As such, survivors must be able to access immediate safety as well as services supporting their transition to lives free from violence.  Accordingly, our specialized services address both the immediate and long-term needs of individuals and families.
	
	La Casa is a vocal advocate and community partner.  We are always alert and ready to give help when needed: 24/7/365.  All of our services are free of charge, confidential, and multicultural.  They are available to all victims, in English and Spanish at all times, with additional linguistic capacities available through staff, volunteers, and interpreter resources.",
	

		"Third" => "The mission of La Casa de las Madres is to respond to calls for help from domestic violence victims, of all ages, 24 hours a day, 365 days a year. We give survivors the tools to transform their lives. We seek to prevent future violence by educating the community and by redefining public perceptions about domestic violence.	 
	La Casa de las Madres acts boldly to create a community where violence against women and children is not tolerated.  We envision a society in which all individuals and families have equal access to basic resources and asset-building opportunities.  In our future, safety and respect in intimate relationships are the norm.
	
	To achieve this future, La Casa offers a continuum of comprehensive and empowering services to women, teens, and children exposed to and at risk of abuse.  We provide access, tools and support—clinical and peer-based—that strengthen their ability to affect change and break the cycle of violence.
	
	At our core, La Casa is an empowerment program.  We inform and facilitate transitions, investing participants with the fortitude and skills to articulate their needs, access healing resources, and build sustainable lives free of violence.  A survivor has many choices in seeking to address or escape the violence in her life, and we know that an empowered person makes her own choices.  We understand that each survivor will best understand her own history and present needs, and we value each step she takes as an incremental move toward thriving and safety.  Furthermore, we empower families and communities to interrupt the intergenerational and cultural transmission of attitudes and behaviors enabling abuse, cultivating expectations of non-violence and encouraging community dialogue about domestic violence.
	
	Victims of domestic violence experience repeated and escalating violence that impacts many aspects of life, impeding positive health outcomes, earning potential, and capacity to thrive.  As such, survivors must be able to access immediate safety as well as services supporting their transition to lives free from violence.  Accordingly, our specialized services address both the immediate and long-term needs of individuals and families.
	
	La Casa is a vocal advocate and community partner.  We are always alert and ready to give help when needed: 24/7/365.  All of our services are free of charge, confidential, and multicultural.  They are available to all victims, in English and Spanish at all times, with additional linguistic capacities available through staff, volunteers, and interpreter resources.",
		
		"Fourth" => "The mission of La Casa de las Madres is to respond to calls for help from domestic violence victims, of all ages, 24 hours a day, 365 days a year. We give survivors the tools to transform their lives. We seek to prevent future violence by educating the community and by redefining public perceptions about domestic violence.	 
	La Casa de las Madres acts boldly to create a community where violence against women and children is not tolerated.  We envision a society in which all individuals and families have equal access to basic resources and asset-building opportunities.  In our future, safety and respect in intimate relationships are the norm.
	
	To achieve this future, La Casa offers a continuum of comprehensive and empowering services to women, teens, and children exposed to and at risk of abuse.  We provide access, tools and support—clinical and peer-based—that strengthen their ability to affect change and break the cycle of violence.
	
	At our core, La Casa is an empowerment program.  We inform and facilitate transitions, investing participants with the fortitude and skills to articulate their needs, access healing resources, and build sustainable lives free of violence.  A survivor has many choices in seeking to address or escape the violence in her life, and we know that an empowered person makes her own choices.  We understand that each survivor will best understand her own history and present needs, and we value each step she takes as an incremental move toward thriving and safety.  Furthermore, we empower families and communities to interrupt the intergenerational and cultural transmission of attitudes and behaviors enabling abuse, cultivating expectations of non-violence and encouraging community dialogue about domestic violence.
	
	Victims of domestic violence experience repeated and escalating violence that impacts many aspects of life, impeding positive health outcomes, earning potential, and capacity to thrive.  As such, survivors must be able to access immediate safety as well as services supporting their transition to lives free from violence.  Accordingly, our specialized services address both the immediate and long-term needs of individuals and families.
	
	La Casa is a vocal advocate and community partner.  We are always alert and ready to give help when needed: 24/7/365.  All of our services are free of charge, confidential, and multicultural.  They are available to all victims, in English and Spanish at all times, with additional linguistic capacities available through staff, volunteers, and interpreter resources.",
		
		"Fifth" => "The mission of La Casa de las Madres is to respond to calls for help from domestic violence victims, of all ages, 24 hours a day, 365 days a year. We give survivors the tools to transform their lives. We seek to prevent future violence by educating the community and by redefining public perceptions about domestic violence.	 
	La Casa de las Madres acts boldly to create a community where violence against women and children is not tolerated.  We envision a society in which all individuals and families have equal access to basic resources and asset-building opportunities.  In our future, safety and respect in intimate relationships are the norm.
	
	To achieve this future, La Casa offers a continuum of comprehensive and empowering services to women, teens, and children exposed to and at risk of abuse.  We provide access, tools and support—clinical and peer-based—that strengthen their ability to affect change and break the cycle of violence.
	
	At our core, La Casa is an empowerment program.  We inform and facilitate transitions, investing participants with the fortitude and skills to articulate their needs, access healing resources, and build sustainable lives free of violence.  A survivor has many choices in seeking to address or escape the violence in her life, and we know that an empowered person makes her own choices.  We understand that each survivor will best understand her own history and present needs, and we value each step she takes as an incremental move toward thriving and safety.  Furthermore, we empower families and communities to interrupt the intergenerational and cultural transmission of attitudes and behaviors enabling abuse, cultivating expectations of non-violence and encouraging community dialogue about domestic violence.
	
	Victims of domestic violence experience repeated and escalating violence that impacts many aspects of life, impeding positive health outcomes, earning potential, and capacity to thrive.  As such, survivors must be able to access immediate safety as well as services supporting their transition to lives free from violence.  Accordingly, our specialized services address both the immediate and long-term needs of individuals and families.
	
	La Casa is a vocal advocate and community partner.  We are always alert and ready to give help when needed: 24/7/365.  All of our services are free of charge, confidential, and multicultural.  They are available to all victims, in English and Spanish at all times, with additional linguistic capacities available through staff, volunteers, and interpreter resources.",

	}

  	BASE_URL = "https://gateway.watsonplatform.net/personality-insights/api/v2/profile"
  	USER = "a5c68916-42ee-43fd-994b-6a752e54131f"
  	PASS = "ZnejOA1l2jvH"

  def self.analyze

  	artist = {

  		"Zio" => "Zio Ziegler (born February 18, 1988) is an American artist, known for his intricately patterned paintings and his large-scale murals that can be seen in major cities in the U.S., Europe and Asia. His work reflects the diverse influences of late medieval and quattrocento painting, aboriginal, African and naive art, and the European graffiti movement. Driven by intuition and depicted with a playful use of space and materials, his subject matter reflects the human condition, with reference to allegorical, mythical and artistic lineage. He paints in the belief that his paintings complete themselves by triggering self-discovery in their viewers.

  	Life and Career

  	Zio Ziegler studied at The Rhode Island School of Design and Brown University. Since graduating with a BFA from RISD in 2010, Ziegler has developed an international studio and mural practice to support his philosophy that art should be available to all.

  	He currently lives and works in San Francisco.

  	Painting is my attempt at self-understanding. I create an experience for the viewer that parallels my own search in creation. This process, my examination, is a constant balance between reason and intuition. I make in order to understand, rather to explain what has been made. 

  	Whether I am painting on a public wall or in my studio, my craft is a vehicle that shows me how to turn every crisis into an opportunity. The naiveté and freedom I see and admire in the physical world directly influence the most primitive aspects of my work. My materials are the tools I use to try to understand my human condition. The paint, surface, and subject matter parallel my subconscious call to action and often manifest themselves in the same forms; however each form displays varying levels of emphasis, color, line and pattern. I paint how I feel, not how I see. Rather than finding a concept and executing it in a linear fashion, I react to my questions, life and awareness. My work is not about a final product, rather the process that helps me solve a problem.

  	I've often been asked what my symbols mean in relation to one another, and while I hint at their meanings with a reference in a title, their meanings are as ephemeral as the process itself. This transience of meaning serves as catalyst for each viewer’s understanding. Because each painting lacks a singular explanation, the viewer is faced with self-reflection of his or her own life and internal pursuit. My paintings have subjectively different meanings for each person that views them, and through the observer’s own balance of reason, context, and intuitive reaction, each one serves as a starting place of thought and reflection rather than a means to an end.

  	There is no conclusion, only more questions. There is no meaning except for that which the viewer designates. My paintings begin with an existential journey, and can only end with an absurdist conclusion - the rest is just a vehicle for conveying this.﻿"
  	}

  	all_nonprofit_scores = {}

  		NONPROFITS.each do |name, content|
	  		big_5 = []

	  	  response = Excon.post(BASE_URL,
	  	    :body => content,
	  	    :headers => { "Content-Type" => "text/plain" },
	  	    :user => USER,
	  	    :password => PASS
	  	  )
	  	  
	  	  profile = JSON.load(response.body)

	  	  profile["tree"]["children"][0]["children"][0]["children"].each do |trait|
	  	  	big_5 << trait["percentage"]
	  	  end
	  	  
	  	  all_nonprofit_scores[name] = big_5
  			
  		end

  		all_nonprofit_scores

	end

	def self.score(all_nonprofits)

		all_nonprofits_score = {}

		all_nonprofits.each do |name, big_five_values|
	    #assign parameter values to variables
	    openness = big_five_values[0] * 1
	    extraversion = big_five_values[1] * 1
	    conscientiousness = big_five_values[2] * 5
	    agreeableness = big_five_values[3] * 2
	    neuroticism = big_five_values[4] * 1
 
	    #add up total of big 5 values
	    score = openness + extraversion + conscientiousness + agreeableness + neuroticism
	  	all_nonprofits_score[name] = score
	  end

	  all_nonprofits_score

	end

	def self.match(artist_value, nonprofit_values)
	   #create lower and upper boundaries for possible values
	  upper_bound = 100
	  lower_bound = 0

	   #iterate through the parameter array and find two values:
	   #1.closest array value that is greater than or equal to parameter value
	   #2.closest array value that is less than or equal to parameter value
	   
	  nonprofit_values.each do |name, score| 
	   	if artist_value <= score && score <= upper_bound
	   		upper_bound = score
	   	elsif lower_bound <= score && score <= artist_value
	   		lower_bound = score
	   	end
	  end

	  #find differences between upper_bound and value
	  #and lower_bound and value
	  distance1 = (upper_bound - artist_value).abs
	  distance2 = (lower_bound - artist_value).abs
	  if distance1 == 0
	    upper_bound
	  elsif distance2 == 0
	    lower_bound
	  else
	  	if (distance1 > artist_value) && (distance2 > artist_value)
	    	upper_bound
	    elsif (distance1 < artist_value) && (distance2 < artist_value)
	    	lower_bound
	    end
	  end

		if distance1 < distance2
	    upper_bound
	  elsif distance2 < distance1
	  	lower_bound
	  else
	  	upper_bound
	  end

	end

end

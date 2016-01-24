class User < ActiveRecord::Base
	require 'json'
	require 'excon'
	require 'awesome_print'

	homeless_connect = "Project Homeless Connect strengthens and utilizes collaborations with city agencies, businesses, and organizations to provide comprehensive holistic services, both at service events and through continued care, for those who are at risk of becoming homeless, are currently homeless or are transitioning from shelter to permanent housing.

	Since our founding in 2004, we have partnered with city leaders, community-based organizations, and volunteers from across the Bay Area to bring essential services to people living on the streets. These collaborations are at the heart of what we do. We know that this community issue requires a community solution, and San Francisco provides us with the perfect environment for success. Starting as an initiative of the San Francisco Mayor’s office, we are part of the City’s comprehensive and continually innovative response to the crisis of homelessness.

	As we stride forward, PHC envisions a day when all San Franciscans are cared for and housed. To this end, our goal remains to provide high-quality services in a dignified manner to those in need."

	martins = "Martin's, as it is affectionately known, is a free restaurant, serving breakfast and lunch during the week and brunch on Sundays. Our mission is to serve in the spirit of compassion, understanding and love.
We are a community of people with diverse spiritual practices although our roots are in, and we continue to be inspired by, the Catholic Worker Movement. Begun by Dorothy Day and Peter Maurin in 1933, the Catholic Worker phil-osophy and ideals are carried out by upwards of 200 houses worldwide in various works of mercy in the spirit of \"gentle personalism.\"
	
Gentle personalism says that all persons have dignity; all persons have the right to be respected.   It says that each person who comes to Martin's is a guest and is to be treated as such.   It says that eating is a right, not a privilege, and that feeding the hungry is a matter of justice, not of charity.
In an era of corporations, Martin's is unique.   It is not a business and does not function as such.   All donations go to benefit those for whom the money is intended. It receives no Church or government funds.   There is no salaried staff and almost no administrative costs.   Martin's operates on the principle that what must get done will get done, and strives to develop a sense of personal responsibility towards the work.   Those with an administrator's mindset may find Martin's to be a perplexing enigma.   Nevertheless, many who spend a day at the kitchen find themselves touched, even changed, and there are volunteers who have worked at Martin's since it first opened in 1971.
At Martin's, both guests and volunteers represent an incredible cross-section of humanity.   Almost every conceivable race, religion, age, economic and social background, political belief, and educational level are found here.   As one volunteer observed, \"Some of the most fascinating conversations I have ever heard have been at Martin's—on both sides of the counter.\"

	
Martin's is many things.   Some people see it as a miracle.   Some see it as a problem because \"the poor\" are not always pretty, and it is easier if \"they\" are invisible.   Some see Martin's as the one place where someone calls them by name.   Some see Martin's as a sanctuary with a tranquil garden. Some see it as a place that adds meaning and a sense of community to their lives.   Some see Martin's as a fun place to eat or volunteer.   Some see it as a place to do that \"something worthwhile\" they always meant to do.   Some see Martin's as a place where warm nourishing food is served, without embarrassment, without prosely-tization.   Some see it as a place where they can live out the Catholic Worker philosophy in which they so deeply believe.   Some see Martin's as a place that shows what idealism looks like in practice.

If you are wondering what Martin’s could mean to you, come and see.   You will never be quite the same!"

  madres = "The mission of La Casa de las Madres is to respond to calls for help from domestic violence victims, of all ages, 24 hours a day, 365 days a year. We give survivors the tools to transform their lives. We seek to prevent future violence by educating the community and by redefining public perceptions about domestic violence.	 
  La Casa de las Madres acts boldly to create a community where violence against women and children is not tolerated.  We envision a society in which all individuals and families have equal access to basic resources and asset-building opportunities.  In our future, safety and respect in intimate relationships are the norm.
  
  To achieve this future, La Casa offers a continuum of comprehensive and empowering services to women, teens, and children exposed to and at risk of abuse.  We provide access, tools and support—clinical and peer-based—that strengthen their ability to affect change and break the cycle of violence.
  
  At our core, La Casa is an empowerment program.  We inform and facilitate transitions, investing participants with the fortitude and skills to articulate their needs, access healing resources, and build sustainable lives free of violence.  A survivor has many choices in seeking to address or escape the violence in her life, and we know that an empowered person makes her own choices.  We understand that each survivor will best understand her own history and present needs, and we value each step she takes as an incremental move toward thriving and safety.  Furthermore, we empower families and communities to interrupt the intergenerational and cultural transmission of attitudes and behaviors enabling abuse, cultivating expectations of non-violence and encouraging community dialogue about domestic violence.
  
  Victims of domestic violence experience repeated and escalating violence that impacts many aspects of life, impeding positive health outcomes, earning potential, and capacity to thrive.  As such, survivors must be able to access immediate safety as well as services supporting their transition to lives free from violence.  Accordingly, our specialized services address both the immediate and long-term needs of individuals and families.
  
  La Casa is a vocal advocate and community partner.  We are always alert and ready to give help when needed: 24/7/365.  All of our services are free of charge, confidential, and multicultural.  They are available to all victims, in English and Spanish at all times, with additional linguistic capacities available through staff, volunteers, and interpreter resources."
	
  	BASE_URL = "https://gateway.watsonplatform.net/personality-insights/api/v2/profile"
  	USER = "a5c68916-42ee-43fd-994b-6a752e54131f"
  	PASS = "ZnejOA1l2jvH"

  def self.analyze(content)
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

  	  big_5

	end

end

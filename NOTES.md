First Project - Apex Legends

I want to build an application that will help new Apex Legends players pick the right Legend for them. 

The application should load information about each Legend, including their current stats (from players, global), information on their abilities and their character bio. 

Users of the application will be able to generate a suggestion of a player based on criteria from stats, such as Win%. 

Once a user has a suggestion of a Legend, they should be able to see more information on that Legend, including their stats, abilities and character bio. 


------------------------------


Class Legend 
Creates and instance of a Legend
Has many Stats 
Has many Abilities 
Has many Bio 

Class Stats
Belongs to an instance of a Legend
Can be compared/ranked 
Puts information to console 

Class Abilities 
Belongs to an instance of a Legend
Puts information to console 

Class Bio 
Belongs to an instance of a Legend
Puts information to console 

Class Rank
Has many stats
Ranks legends based on stats


#stat_scraper
Scrapes stat data from web page

#bio_ability_scraper
Scrapes bio and ability data from web page

#stats(legend_name)
Puts list of stats based on an argument of a legend name(s)

#abilities(legend_name)
Puts list of abilities based on an argument of a legend name(s)

#bio(legend_name)
Puts bio based on an argument of a legend name(s)

#generate_legend(stat)
Takes in the argument of a stat and puts the name of highest ranked legend for that stat

#legend_all_info(legend_name)
Puts all legend’s info based on argument of a legend 

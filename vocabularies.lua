-- http://www.utf8-chartable.de/unicode-utf8-table.pl
hiragana = {} 
hiragana["a_small"]  = '\227\129\129'
hiragana["a"]  = '\227\129\130'
hiragana["i_small"]  = '\227\129\131'
hiragana["i"]  = '\227\129\132'
hiragana["u_small"]  = '\227\129\133'
hiragana["u"]  = '\227\129\134'
hiragana["e_small"]  = '\227\129\135'
hiragana["e"]  = '\227\129\136'
hiragana["o_small"]  = '\227\129\137'
hiragana["o"]  = '\227\129\138'
hiragana["ka"] = '\227\129\139'
hiragana["ga"] = '\227\129\140'
hiragana["ki"] = '\227\129\141'
hiragana["gi"] = '\227\129\142'
hiragana["ku"] = '\227\129\143'
hiragana["gu"] = '\227\129\144'
hiragana["ke"] = '\227\129\145'
hiragana["ge"] = '\227\129\146'
hiragana["ko"] = '\227\129\147'
hiragana["go"] = '\227\129\148'
hiragana["sa"] = '\227\129\149'
hiragana["za"] = '\227\129\150'
hiragana["si"] = '\227\129\151'
hiragana["zi"] = '\227\129\152'
hiragana["su"] = '\227\129\153'
hiragana["zu"] = '\227\129\154'
hiragana["se"] = '\227\129\155'
hiragana["ze"] = '\227\129\156'
hiragana["so"] = '\227\129\157'
hiragana["zo"] = '\227\129\158'
hiragana["ta"] = '\227\129\159'
hiragana["da"] = '\227\129\160'
hiragana["ti"] = '\227\129\161'
hiragana["di"] = '\227\129\162'
hiragana["tu_small"] = '\227\129\163'
hiragana["tu"] = '\227\129\164'
hiragana["du"] = '\227\129\165'
hiragana["te"] = '\227\129\166'
hiragana["de"] = '\227\129\167'
hiragana["to"] = '\227\129\168'
hiragana["do"] = '\227\129\169'
hiragana["na"] = '\227\129\170'
hiragana["ni"] = '\227\129\171'
hiragana["nu"] = '\227\129\172'
hiragana["ne"] = '\227\129\173'
hiragana["no"] = '\227\129\174'
hiragana["ha"] = '\227\129\175'
hiragana["ba"] = '\227\129\176'
hiragana["pa"] = '\227\129\177'
hiragana["hi"] = '\227\129\178'
hiragana["bi"] = '\227\129\179'
hiragana["pi"] = '\227\129\180'
hiragana["hu"] = '\227\129\181'
hiragana["bu"] = '\227\129\182'
hiragana["pu"] = '\227\129\183'
hiragana["he"] = '\227\129\184'
hiragana["be"] = '\227\129\185'
hiragana["pe"] = '\227\129\186'
hiragana["ho"] = '\227\129\187'
hiragana["bo"] = '\227\129\188'
hiragana["po"] = '\227\129\189'
hiragana["ma"] = '\227\129\190'
hiragana["mi"] = '\227\129\191'
hiragana["mu"] = '\227\130\128'
hiragana["me"] = '\227\130\129'
hiragana["mo"] = '\227\130\130'
hiragana["ya_small"] = '\227\130\131'
hiragana["ya"] = '\227\130\132'
hiragana["yu_small"] = '\227\130\133'
hiragana["yu"] = '\227\130\134'
hiragana["yo_small"] = '\227\130\135'
hiragana["yo"] = '\227\130\136'
hiragana["ra"] = '\227\130\137'
hiragana["ri"] = '\227\130\138'
hiragana["ru"] = '\227\130\139'
hiragana["re"] = '\227\130\140'
hiragana["ro"] = '\227\130\141'
hiragana["wa_small"] = '\227\130\142'
hiragana["wa"] = '\227\130\143'
hiragana["wi"] = '\227\130\144'
hiragana["we"] = '\227\130\145'
hiragana["wo"] = '\227\130\146'
hiragana["n"]  = '\227\130\147'
hiragana["vu"] = '\227\130\148'
hiragana["ka_small"] = '\227\130\149'
hiragana["ke_small"] = '\227\130\150'

animal = {} 
animal.english = "Animals"
animal.hira    = hiragana["do"] .. hiragana["u"] .. hiragana["bu"] .. hiragana["tu"]
animal.audio   = audio.loadSound( "doubutsu.wav" )

spider = {} 
spider.english = "Spider"
spider.hira    = hiragana["ku"] .. hiragana["mo"] 
spider.image   = "spider.png"
spider.audio   = audio.loadSound( "kitsune.wav" )

butterfly = {}
butterfly.english = "Butterfly"
butterfly.hira    = hiragana["ti"] .. hiragana["yo_small"] .. hiragana["o"] 
butterfly.image   = "butterfly.png"
butterfly.audio   = audio.loadSound( "kitsune.wav" )

dragon = {} 
dragon.english = "Dragon"
dragon.hira    = hiragana["ri"] .. hiragana["yu"] .. hiragana["u"] 
dragon.image   = "dragon.png"
dragon.audio   = audio.loadSound( "kitsune.wav" )

frog = {} 
frog.english = "Frog"
frog.hira    = hiragana["ka"] .. hiragana["e"] .. hiragana["ru"] 
frog.image   = "frog.png"
frog.audio   = audio.loadSound( "kitsune.wav" )

hippo = {} 
hippo.english = "Hippopotamus"
hippo.hira    = hiragana["ka"] .. hiragana["ba"] 
hippo.image   = "hippopotamus.png"
hippo.audio   = audio.loadSound( "kaba.wav" )

monkey = {} 
monkey.english = "Monkey"
monkey.hira    = hiragana["sa"] .. hiragana["ru"] 
monkey.image   = "monkey.png"
monkey.audio   = audio.loadSound( "saru.wav" )

owl = {} 
owl.english = "Owl"
owl.hira    = hiragana["hu"] .. hiragana["ku"] .. hiragana["ro"] .. hiragana["u"] 
owl.image   = "owl.png"
owl.audio   = audio.loadSound( "kitsune.wav" )

reindeer = {} 
reindeer.english = "Reindeer"
reindeer.hira    = hiragana["to"] .. hiragana["na"] .. hiragana["ka"] .. hiragana["i"] 
reindeer.image   = "reindeer.png"
reindeer.audio   = audio.loadSound( "kitsune.wav" )

whale = {} 
whale.english = "Whale"
whale.hira    = hiragana["ku"] .. hiragana["zi"] .. hiragana["ra"]
whale.image   = "whale.png"
whale.audio   = audio.loadSound( "kitsune.wav" )

bear = {} 
bear.english = "Bear"
bear.hira    = hiragana["ku"] .. hiragana["ma"] 
bear.image   = "bear.png"
bear.audio   = audio.loadSound( "kuma.wav" )

ant = {} 
ant.english = "Ant"
ant.hira    = hiragana["a"] .. hiragana["ri"] 
ant.image   = "ant.png"
ant.audio   = audio.loadSound( "kitsune.wav" )

raccoon = {} 
raccoon.english = "Raccoon"
raccoon.hira    = hiragana["ta"] .. hiragana["nu"] .. hiragana["ki"] 
raccoon.image   = "raccoon.png"
raccoon.audio   = audio.loadSound( "kitsune.wav" )

bird = {} 
bird.english = "Bird"
bird.hira    = hiragana["to"] .. hiragana["ri"] 
bird.image   = "bird.png"
bird.audio   = audio.loadSound( "tori.wav" )

fish = {} 
fish.english = "Fish"
fish.hira    = hiragana["sa"] .. hiragana["ka"] .. hiragana["na"]
fish.image   = "fish.png"
fish.audio   = audio.loadSound( "kitsune.wav" )

dog = {} 
dog.english = "Dog"  
dog.hira    = hiragana["i"] .. hiragana["nu"]
dog.image   = "dog.png"
dog.audio   = audio.loadSound( "inu.wav" )

lion = {} 
lion.english = "Lion"
lion.hira    = hiragana["si"] .. hiragana["si"] 
lion.image   = "lion.png"
lion.audio   = audio.loadSound( "kitsune.wav" )

animals = {} 
animals[ 1] = spider
animals[ 2] = butterfly
animals[ 3] = dragon
animals[ 4] = frog
animals[ 5] = hippo
animals[ 6] = monkey
animals[ 7] = owl
animals[ 8] = reindeer
animals[ 9] = whale
animals[10] = bear
animals[11] = ant
animals[12] = raccoon
animals[13] = bird
animals[14] = fish
animals[15] = dog
animals[16] = lion
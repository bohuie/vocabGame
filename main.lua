require "cards"

display.setDefault( "textColor", 255, 0, 128 )

welcomeImages = display.newGroup()
menuImages = display.newGroup()
bottomImages = display.newGroup()

function main()
  play = display.newImage( "logo2.png", -10, -95 ) 
  play:scale( 0.60, 0.60 )
  play:addEventListener( "tap", menu )
  welcomeImages:insert( play )
end

function menu()
  display.remove( welcomeImages )
  -- list vocab categories here
  -- cat1  = display.newImage( "category_animals.png", 100, 100 )
  cat1  = display.newText( animal.hira, 100, 100, ansFont, ansSize )
  print( animal.hira )
  cat1:addEventListener( "tap", show )
  cat1_speaker = display.newImage( "speaker.png", 90, -50 )
  cat1_speaker:scale( 0.10, 0.10 )
  cat1_speaker:addEventListener( "tap", readcat1 )
  -- start = display.newImage( "start.png", 200, 200 )
  -- start:addEventListener( "tap", show )
  -- menuImages:insert( start )
  menuImages:insert( cat1 )
  menuImages:insert( cat1_speaker )
end

function readcat1()
  audio.play( animal.audio )
end

main()

require "ending"
require "utilityFunctions"
require "vocabularies"

-- each game has 10 rounds
q1Images  = display.newGroup()
q2Images  = display.newGroup()
q3Images  = display.newGroup()
q4Images  = display.newGroup()
q5Images  = display.newGroup()
q6Images  = display.newGroup()
q7Images  = display.newGroup()
q8Images  = display.newGroup()
q9Images  = display.newGroup()
q10Images = display.newGroup()

-- variables for displaying individual questions
xfactor = 0.25   -- scaling factors
yfactor = 0.25
ypos    = 200    -- positioning
xpos1   = 75
xpos2   = 240
xpos3   = 400
ansXpos = 100    -- answer text properties
ansYpos = 10
ansFont = "Comic Sans MS"
ansSize = 48

-- keep track of current question
questionCounter = 0
gameScore = 0 
currentAnswer = -1

-- feedback sounds
wrongSound = audio.loadSound( "beep.wav" )
rightSound = audio.loadSound( "whistle.wav" )
cheerSound = audio.loadSound( "cheer.wav" )

-- show first question 
function show()
  display.remove( welcomeImages )
  display.remove( menuImages )
  showQuestion( q1Images )
  displayBottom()
end

function clearPrevQuestion()
  if     questionCounter == 2  then display.remove( q1Images )
  elseif questionCounter == 3  then display.remove( q2Images ) 
  elseif questionCounter == 4  then display.remove( q3Images ) 
  elseif questionCounter == 5  then display.remove( q4Images ) 
  elseif questionCounter == 6  then display.remove( q5Images ) 
  elseif questionCounter == 7  then display.remove( q6Images ) 
  elseif questionCounter == 8  then display.remove( q7Images ) 
  elseif questionCounter == 9  then display.remove( q8Images ) 
  elseif questionCounter == 10 then display.remove( q9Images ) 
  elseif questionCounter == 11 then display.remove( q10Images ) 
  end
end

function showQuestion( grouping )
  questionCounter = questionCounter + 1
  clearPrevQuestion()
  -- generate 3 non-repeated images
  local len  = table.getn( animals )
  local num1 = math.random( 1, len );
  local num2 = genN2( num1, len )
  local num3 = genN3( num1, num2, len )
  -- display images accordingly
  local a1 = display.newImage( animals[ num1 ].image )
  local a2 = display.newImage( animals[ num2 ].image )
  local a3 = display.newImage( animals[ num3 ].image )
  a1:scale( xfactor, yfactor )
  a2:scale( xfactor, yfactor )
  a3:scale( xfactor, yfactor )
  a1.x = xpos1
  a1.y = ypos
  a2.x = xpos2
  a2.y = ypos
  a3.x = xpos3
  a3.y = ypos
  -- pick a correct answer
  local ans = math.random( 1, 3 )
  -- set up correct answer
  local answerText
  if ans == 1 then
    currentAnswer = num1
    print( animals[num1].english )
    answerText = display.newText( animals[num1].hira, ansXpos, ansYpos, ansFont, ansSize )
    audio.play( animals[num1].audio )
    a1:addEventListener( "tap", rightAnswer )
    a2:addEventListener( "tap", wrongAnswer )
    a3:addEventListener( "tap", wrongAnswer )
  else
    if ans == 2 then
      currentAnswer = num2
      print( animals[num2].english )
      answerText = display.newText( animals[num2].hira, ansXpos, ansYpos, ansFont, ansSize )
      audio.play( animals[num2].audio )
      a1:addEventListener( "tap", wrongAnswer )
      a2:addEventListener( "tap", rightAnswer )
      a3:addEventListener( "tap", wrongAnswer )
    else
      currentAnswer = num3
      print( animals[num3].english )
      answerText = display.newText( animals[num3].hira, ansXpos, ansYpos, ansFont, ansSize )
      audio.play( animals[num3].audio )
      a1:addEventListener( "tap", wrongAnswer )
      a2:addEventListener( "tap", wrongAnswer )
      a3:addEventListener( "tap", rightAnswer )
    end
  end
  local vocab_speaker = display.newImage( "speaker.png", -130, -100 )
  vocab_speaker:scale( 0.07, 0.07 )
  vocab_speaker:addEventListener( "tap", readvocab )
  -- answerText:addEventListener( "tap", readvocab )
  grouping:insert( a1 )
  grouping:insert( a2 )
  grouping:insert( a3 )
  grouping:insert( answerText )
  grouping:insert( vocab_speaker )
end

function wrongAnswer()
  audio.play( wrongSound )
  getNextQuestion()
end

function rightAnswer()
  audio.play( rightSound )
  gameScore = gameScore + 1
  getNextQuestion()
end

function getNextQuestion()
  if questionCounter == 10 then
    showGameOver( gameScore )
  else
    nextGroup = getNextGrouping()
    print( nextGroup )
    showQuestion( nextGroup )
  end
end

function getNextGrouping()
  if     questionCounter == 1  then return q2Images
  elseif questionCounter == 2  then return q3Images
  elseif questionCounter == 3  then return q4Images
  elseif questionCounter == 4  then return q5Images
  elseif questionCounter == 5  then return q6Images
  elseif questionCounter == 6  then return q7Images
  elseif questionCounter == 7  then return q8Images
  elseif questionCounter == 8  then return q9Images
  elseif questionCounter == 9  then return q10Images
  end
end

-- icons at the bottom panel
function displayBottom()
  exit = display.newImage( "exit.png", 440, 280 )
  exit:addEventListener( "tap", finish )
  bottomImages:insert( exit )
  -- shuffle = display.newImage( "shuffle.png", 400, 280 )
  -- shuffle:addEventListener( "tap", show )
  -- bottomImages:insert( shuffle )
end

function readvocab()
  print( "play sound of " .. animals[ currentAnswer ].english )
  audio.play( animals[ currentAnswer ].audio )
end


function clearCurrQuestion()
  if     questionCounter == 1  then display.remove( q1Images )
  elseif questionCounter == 2  then display.remove( q2Images ) 
  elseif questionCounter == 3  then display.remove( q3Images ) 
  elseif questionCounter == 4  then display.remove( q4Images ) 
  elseif questionCounter == 5  then display.remove( q5Images ) 
  elseif questionCounter == 6  then display.remove( q6Images ) 
  elseif questionCounter == 7  then display.remove( q7Images ) 
  elseif questionCounter == 8  then display.remove( q8Images ) 
  elseif questionCounter == 9  then display.remove( q9Images ) 
  elseif questionCounter == 10 then display.remove( q10Images ) 
  elseif questionCounter == 0  then display.remove( gameOverImages ) 
  end
end

-- show this when "x" is clicked on
function finish()
  clearCurrQuestion()
  display.remove( bottomImages )
  endingText = display.newText( "see you again", 100, 50, ansFont, 48 )
  audio.dispose( wrongSound )
  audio.dispose( rightSound )
  audio.dispose( cheerSound )
  for i=1,table.getn( animals ) do
    audio.dispose( animals[i].audio )
  end
end

gameOverImages = display.newGroup()

-- show this when game is over 
function showGameOver( score )
  clearCurrQuestion()
  questionCounter = 0
  scoreText = "your score: " .. score
  endingText = display.newText( scoreText, 100, 50, ansFont, 48 )
  audio.play( cheerSound )
  gameOverImages:insert( endingText )
end

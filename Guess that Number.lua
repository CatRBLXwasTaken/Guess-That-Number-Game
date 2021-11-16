math.randomseed(os.time())
number = math.random(1,100)

player = {}
player.guess = 0

-- print(number) -- debug

GAN = [[

Guess a number between 1 and 100

]]
TL = [[

Too low!

]]
TH = [[

Too high!

]]
TR = [[

That's right! Let's play again!

]]

while true do
  print(GAN)
  player.answer = io.read()
  player.guess = tonumber(player.answer)
  if ( player.guess > number ) then
    print(TH)
  elseif ( player.guess < number) then
    print(TL)
  else
    print(TR)
    number = math.random(1,100)
  end
end
=begin

YOUR TASK: Use your knowledge of varialbes and loops to change the
"rate" of the banger.wav sample. Print to the Log to help you understand 
what is happening and troubleshoot if you run into difficulty!

=end

# Use this variable to speed up, then slow down the sample
x = 1
# Use this variable to store the long file path of your sample
b = "C:/Users/ryan_doherty/Desktop/challenge_f/this_is_a_banger.wav"
rate = x

# PLAY THE SAMPLE AT NORMAL SPEED (rate: 1 is the default)
sample b
sleep 3


# DECREASE THE SPEED OF THE SAMPLE FOUR TIMES
4.times do
  x = x-0.1
  sample b, rate: x
  sleep 3
  print "rate decreased by 0.1"
end

x = 1
sample b, rate: x
sleep 3
# INCREASE THE SPEED OF THE SAMPLE 4 TIMES
4.times do
  x = x+0.1
  sample b, rate: x
  sleep 3
  print "rate increased by 0.1"
end


# PLAY THE SOUND AT A FASTER SPEED (rate > 1)
with_fx :reverb do
  sample b, rate: 1.5
end
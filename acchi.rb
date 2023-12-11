#ジャンケンの流れ
def jyanken
 puts"最初はグー、じゃんけん"
 puts"0:グー,1:チョキ,2:パー"

 player_hand = gets.to_i

 program_hand = rand(3)

if player_hand > 2
 puts "error!"
 return true
end

#ジャンケンの役
hands=["グー","チョキ","パー"]
 puts "あなたの手は:#{hands[player_hand]},相手の手:#{hands[program_hand]}"

#あいこの場合
if player_hand == program_hand
 puts "Retry"
 return true

#ジャンケンに勝った場合
elsif (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0)
  puts"あっち向いて.."
  puts"0:上,1:下,2:右,3:左"

  player_face = gets.to_i

  program_face = rand(4)

  if player_face > 3
   puts "error!"
   return true

  end

#あっち向いてホイの役
direction=["上","下","右","左"]
 puts "あなたの手は:#{direction[player_face]},相手の顔は:#{direction[program_face]}"

 if player_face == program_face
  puts "You Win"
  return false
 else
  puts "You Lose"
  return false
 end

else

#ジャンケンに負けた場合
 if (player_hand == 0 && program_hand ==2) ||(player_hand == 1 && program_hand ==0) || (player_hand == 2 && program_hand ==1)
  puts"あっち向いて.."
  puts"0:上,1:下,2:右,3:左"

  player_face = gets.to_i

  program_face = rand(4)

  if player_face > 4
   puts "error!"
   return true
  end
  end
 end
#あっち向いてホイの役
direction=["上","下","右","左"]
 puts "あなたの顔は:#{direction[player_face]},相手の手は:#{direction[program_face]}"

   if player_face == program_face
    puts "You Lose"
    return false
   else
    puts "You Win"
    return false
   end
   end

next_game = true

while next_game
 next_game = jyanken
end
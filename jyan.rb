puts "ジャンケン..."
  
def jyanken
  puts "0(グー) 1(チョキ) 2(パー) 3(やらない)"
  puts "出し手を0〜3から入力"
  my_hand = gets.to_i
  cpu_hand = rand(3)
  
  puts "ホイ！"
  jyankens = ["グー","チョキ","パー","やらない"]
  puts "あなた:#{jyankens[my_hand]}"
  puts "CPU:#{jyankens[cpu_hand]}"
  
  case_pattern = ""
  
    if my_hand == 3
      puts "ジャンケンをする気分じゃない..."
      return false
    elsif  my_hand == cpu_hand
      puts "アイコで..."
      return true
    elsif my_hand - cpu_hand == -1 || (my_hand == 2 && cpu_hand == 0)
      case_pattern ="パターン：勝利"
    elsif cpu_hand - my_hand == -1 || (cpu_hand == 2 && my_hand == 0)
      case_pattern ="パターン：敗北"
    else
      puts "0〜3を入力してください"
      return true
    end
    
  def win_hand
    puts "あっちむいて..."
    puts "0(↑) 1(→) 2(↓) 3(←)"
    puts "出し手を0〜3から入力"
    my_hand = gets.to_i
    cpu_face = rand(4)
    
    puts "ホイ！"
    hands = ["↑","→","↓","←"]
    puts "あなた:#{hands[my_hand]}"
    puts "CPU:#{hands[cpu_face]}"
    
    if my_hand == cpu_face
      puts "YOU WIN!!"
      return false
    else 
      puts "ジャンケン..."
      return true
    end
  end


  def lose_face
    puts "あっちむいて..."
    puts "0(↑) 1(→) 2(↓) 3(←)"
    puts "顔の向きを0〜3から入力"
    my_face = gets.to_i
    cpu_hand = rand(4)
    
    puts "ホイ！"
    faces = ["↑","→","↓","←"]
    puts "あなた:#{faces[my_face]}"
    puts "CPU:#{faces[cpu_hand]}"
    
    if my_face == cpu_hand
      puts "YOU LOSE..."
      return false
    else 
      puts "ジャンケン..."
      return true
    end
  end


  case case_pattern
  when "パターン：勝利"
    jyan_win = win_hand
  when "パターン：敗北"
    jyan_lose = lose_face
  end
  
end

jyan_game = true

while jyan_game
  jyan_game = jyanken
end
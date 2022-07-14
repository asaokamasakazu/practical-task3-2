#勝負の結果を格納する変数
result = "default"

#じゃんけんの選択肢の配列
jankens = ["グー", "チョキ", "パー", "戦わない"]

#あっち向いてほいの選択肢の配列
hois = ["上", "下", "右", "左"]

#ループ
while result == "default" || result == "draw"
  
  #出すじゃんけんを入力
  if result != "draw"
    puts "最初はグー、じゃんけん…"
  else 
    puts "あいこで…"
  end
  puts "0[グー] 1[チョキ] 2[パー] 3[戦わない]を入力し、Enterを押してください。"
  janken_number_player = gets.chomp.to_i
  janken_number_cp = rand(3)
  
  #じゃんけん結果の出力
  if result != "draw"
    puts "ポン！"
  else 
    puts "ショ！"
  end
  puts "--------------------"
  
  #戦わないを選択した場合
  if janken_number_player == 3
    puts "あなたは[戦わない]を選択しました。"
    result = "surrender"
    break
  else
    puts "あなた: [#{jankens[janken_number_player]}]を出しました。"
    puts "相手: [#{jankens[janken_number_cp]}]を出しました。"
  end
  
  #あいこの場合
  if janken_number_player == janken_number_cp
    puts "じゃんけん結果: [あいこ]です。"
    result = "draw"
    
  #勝ちの場合
  elsif (janken_number_player == 0 && janken_number_cp == 1) || (janken_number_player == 1 && janken_number_cp == 2) || (janken_number_player == 2 && janken_number_cp == 0)
    puts "じゃんけん結果: あなたの[勝ち]です。"
    
    #あっち向いてほいの向きの入力
    puts "--------------------"
    puts "あっち向いて〜"
    puts "0[上] 1[下] 2[右] 3[左]を入力し、Enterを押してください。"
    hoi_number_player = gets.chomp.to_i
    hoi_number_cp = rand(4)
    
    #あっち向いてほい結果の出力
    puts "ホイ！"
    puts "--------------------"
    puts "あなた: [#{hois[hoi_number_player]}]を出しました。"
    puts "相手: [#{hois[hoi_number_cp]}]を出しました。"
    if hois[hoi_number_player] == hois[hoi_number_cp]
      puts "あっち向いてほい結果: 当たりました。"
      puts "最終結果: あなたの[勝ち]です。"
      break
    else
      puts "あっち向いてほい結果: 外れました。じゃんけんからもう1回！"
      result = "default"
    end
    
  #負けの場合
  else
    puts "じゃんけん結果: あなたの[負け]です。"
    
    #あっち向いてほいの向きの入力
    puts "--------------------"
    puts "あっち向いて〜"
    puts "0[上] 1[下] 2[右] 3[左]を入力し、Enterを押してください。"
    hoi_number_player = gets.chomp.to_i
    hoi_number_cp = rand(4)
    
    #あっち向いてほい結果の出力
    puts "ホイ！"
    puts "--------------------"
    puts "あなた: [#{hois[hoi_number_player]}]を出しました。"
    puts "相手: [#{hois[hoi_number_cp]}]を出しました。"
    if hois[hoi_number_player] == hois[hoi_number_cp]
      puts "あっち向いてほい結果: 当てられました。"
      puts "最終結果: あなたの[負け]です。"
      break
    else
      puts "あっち向いてほい結果: 外れました。じゃんけんからもう1回！"
      result = "default"
    end
  end
  
  puts "--------------------"
end
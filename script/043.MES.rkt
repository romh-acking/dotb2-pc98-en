(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB073.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 30 3 37 7)
  (exec-mem 3744 1 6 50 3 56 14)
  (exec-mem 3744 1 7 4 10 23 15)
  (exec-mem 3744 1 8 15 2 27 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB072.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB073.GPC")
  (image-mem 1 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (text "［シーラ］コール・・・。")
  (wait)
  (text-reset 1)
  (text "［コール］ライルさんの所に行ってきたよ。")
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 147 #f))
   (text "［シーラ］ライルさん、何だって？")
   (wait)
   (text-reset 1)
   (text "［コール］血液検査は少し時間がかかるそうだよ。だけど、シーラ　　　　　がそれだけ元気なら、まず大丈夫だろうってさ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］そう・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］何だ・・・？　あまり嬉しそうじゃないな。")
   (wait)
   (text-reset 1)
   (text "［シーラ］ううん、違うの。この先、どうしたらいいかってずっと　　　　　考えてたの・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］シーラが心配する事ないよ。俺達の手で、ドクの蘇生薬　　　　　を使っている奴をとっつかまえるからさ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］ありがとう、コール。")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 148 #f))
   (text "［シーラ］皆は？")
   (wait)
   (text-reset 1)
   (text
    "［コール］ライルさんは研究室だよ。スティーブさんは、シーラの　　　　　言ってたラゾバン製薬に関する資料を取りに、３２分署　　　　　へ行ったよ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］一人で大丈夫なの？")
   (wait)
   (text-reset 1)
   (text
    "［コール］スティーブさんだったら大丈夫だろ。いくら、俺が２年　　　　　前にこんな事態を乗り越えたからって、刑事であるステ　　　　　ィーブさんには及ばないよ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］・・・ならいいけど・・・。")
   (set-reg 148 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 149 #f))
   (text "［シーラ］ライルさん、蘇生薬についてあまり好感をもっていない　　　　　みたいね。")
   (wait)
   (text-reset 1)
   (text "［コール］まあね・・・だけど、未知なる謎をもった人間の脳を解　　　　　明したドクをとても誉めていたよ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］未知なる謎か・・・そうよね、人間の脳って計り知れな　　　　　いものよね。")
   (set-reg 149 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［シーラ］そうそう、コールに一つ聞きたかったんだけど・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］なんだ？")
   (wait)
   (text-reset 1)
   (text
    "［シーラ］私がディスコに行ったって、どうして判ったの？　あの　　　　　ジーナって場所は、コールと行った事がなかった筈だっ　　　　　たけど・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、ジーナの事はキャサリンに聞いたんだ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］キャサリンに？　コールは彼女を知っていたの？")
   (wait)
   (text-reset 1)
   (text "［コール］ほら、前にシーラが話してたじゃないか。キャサリンっ　　　　　て友達がシャッフル・フードで働いているってさ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］あ、そうか・・・それでシャッフル・フードに？")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、スティーブさんからシャッフル・フードの所在地　　　　　を調べてもらって・・・シーラ、どうした？")
   (wait)
   (text-reset 1)
   (text "［シーラ］！！")
   (wait)
   (text-reset 1)
   (text "［シーラ］ねえ、キャサリン！！")
   (wait)
   (text-reset 1)
   (text "［コール］あっ・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］まずいぞ！！　シャッフル・フードって駅の反対側だっ　　　　　たよな・・・。あの死霊の数だ、駅なんて襲うのにそん　　　　　な時間もかからないだろう。")
   (wait)
   (text-reset 1)
   (text "［シーラ］もし、シャッフル・フードが殺られてたら・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］俺、行ってくるよ！！")
   (wait)
   (text-reset 1)
   (text "［シーラ］お願い、キャサリンを助けて！！")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (text "［コール］まずいぞ、彼女うまく逃げてくれていればいいが・・。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (mes-jump "A:¥MES¥044.MES"))
 (seg (? (= P 6) (= 111 #f))
   (text "［コール］ここは？")
   (wait)
   (text-reset 1)
   (text "［シーラ］シャワー室みたい。ここの研究所には仮眠用に、こんな　　　　　部屋がたくさんあるの。")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］ここはシャワー室か・・・。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 113 #f))
   (text
    "［コール］どこにでもあるパイプ式のベッドだな。俺も、アパート　　　　　ではこの形のベッドで毎日寝ているが、見た目よりはな　　　　　かなか寝心地がいいものだ。")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 114 #f))
   (text "［シーラ］どうしたの？　ベッドが気になる？")
   (wait)
   (text-reset 1)
   (text "［コール］いや、パイプ式のベッドなんて珍しいからさ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］コールの部屋にも、こんな感じのベッドがあるわね。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、安かったからな・・・。")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［コール］普通のパイプ式のベッドだな。") (wait) (text-reset 1))
 (seg (? (= P 8) (= 115 #f))
   (text "［コール］あそこが窓か・・・。カーテンが閉まっているが、この　　　　　時間じゃあ窓の外は真っ暗だな。")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "［シーラ］夜は冷えるからカーテンをしてるの。") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］よし、一旦廊下に戻ろう。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥039.MES"))
 (seg (? (= P 2))
   (text-reset 1)
   (exec-mem 6064 2 2)
   (menu1
    25
    317
    39
    317
    53
    317
    (</> (/ (str "  SAVE  ")) (/ (str "  LOAD  ")) (/ (str " CANCEL "))))
   (text-reset 1)
   (if (</> (// (? (= S 255)) (nop@) (set-var S 2))))
   (branch-var
    S
    (</>
     (/
      (str "Select Save Number.")
      (menu1
       18
       317
       32
       317
       46
       317
       60
       317
       18
       337
       32
       337
       46
       337
       60
       337
       66
       298
       (</>
        (/ (str " SAVE No.1 "))
        (/ (str " SAVE No.2 "))
        (/ (str " SAVE No.3 "))
        (/ (str " SAVE No.4 "))
        (/ (str " SAVE No.5 "))
        (/ (str " SAVE No.6 "))
        (/ (str " SAVE No.7 "))
        (/ (str " SAVE No.8 "))
        (/ (str "[CANCEL]"))))
      (text-reset 1)
      (if (</> (// (? (= S 255)) (nop@) (set-var S 8))))
      (text #:col 15 'br)
      (text "　　　　　　　　　　　　　")
      (str "WAIT....")
      (branch-var
       S
       (</>
        (/ (flag-save 1))
        (/ (flag-save 2))
        (/ (flag-save 3))
        (/ (flag-save 4))
        (/ (flag-save 5))
        (/ (flag-save 6))
        (/ (flag-save 7))
        (/ (flag-save 8))
        (/ (nop@)))))
     (/
      (str "Select Load Number.")
      (menu1
       18
       317
       32
       317
       46
       317
       60
       317
       18
       337
       32
       337
       46
       337
       60
       337
       66
       298
       (</>
        (/ (str " LOAD No.1 "))
        (/ (str " LOAD No.2 "))
        (/ (str " LOAD No.3 "))
        (/ (str " LOAD No.4 "))
        (/ (str " LOAD No.5 "))
        (/ (str " LOAD No.6 "))
        (/ (str " LOAD No.7 "))
        (/ (str " LOAD No.8 "))
        (/ (str "[CANCEL]"))))
      (text-reset 1)
      (if (</> (// (? (= S 255)) (nop@) (set-var S 8))))
      (exec-mem 6064 3)
      (branch-var
       S
       (</>
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 1))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 2))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 3))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 4))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 5))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 6))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 7))
        (/ (exec-mem 9920 0 6 6 113 64 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB108A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 7 10 25 14)
  (exec-mem 3744 1 6 17 2 24 9)
  (exec-mem 3744 1 7 51 4 54 7)
  (exec-mem 3744 1 8 27 3 36 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB108.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB103.GPC")
  (image-mem 1 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 129 #f))
        (text "［キャサリン］コール、どうしたの？")
        (wait)
        (text-reset 1)
        (text "［コール］いや、ちょっと話をしたくてね・・・。")
        (set-reg 129 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［キャサリン］コール、眠れないの？")
        (wait)
        (text-reset 1)
        (text "［コール］いや、暇だったからね。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 8) (= 130 #f))
   (text "［キャサリン］コール、聞かせて？")
   (wait)
   (text-reset 1)
   (text "［コール］何を？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］さっきの警察署での話よ。コールってどうしてそん　　　　　　　な冷静でいられるの？")
   (wait)
   (text-reset 1)
   (text "［コール］冷静って訳でもないよ。警察署での事だって、いきなり　　　　　死霊が目の前に現れた時は、驚いて悲鳴を上げたしね。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］じゃあ、咄嗟の判断力かしら？")
   (wait)
   (text-reset 1)
   (text "［コール］判断力か・・・あんまり自分の事について考えた事はな　　　　　いからなぁ・・・。")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 131 #f))
   (text "［キャサリン］前から思ってたんだけど、どうしてゾンビじゃなく　　　　　　　て死霊って呼んでいるの？")
   (wait)
   (text-reset 1)
   (text "［コール］死霊って呼ぶ理由か・・・。映画なんかだと蘇った死者　　　　　をゾンビって呼んでいるみたいだよね。")
   (wait)
   (text-reset 1)
   (text
    "［コール］だけど、本来のゾンビは西インド諸島の人が、働く人手　　　　　が欲しいばかりに、死人に魔法をかけて蘇らせたものを　　　　　そう呼ぶんだよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］蘇らせた死人を働かせるの？")
   (wait)
   (text-reset 1)
   (text "［コール］そう、死人だからいくら働かせても文句は言わないし、　　　　　飯も食わないからね。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］知らなかった・・・。だけど、そのゾンビと今この　　　　　　　街に居るものとは全然違うわね。")
   (wait)
   (text-reset 1)
   (text "［コール］全くだ・・・人間のために働くんじゃなくて、蘇らせた　　　　　人間を喰っちまうんだからな。")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 132 #f))
   (text "［キャサリン］死霊は脳を食べるみたいね。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、蘇生薬の全ての鍵は脳にあるらしいんだ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］どうして脳を欲するのかしら？　脳を食べるとどう　　　　　　　なるの？")
   (wait)
   (text-reset 1)
   (text "［コール］さあ・・・脳を食べたからと言って、胃で消化するとも　　　　　思えないしな・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］自分が死霊にならないと判らないか・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］おいおい、変な事を言うなよ。")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［キャサリン］コールみたいな人が近くにいて、私はとてもラッキ　　　　　　　ーだったと思うわ。")
   (wait)
   (text-reset 1)
   (text "［コール］どうしてだ？")
   (wait)
   (text-reset 1)
   (text
    "［キャサリン］だって、死霊と戦った事のある人なんて他には居な　　　　　　　いからよ。今、私が生きていられるのもコールのお　　　　　　　陰だと思っているわ。")
   (wait)
   (text-reset 1)
   (text "［コール］喜んでいいのかどうか・・・なんだか複雑な心境だな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 133 #f))
   (text "［コール］寝心地の良さそうなベッドだな。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］だけど、今まで使っている人がいなかったみたいだ　　　　　　　から、少しカビ臭いのよ。")
   (set-reg 133 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［キャサリン］明日になったらシーツを洗おうと思っているの。") (wait) (text-reset 1))
 (seg (? (= P 6) (= 134 #f))
   (text "［コール］カーテンは閉めないのか？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］私、暑がりだからこのままでいいの。")
   (set-reg 134 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］空が曇っているようだな。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］雨でも降るのかしら・・・嫌な天気よね。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 135 #f))
   (text "［キャサリン］あの街のクリスマスを楽しみにしていたのに・・。")
   (wait)
   (text-reset 1)
   (text "［コール］そうだな・・・。だけど、今年のクリスマスはどこか別　　　　　の場所で皆で盛大なパーティをやろうぜ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］ほんと？　私も呼んでくれるの？")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、約束するよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］嬉しい！　楽しみにしてるわ。")
   (set-reg 135 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］もうすぐ今年も終わりだな・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］そうね・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］じゃ、俺はこれで失礼するよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］うん・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥056.MES"))
 (seg (? (= P 2))
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
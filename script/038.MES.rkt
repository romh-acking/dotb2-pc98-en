(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (nop@)
  (set-reg 112 #t)
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
  (if (</>
       (//
        (? (= 102 #f))
        (text "［シーラ］コール！！")
        (wait)
        (text-reset 1)
        (text "［コール］シーラ、よかった・・・無事だったか。")
        (set-reg 102 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］シーラが無事でよかったよ・・・。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 103 #f))
   (text "［コール］シーラだ・・・良かった、無事だったんだ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］コール・・・。")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 104 #f))
   (text "［コール］シーラ、ずっと心配していたんだぞ。連絡ぐらいしてく　　　　　れればいいのに・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］ごめんなさい・・・。私、朝からずっとパープル・スカ　　　　　イの事を調べてた・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ブラッディフォックスが相手なんだ、君一人じゃ無理だ　　　　　よ。")
   (wait)
   (text-reset 1)
   (text "［コール］それに、昨日リーズではあんな目にあって、お前、懲り　　　　　たんじゃなかったのか？")
   (wait)
   (text-reset 1)
   (text "［シーラ］私、昨日一人でずっとクーガーさんの事を考えていたら　　　　　じっとしていられなくて・・。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］彼の研究を、こんな汚い事に使っているなんて、私絶対　　　　　に許せなかった・・・。")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 105 #f))
   (text "［コール］お前のマンションの部屋を見たか？")
   (wait)
   (text-reset 1)
   (text "［シーラ］ううん、見てないけど・・・コールが見つけてくれたん　　　　　でしょ？　スティーブさんから聞いたわ。")
   (wait)
   (text-reset 1)
   (text "［コール］かなり荒らされていたよ。何者かが必死に君を狙ってい　　　　　たようだな。")
   (wait)
   (text-reset 1)
   (text "［シーラ］！？")
   (wait)
   (text-reset 1)
   (text
    "［コール］俺の予想だと、シーラはパープル・スカイについて何か　　　　　秘密を掴み、その情報を聞きつけた敵がシーラを血眼に　　　　　なって捜している・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］お前は、パープル・スカイを調べている時、ジーナを出　　　　　た後にブラッディフォックスにさらわれたろ？")
   (wait)
   (text-reset 1)
   (text "［シーラ］どうしてそれを？")
   (wait)
   (text-reset 1)
   (text "［コール］お前を追っかけているうちに、色々と聞いたんだよ。")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 106 #f))
   (text "［シーラ］あのディスコでパープル・スカイの事を聞いたら、ラゾ　　　　　バン製薬の社印がついたケースを見たっていう人がいた　　　　　の。")
   (wait)
   (text-reset 1)
   (text "［コール］ラゾバン製薬？")
   (wait)
   (text-reset 1)
   (text "［シーラ］ええ、その会社は田舎にあって、ライトダンス・ストリ　　　　　ートで行けるのよ。")
   (wait)
   (text-reset 1)
   (text "［コール］なるほど、それでライトダンスか・・・。それで、行っ　　　　　たのか？　そのラゾバンって所に？")
   (wait)
   (text-reset 1)
   (text "［シーラ］ううん、ジーナを出てから数分後にブラッディフォック　　　　　スに捕まってしまったの。")
   (wait)
   (text-reset 1)
   (text "［コール］なるほどね・・・。")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 107 #f))
   (text "［シーラ］私は昨日のバー「リーズ」に連れていかれて、指輪を取　　　　　られたわ。")
   (wait)
   (text-reset 1)
   (text "［コール］それがこの指輪だな・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］え？　どうしてコールがその指輪を？")
   (wait)
   (text-reset 1)
   (text "［コール］ブラッディフォックスが、俺を呼び出す為にこの指輪を　　　　　使ったのさ。血痕までつけてね・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］行ったの！？")
   (wait)
   (text-reset 1)
   (text
    "［コール］勿論・・・だが、その時にはシーラは既にスティーブさ　　　　　んに保護された後だったんだ。俺は一人でフクロにされ　　　　　たよ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］おまけに、純度の高いパープル・スカイまで打たれそう　　　　　になったしな。")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 108 #f))
   (text "［コール］だけど、どうして俺に連絡してくれなかったんだ？　　　　　　　たった一人で調べるなんて無茶だよ・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］ごめんなさい・・・。もう、二度とこんな事はしない。")
   (set-reg 108 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 109 #f))
   (text "［シーラ］私がブラッディフォックスに捕まってしまったとき、ス　　　　　ティーブさんに助けられたの。")
   (wait)
   (text-reset 1)
   (text
    "［コール］そうだったな・・・、スティーブさんにお礼を言ってお　　　　　かないといけないな。それに、ラゾバン製薬という薬品　　　　　会社の事も聞いておいた方がいいだろう。")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［シーラ］スティーブさんなら、たぶん研究室にいると思うわ。")
   (wait)
   (text-reset 1)
   (text "［コール］そうだな、行ってみるか。")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
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
 (seg (? (= P 1) (= 110 #t))
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
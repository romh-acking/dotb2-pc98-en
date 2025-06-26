(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB113.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 25 3 40 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB113.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 105 #f))
        (text "［コール］ん？　シーラ、まだ起きてないのか？")
        (wait)
        (text-reset 1)
        (text "［シーラ］う、うん・・・ちょっと調子悪くって・・・。")
        (set-reg 105 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］シーラが寝込んでいる。ちょっと心配だな・・・。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 110 #t) (= 115 #t) (= 124 #t) (= 126 #t))
   (text "［シーラ］なに！？")
   (wait)
   (text-reset 1)
   (text "［コール］銃声だ！　１階から聞こえたな・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］何かあったのかしら？")
   (wait)
   (text-reset 1)
   (text "［コール］スティーブさんかもしれない。俺、ちょっと様子を見て　　　　　来るよ。ちゃんと安静にしてるんだぞ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］うん、判った。気を付けてね。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥067.MES"))
 (seg (? (= P 5) (= 121 #t) (= 109 #f))
   (text "［コール］はい、水。")
   (wait)
   (text-reset 1)
   (text "［シーラ］ありがとう、コール。")
   (wait)
   (text-reset 1)
   (text "［コール］な、なんか凄い勢いで飲むんだな・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］ずっと喉が渇いてたから・・・ック、ケホッ。")
   (wait)
   (text-reset 1)
   (text "［コール］おいおい、むせてるぞ。")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 121 #t) (= 110 #f))
   (text "［シーラ］大丈夫？")
   (wait)
   (text-reset 1)
   (text "［コール］何が？")
   (wait)
   (text-reset 1)
   (text "［シーラ］この街・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、スティーブさんが言うには、あと２日で軍が来て　　　　　くれるらしいよ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］キャサリンはどうしたの？")
   (wait)
   (text-reset 1)
   (text "［コール］彼女は、俺達が思っているほど弱くないから大丈夫だろ　　　　　う。さすがに、一緒に死霊と戦わせたりはしないがね。")
   (wait)
   (text-reset 1)
   (text "［シーラ］絶対だめよ。")
   (wait)
   (text-reset 1)
   (text "［コール］判ってるよ。")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 121 #t))
   (text "［コール］シーラ、事件の事はあまり考えないで、ゆっくり休んで　　　　　ろよな。")
   (wait)
   (text-reset 1)
   (text "［シーラ］うん、ありがとう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 106 #f))
   (text "［コール］調子が悪い？　どうしたんだ？")
   (wait)
   (text-reset 1)
   (text "［シーラ］疲れみたい・・・。でも大丈夫、ちょっと寝ればすぐに　　　　　良くなると思うから・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］いろんな事があったからな、身体に負担がかかったんだ　　　　　ろう。")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 107 #f))
   (text "［コール］どんな調子なんだ？")
   (wait)
   (text-reset 1)
   (text "［シーラ］喉が乾いたから水を飲みに行こうと立ち上がったら、急　　　　　に立ち眩みがして・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］それはストレスだよ。俺もたまに立ち眩みがするけど、　　　　　そういう時は決まって疲れているんだ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］・・・・・・・・・。")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 108 #f))
   (text "［コール］寝たのか？")
   (wait)
   (text-reset 1)
   (text "［シーラ］うん、３時間くらいかな・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］そうか・・・。こういう時は、少し安静にしてた方がい　　　　　いんだ。何か欲しいものある？")
   (wait)
   (text-reset 1)
   (text "［シーラ］水が飲みたい・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］分かった、今もってくるよ。")
   (set-reg 108 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［シーラ］コール、水が飲みたいの。")
   (wait)
   (text-reset 1)
   (text "［コール］うん、今持ってくるよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 108 #t) (= 121 #f))
   (exec-mem 6064 2 1)
   (text "［シーラ］お水・・・お願いね。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥062.MES"))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］ゆっくり休むんだぞ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］うん。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥062.MES"))
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
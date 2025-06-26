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
        (? (= 111 #f))
        (text "［キャサリン］コール、今起きたの？　もう夜よ。")
        (wait)
        (text-reset 1)
        (text "［コール］キャサリンは何時頃起きたんだ？")
        (wait)
        (text-reset 1)
        (text "［キャサリン］私もついさっきだけどね。")
        (set-reg 111 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［キャサリン］コール、今日はなんだか忙しそうね。")
        (wait)
        (text-reset 1)
        (text "［コール］まあ色々とね。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 8) (= 112 #f))
   (text
    "［コール］〔昨日のキャサリン、結構大胆だったな・・・。あんな　　　　　　事があったのに、気軽に話せるキャサリンは、性格的　　　　　　にサッパリしているんだな〕")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 113 #f))
   (text "［キャサリン］シーラに会った？")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 105 #t))
         (text "［コール］ああ、なんだか身体の調子がよくないみたいだな。")
         (wait)
         (text-reset 1)
         (text "［キャサリン］うん、ちょっと元気がないみたいで心配ね。")
         (wait)
         (text-reset 1))
        (//
         (text "［コール］いや、今日はまだ会ってないな。")
         (wait)
         (text-reset 1)
         (text "［キャサリン］なんだか、身体の調子が悪そうで寝込んでるわよ。")
         (wait)
         (text-reset 1)
         (text "［コール］調子が悪い？")
         (wait)
         (text-reset 1)
         (text "［キャサリン］うん、元気がないみたい。")
         (wait)
         (text-reset 1)
         (text "［コール］そうか・・・心配だな。後でシーラの部屋にも行ってみ　　　　　よう。")
         (wait)
         (text-reset 1))))
   (nop@)
   (set-reg 113 #t))
 (seg (? (= P 8) (= 114 #f))
   (text "［コール］昨日はありがとうな。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］何が？")
   (wait)
   (text-reset 1)
   (text "［コール］ダニエルの居場所を教えてくれて・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］いいのよ。私だってこれ以上、人々が死霊に殺され　　　　　　　るのを見たくないから・・・。それに・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］コールにはこれ以上、死霊を相手に危険な事をさせ　　　　　　　たくないから・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］キャサリン・・・。")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 115 #f))
   (text "［キャサリン］今言わないと後悔するから言っておく・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］私、コールの事が・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］止めてくれ・・・。それでなくとも、この事件について　　　　　色々と考えているんだ。こんな大事な時に、そんな話で　　　　　悩みたくはない。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］君には悪いと思っている。だが、死霊を相手に戦ってい　　　　　る以上、いつ奴等に喰われるか判らないこの状態で、余　　　　　計な考えを持ちたくはないんだ。")
   (wait)
   (text-reset 1)
   (text "［コール］判ってくれ・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］・・・・・・・・・。")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［キャサリン］・・・ごめんなさい。")
   (wait)
   (text-reset 1)
   (text "［コール］いいんだ、判ってもらえればね。")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 116 #f))
   (text "［キャサリン］今日は、昼ぐらいに起きるつもりだったんだけど、　　　　　　　私もさっき起きたばかりなの。")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 117 #f))
   (text "［キャサリン］替えのシーツが、ベッドの下にたくさんあって良か　　　　　　　ったわ。")
   (wait)
   (text-reset 1)
   (text "［コール］そういえば、俺のベッドにはシーツなんてなかったな。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］１枚持ってく？")
   (wait)
   (text-reset 1)
   (text "［コール］いや、いいよ。")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［コール］俺の部屋にあったベッドより寝心地が良さそうだな。") (wait) (text-reset 1))
 (seg (? (= P 6) (= 118 #f))
   (text "［キャサリン］起きてから、ずっと外を見ていたの。")
   (wait)
   (text-reset 1)
   (text "［コール］何か変わった事はないか？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］街の方で点々と煙が上がっているわ。")
   (wait)
   (text-reset 1)
   (text "［コール］あれだけ崩壊しているんだ、火事が起きても不思議じゃ　　　　　ないな。")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［キャサリン］ちょっと寒くなってきたから、窓はずっと締め切っ　　　　　　　ているわ。")
   (wait)
   (text-reset 1)
   (text "［コール］風邪をひかないようにな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 119 #f))
   (text "［キャサリン］街が元どおりになるのはいつ頃かしら？")
   (wait)
   (text-reset 1)
   (text
    "［コール］人が住めるのはそんなに時間がかからないと思うけど、　　　　　元の様に活気溢れる街に戻るには、最低でも半年はかか　　　　　りそうだな。")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］もう冬か・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］早く事件を解決して、すっきりした形で新年を迎え　　　　　　　たいわね。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、そうだな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［キャサリン］もう行っちゃうの？")
   (wait)
   (text-reset 1)
   (text "［コール］ちょっと忙しくてね。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］また来てね、待ってるわ。")
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
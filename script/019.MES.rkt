(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB004C.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 6 27 5 36 13)
  (exec-mem 3744 1 7 23 2 40 3)
  (exec-mem 3744 1 8 3 8 7 12)
  (exec-mem 3744 1 9 37 7 47 14)
  (exec-mem 3744 1 10 52 12 56 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB003.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 116 #f))
        (text "［コール］もう朝か・・・昨日は薬の事を考えてたから、いつもよ　　　　　り寝付きが悪かったようだな。")
        (set-reg 116 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［コール］シーラの事が心配だな・・・電話でもして様子を伺って　　　　　みるのもいいだろう。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 6))
   (branch-random
    (</>
     (/ (text "［コール］壁には俺の貼り付けた切り抜きが貼ってある。"))
     (/ (text "［コール］新聞や雑誌の切り抜きが貼ってある。"))))
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 117 #f))
   (text "［コール］今日は少し暖かいな・・・。こんな日は、エアコンを入　　　　　れる必要もないだろう。")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［コール］電気を無駄にする訳にはいかないな。") (wait) (text-reset 1))
 (seg (? (= P 8) (= 118 #f))
   (text "［コール］俺が寝ている間には、どこからも連絡が入っていないよ　　　　　うだな。")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 119 #f))
   (text "［コール］シーラの様態はどうだろう・・・電話してみようかな。")
   (wait)
   (text-reset 1)
   (text "［コール］５１０−３８６・・・と。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］長いな・・・このままだと留守電が出てしまうぞ。")
   (wait)
   (text-reset 1)
   (text "［コール］あ、シーラか？　俺、・・・")
   (wait)
   (text-reset 1)
   (text
    "［留守電］ハァイ、シーラです。せっかく掛けてくれたんだけど、　　　　　残念ながらこれは留守番電話なの。御用の方はブザーが　　　　　鳴ったらメッセージを入れておいてね。")
   (wait)
   (text-reset 1)
   (text "［コール］シーラの奴、身体の調子が良くなったもんだからこんな　　　　　朝早くから出掛けているのかな・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］それとも旅行に行けなくなって、どこかで自棄食いして　　　　　いるのか・・・。")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 120 #f))
   (text "［コール］ひょっとしたらまだ寝ているのかもしれないしな、もう　　　　　一度かけてみようか・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］５１０−３８６・・・と。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］やはり出ないな・・・")
   (wait)
   (text-reset 1)
   (text
    "［留守電］ハァイ、シーラです。せっかく掛けてくれたんだけど、　　　　　残念ながらこれは留守番電話なの。御用の方はブザーが　　　　　鳴ったらメッセージを入れておいてね。")
   (wait)
   (text-reset 1)
   (text "［コール］駄目だ、やっぱり居ないみたいだな・・・。")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］シーラの奴、一体どこへ行ったんだ？　後でまた掛けて　　　　　みる事にしよう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 119 #t))
   (text "［コール］パープル・スカイを打たれたシーラの身体が心配だな。")
   (wait)
   (text-reset 1)
   (text
    "［コール］こんな大事な時にシーラの奴は電話に出ないし・・・。　　　　　先にスティーブさんからパープル・スカイの影響等を聞　　　　　いておいた方がいいかもしれないな。")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (text "［コール］ちょっとシーラの事が心配だな・・・一度連絡してから　　　　　出掛けるとしよう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 10) (= 122 #f))
   (text "［コール］今はゆっくりとラジオを聞いている暇はないよ。早く、　　　　　パープル・スカイの事を聞き込みに行こうぜ。")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 10)) (text "［コール］ステレオの電源は切れているな。") (wait) (text-reset 1))
 (seg (? (= P 1) (= 121 #t))
   (exec-mem 6064 2 1)
   (text "［コール］スティーブさんは、３２分署に居ると言ってたな・・。　　　　　よし、行ってみよう！")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥020.MES"))
 (seg (? (= P 1))
   (text
    "［コール］その前に、昨日シーラはパープル・スカイを打たれてし　　　　　まったんだ。一度連絡してみて、身体の様子を聞いてお　　　　　いた方がいいな。")
   (wait)
   (text-reset 1))
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
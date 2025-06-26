(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB166.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 40 7 56 11)
  (exec-mem 3744 1 6 18 11 38 15)
  (exec-mem 3744 1 7 28 7 34 8)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB166.GPC")
  (image-mem 0 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB172C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 128 #f))
        (text "［コール］一度、さっきの道に戻って来たが・・・どこから間違え　　　　　たのだろう・・・。")
        (set-reg 128 #t))
       (// (text "［コール］はやく血清をみつけないといけないぞ。シーラの身体も　　　　　そんなに持たないかもしれないからな。"))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 129 #f))
   (text "［コール］たぶん、あの墓の先も崖になっているのだろうな。")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］まだ、他にも死霊が潜んでいるかもしれないから十分に　　　　　注意しないとな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 130 #f))
   (text "［コール］ここはさっき俺が通った道だ。変だな・・・どこで道を　　　　　間違えたんだろう・・・。")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 131 #f))
   (text "［コール］あれ？　俺の足跡以外にも別のものが付いているが・・　　　　　さっきまで全然気付かなかったな。")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 132 #f))
   (text "［コール］ちょっと待てよ・・・この足跡、人間の靴の跡とは些か　　　　　違うようだぞ・・・。")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 133 #f))
   (text "［コール］もう少し、あの足跡によってみようか・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (text "［コール］これは！？")
   (wait)
   (text-reset 1)
   (text
    "［コール］確かに、人間のものとは違う・・・それに、土がまだ固　　　　　まっていないという事は、この足跡はたった今ついたも　　　　　のに間違いはないぞ！！")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (text "［コール］それに、さっきのレーザー・・・ま、まさか・・・！？")
   (set-reg 133 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 134 #f))
   (text "［コール］まさか、あの足跡の主は・・・。")
   (wait)
   (text-reset 1)
   (menu1
    27
    317
    39
    317
    51
    317
    (</> (/ (text "スティーブ")) (/ (text "ジル　　　")) (/ (text "リチャード"))))
   (text-reset 1)
   (text "［コール］きっと")
   (branch-var S (</> (/ (text "スティーブ")) (/ (text "ジル")) (/ (text "リチャード"))))
   (text "だろう。")
   (wait)
   (text-reset 1)
   (branch-var
    S
    (</>
     (/
      (text "［コール］ちょっと待てよ・・・もし、スティーブが本当に助けて　　　　　くれたのなら、どうして姿を現さないんだ？")
      (wait)
      (text-reset 1)
      (text "［コール］何か姿を現せない訳でも・・・いや、そんな筈はない。　　　　　きっと、この足跡は彼以外の誰かなのだろう。")
      (wait)
      (text-reset 1))
     (/
      (text
       "［コール］ジルは蘇生薬を製造している人物だ。それに、俺達の事　　　　　をうっとおしがっているのに、こんな所にわざわざ来て　　　　　助けてくれる筈はない。")
      (wait)
      (text-reset 1))
     (/
      (text
       "［コール］いや、そんな筈はない・・・グールは死んだんだ。俺の　　　　　目の前で確かに破壊されている。頭部だってスティーブ　　　　　さんが持っているんだ。")
      (wait)
      (text-reset 1)
      (text "［コール］それに、大体奴のような殺人機が俺を助けるとは、まず　　　　　考えられない。")
      (wait)
      (text-reset 1)
      (text "［コール］じゃあ、一体この足跡は・・・！？")
      (wait)
      (text-reset 1)
      (text "［コール］グール以外にも、まだ他に同じタイプのアンドロイドが　　　　　いるという事なのか！？")
      (set-reg 134 #t)
      (wait)
      (text-reset 1)))))
 (seg (? (= P 6) (= 135 #f))
   (text "［コール］もし、この足跡がグールのようなアンドロイドのものだ　　　　　としたら・・・そいつは味方なのか？")
   (wait)
   (text-reset 1)
   (text "［コール］わざわざ、この墓地に来て俺を死霊から助けたし・・。　　　　　だけど、それならどうして姿を現さないんだ！？")
   (set-reg 135 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］地面の土には、くっきりとアンドロイドの足跡が残って　　　　　いる。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 136 #f))
   (text "［コール］この先が崖だったんだ・・・という事は、まだ別の道が　　　　　他にもあったのかな・・・。")
   (set-reg 136 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 137 #f))
   (text "［コール］この道でない事は確かだが・・・他に道らしい道なんて　　　　　この辺りにはないようだな。")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］確か、２年前もこの道をずっとまっすぐに走ったと思っ　　　　　たが・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 137 #t) (= 135 #t))
   (exec-mem 6064 2 1)
   (text "［コール］はやく、血清を見つけてスティーブさんにこの事を知ら　　　　　せないとな・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (text "［コール］あれ・・・もう裏口に来ちゃったな。注意して歩いてい　　　　　たつもりだが、血清なんてどこにもなかったよな・・。")
   (wait)
   (text-reset 1)
   (text "［コール］仕方ない、もう一度元の道に戻ってみるか・・。研究所　　　　　には手ぶらで帰る訳にはいかな・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］あっ！！")
   (wait)
   (text-reset 1)
   (nop@)
   (set-reg 138 #t)
   (mes-jump "A:¥MES¥102.MES"))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］このまま進んでも、またさっきの崖に当たるだろう。　　　　　　もう少し、辺りを調べてから移動した方がいいな。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
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
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 1))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 2))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 3))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 4))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 5))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 6))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 7))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))
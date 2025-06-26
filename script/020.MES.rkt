(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB040B.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 17 2 35 8)
  (exec-mem 3744 1 6 7 10 11 12)
  (exec-mem 3744 1 7 34 10 40 13)
  (exec-mem 3744 1 8 50 2 54 5)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB040.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB040B.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 123 #f))
        (text "［コール］ここが３２分署だな。スティーブさんは居るだろうか？")
        (set-reg 123 #t))
       (// (text "［コール］ここがスティーブさんの居る３２分署だな。"))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 124 #f))
   (text "［コール］この警察署は俺のアパートから距離が結構あるな。２時　　　　　頃に家を出たんだが、もうこんなに日が沈んでしまった　　　　　よ。")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 125 #f))
   (text "［コール］２階建の警察署だ。なんだかひっそりとしているな。　")
   (wait)
   (text-reset 1)
   (text
    "［コール］警察署と聞くと、犯人が常時出入りしているような感じ　　　　　だが、この街は小さいから警察署といってもこんなもの　　　　　だろうな。")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 126 #f))
   (text
    "［コール］こんな立派な警察署があっても、ブラッディフォックス　　　　　の連中を捕まえられないんだもんな。この街では、警察　　　　　よりもブラッディフォックスの組織が大きすぎるんだ。")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］スティーブさんに会って、パープル・スカイの事を詳し　　　　　く聞かないとシーラの身体が心配だよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 127 #f))
   (text "［コール］警官がパトカーの脇でさぼっているぞ。")
   (set-reg 127 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 128 #f))
   (text "［警官］なんだ？　俺に何か用か？")
   (wait)
   (text-reset 1)
   (text "［コール］いえ、別に・・・。")
   (wait)
   (text-reset 1)
   (text "［警官］用がないんだったらあっちへ行け！　俺は今イラついてい　　　　るんだ！")
   (set-reg 128 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 129 #f))
   (text "［コール］あの・・・。")
   (wait)
   (text-reset 1)
   (text "［警官］なんだ、またお前か？　あっちへ行けって言っただろ？")
   (wait)
   (text-reset 1)
   (text "［コール］スティーブさんってどこに居るんです？")
   (wait)
   (text-reset 1)
   (text "［警官］どこにでもいるだろ、スティーブなんて名前はよぅ。")
   (wait)
   (text-reset 1)
   (text "［コール］スティーブ・グリスって名前なんですよ。")
   (wait)
   (text-reset 1)
   (text "［警官］グリ・・・ああ、それは３２分署〔うち〕のボスだよ。")
   (wait)
   (text-reset 1)
   (text "［コール］へえ、スティーブさんってボスだったんだ。どうりで、　　　　　落ち着いた人だと思ったよ。")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 130 #f))
   (text "［警官］あんた、ボスの知り合いか？")
   (wait)
   (text-reset 1)
   (text "［コール］まあ、そんなところだが・・・。")
   (wait)
   (text-reset 1)
   (text "［警官］そうか・・・。なあ、俺がここでサボっている事は内緒に　　　　しておいてくれよな。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、判ったよ。")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［警官］ボスなら２階の捜査課にいるぜ。")
   (wait)
   (text-reset 1)
   (text "［コール］さんきゅー。")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 132 #t))
   (text "［コール］スティーブさんは２階に居ると言っていたな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 131 #f))
   (text "［コール］ここが入口か・・・。雑誌に載っていた、パリの美術館　　　　　のような建物だな。")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］警察署に入る前に、スティーブさんの居る所をあの警官　　　　　に聞いてみよう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 133 #f))
   (text
    "［コール］アメリカの国旗が風になびいている。随分と生暖かい風　　　　　だな・・・こんな日は滅多にない。これから地震や竜巻　　　　　のような災害が起きる前兆とか・・・？")
   (wait)
   (text-reset 1)
   (text "［コール］まさか・・・ね。もしそんな事が起きたら俺のアパート　　　　　なんて一溜まりもないぞ。")
   (set-reg 133 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］国旗が少し色あせているようだな。よく見ないとアメリ　　　　　カだと判らないぞ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 132 #t))
   (exec-mem 6064 2 1)
   (text "［コール］よし、スティーブさんに会いに行こう。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 134 #t)
   (mes-jump "A:¥MES¥021.MES"))
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
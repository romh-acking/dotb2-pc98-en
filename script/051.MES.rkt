(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB082.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 17 2 35 8)
  (exec-mem 3744 1 6 28 14 35 15)
  (exec-mem 3744 1 7 34 10 40 13)
  (exec-mem 3744 1 8 4 11 12 14)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB082.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_04.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_04.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 100 #f))
        (text "［コール］３２分署に着いたな・・・。誰ともすれ違わなかったと　　　　　いう事は、スティーブさんはまだここに居るのかな。")
        (set-reg 100 #t))
       (// (text "［コール］ここは３２分署だ。ここも死霊に襲われてしまったよう　　　　　だな。"))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 6) (= 101 #f))
   (text
    "［コール］警察署の入口付近には、死霊に襲われたと思われる死体　　　　　が数体転がっている。この中には、警官も含まれている　　　　　ようだな。")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］どの死体も頭をかじられているようだ。これではもう蘇　　　　　生はできないだろうな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 102 #f))
   (text "［コール］警察署の窓ガラスが破壊されているな。上の階も全て殺　　　　　られてしまったようだ。")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 103 #f))
   (text "［コール］スティーブさんは、多分２階に居るのだろう。一度呼ん　　　　　でみるか・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］スティーブさん！！　いますか！？　コールです！！")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］居ないんですか！？　スティーブさん！！")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］おかしいな・・・誰も出て来ない。")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］スティーブさんを捜すなら、ここから叫んでいるよりは　　　　　実際に中に入って捜した方がいいようだな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 104 #f))
   (text "［コール］入口に大量の血痕が見えるな。中に居た人は皆、殺られ　　　　　てしまったのだろう。")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 105 #f))
   (text
    "［コール］この警察署は、正面の入口でしか出入りできないから、　　　　　ここから何体もの死霊が入って行ったら、中に居た人は　　　　　まず逃げ道はないだろう。")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］スティーブさんも資料を取りにここに入ったのだろう。　　　　　まだ中に居てくれればいいが・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 106 #f))
   (text
    "［コール］俺が乗って来た研究所の車だ。いつものように、キーは　　　　　付けたままになっている。これは何か起きても、咄嗟に　　　　　逃げれる用意でもある。")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "［コール］車は建物の脇に停まっている。") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］よし、早速スティーブさんを捜そう。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 107 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥052.MES"))
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
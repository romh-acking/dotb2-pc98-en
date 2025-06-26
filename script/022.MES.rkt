(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB042.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 22 2 37 9)
  (exec-mem 3744 1 6 5 9 17 14)
  (exec-mem 3744 1 7 52 6 56 12)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB042.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 145 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 146 #f))
        (text "［スティーブ］着いたぞ。ここがピレイン研究所だ。")
        (wait)
        (text-reset 1)
        (text "［コール］街から外れた所に、こんな研究所があったのか・・・。　　　　　ここではどんな研究を？")
        (wait)
        (text-reset 1)
        (text "［スティーブ］ここでは、薬品関係の鑑識等で世話になっているん　　　　　　　だよ。")
        (set-reg 146 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［コール］ピレイン研究所だ。ここでパープル・スカイを調べてい　　　　　る人がいるそうだ。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］さあ、早く中へ入ろう。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 147 #f))
   (text "［コール］３階建の研究所だな。庭だけ見ても、この研究所の敷地　　　　　はかなりゆったりとつくられているようだ。")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 148 #f))
   (text "［コール］この辺りは街からかなり外れているんだ。静かだし、な　　　　　かなか環境のいい所だな。")
   (set-reg 148 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］スティーブさんの口調から察すると、ここにいる博士と　　　　　結構仲がいいみたいだな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 150 #f))
   (text "［コール］入口に「ＰＥＲＡＩＮ　ＬＡＢ」と書かれている。あま　　　　　り聞かない名ではあるが・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ここでパープル・スカイを調べている以上、薬について　　　　　色々と聞いておかないとな。")
   (set-reg 150 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］ここでパープル・スカイを調べている以上、薬について　　　　　色々と聞いておかないとな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 151 #f))
   (text "［コール］建物の脇には非常階段が見えるな。")
   (set-reg 151 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 152 #f))
   (text "［コール］あの非常階段は２階に通じているようだ。")
   (set-reg 152 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［スティーブ］コール、入口は正面だ。非常階段を使う必要はない　　　　　　　だろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［スティーブ］いくぞ、コール。")
   (wait)
   (text-reset 1)
   (text "［コール］あ、はい。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (sound '|| 2)
   (mes-jump "A:¥MES¥023.MES"))
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
        (/ (nop@) (set-reg 145 #f) (flag-save 1))
        (/ (nop@) (set-reg 145 #f) (flag-save 2))
        (/ (nop@) (set-reg 145 #f) (flag-save 3))
        (/ (nop@) (set-reg 145 #f) (flag-save 4))
        (/ (nop@) (set-reg 145 #f) (flag-save 5))
        (/ (nop@) (set-reg 145 #f) (flag-save 6))
        (/ (nop@) (set-reg 145 #f) (flag-save 7))
        (/ (nop@) (set-reg 145 #f) (flag-save 8))
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
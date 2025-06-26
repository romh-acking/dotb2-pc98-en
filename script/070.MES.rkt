(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB123.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 33 13 40 15)
  (exec-mem 3744 1 6 41 10 50 12)
  (exec-mem 3744 1 7 12 7 26 9)
  (exec-mem 3744 1 8 9 11 29 15)
  (exec-mem 3744 1 9 4 6 9 11)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB123.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 133 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 139 #f))
        (text "［コール］うわ・・・酷いな・・・。")
        (set-reg 139 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］この部屋にはあまり入りたくないな・・・。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 140 #f))
   (text "［コール］スティーブさんに撃たれた男の死霊だな。完全に脳を破　　　　　壊されているから、二度と動き出す事はないだろう。")
   (set-reg 140 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 141 #f))
   (text "［コール］スティーブさんは射撃の名手だな・・・。確実に、死霊　　　　　の額を打ち抜いている。")
   (set-reg 141 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］この男の脳が飛び散っているな。さっきから、脳の独特　　　　　な匂いが俺の鼻を刺激している。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 142 #f))
   (text "［コール］女の死体が転がっているな。この女も死霊だったようだ　　　　　な。")
   (set-reg 142 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 143 #f))
   (text "［コール］女だからって容赦はしない。死霊である以上は、人間を　　　　　襲う事に変わりはないのだからな。")
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 144 #f))
   (text "［コール］この死霊も侵入してきたものだろう。しかし、街からこ　　　　　こまでやって来るとは思わなかったな。")
   (set-reg 144 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］完全に脳をヒットされているようだ。もう、二度と起き　　　　　上がる事はないだろうな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 145 #f))
   (text "［コール］血痕の付いたホワイトボードが立ててあるな。")
   (set-reg 145 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］ホワイトボードの辺りには死霊の姿は見えない。この部　　　　　屋には、もう死霊はいないのかな・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 146 #f))
   (text "［コール］机の上には、たくさんの書類が散らばってあるな。")
   (set-reg 146 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 147 #f))
   (text "［コール］机の下には・・・何も居ないようだな。")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "［コール］机の付近には死霊の姿がないようだ。") (wait) (text-reset 1))
 (seg (? (= P 9) (= 148 #f))
   (text "［コール］まさかロッカーの中に、死霊が隠れているとも思えない　　　　　な・・・。")
   (set-reg 148 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 149 #f))
   (text "［コール］ロッカーの側には死霊はいないようだな。")
   (set-reg 149 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9)) (text "［コール］これ以上、ロッカーを調べてもあまり意味はないな。") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］よし、表に出よう。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 127 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥068.MES"))
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
        (/ (nop@) (set-reg 133 #f) (flag-save 1))
        (/ (nop@) (set-reg 133 #f) (flag-save 2))
        (/ (nop@) (set-reg 133 #f) (flag-save 3))
        (/ (nop@) (set-reg 133 #f) (flag-save 4))
        (/ (nop@) (set-reg 133 #f) (nop@) (set-reg 133 #f) (flag-save 5))
        (/ (nop@) (set-reg 133 #f) (flag-save 6))
        (/ (nop@) (set-reg 133 #f) (flag-save 7))
        (/ (nop@) (set-reg 133 #f) (flag-save 8))
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
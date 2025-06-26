(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB180.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 18 3 33 8)
  (exec-mem 3744 1 6 21 10 30 11)
  (exec-mem 3744 1 7 46 3 56 7)
  (exec-mem 17408 0 0 53798 57344 53800 61439 53798 57344)
  (exec-mem 17408 1 0 "P0 P1 T300 P2 P3 T4 P4 P5")
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB180.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 9)
  (if (</>
       (//
        (? (= 100 #f))
        (text "［スティーブ］雨か・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］ここがラスニュービル・・・。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］ああ、噂では聞いていたが実際に私もここへ来たの　　　　　　　は初めてだよ。")
        (set-reg 100 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［コール］ここにジルが居るのか・・・。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］ああ、早く奴と決着をつけよう。")
        (wait)
        (text-reset 1))))
  (loop
   (exec-mem 17408 2)
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (text-reset 1)
   (exec-mem 17408 3)
   (seg-call)))
 (seg (? (= P 5) (= 101 #f))
   (text "［コール］建物は、かなり傷んでいるようだな。しかしこんな所に　　　　　ブラッディフォックスのアジトがあったなんて・・・。")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 102 #f))
   (text
    "［スティーブ］このビルの持ち主は日本人だと聞いたよ。ビルを高　　　　　　　く売ろうと時間をかけていたら、いつの間にかブラ　　　　　　　ッディフォックスに占拠されていたそうだ。")
   (set-reg 102 #t)
   (wait)
   (text-reset 1)
   (text "［コール］かわいそうに。")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 103 #f))
   (text "［コール］とにかく、中に入ってみないと始まらないな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］銃は持っているか？")
   (wait)
   (text-reset 1)
   (text "［コール］ええ、弾もあります。")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［スティーブ］準備はできているから、いつでも潜入できるぞ。") (wait) (text-reset 1))
 (seg (? (= P 6) (= 104 #f))
   (text "［コール］あそこが入口だな。だが、ビル自体がかなり酷く壊され　　　　　ているようだ。")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 105 #f))
   (text "［コール］入口を誰も出入りする奴はいないようだな・・・。")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］出入口は正面だけですか？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］多分な・・・もし中にブラッディフォックスが大勢　　　　　　　いたら、全員倒さない限り脱出できんよ。")
   (wait)
   (text-reset 1)
   (text "［コール］ブラッディフォックスは仲間意識が強いからな・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 106 #f))
   (text "［コール］酷い嵐だ・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ああ、あまり雨に当たるとよくないよ。")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 107 #f))
   (text "［スティーブ］この雨では、車の運転にもかなり気をつかったよ。")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］この雷じゃ、あまり外にいると危険ですね。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ああ、早く中に入ろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［スティーブ］入口まで走るぞ。")
   (wait)
   (text-reset 1)
   (text "［コール］はい。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 17408 3)
   (mes-jump "A:¥MES¥105.MES"))
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
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 1))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 2))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 3))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 4))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 5))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 6))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 7))
        (/ (exec-mem 17408 3) (exec-mem 9920 0 6 6 113 64 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))
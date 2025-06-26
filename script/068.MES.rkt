(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (if (</>
       (// (? (= 138 #t)) (load-mem "A:¥CLM¥DB114A.CLM" 32768))
       (// (load-mem "A:¥CLM¥DB114.CLM" 32768))))
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 8 9 11)
  (exec-mem 3744 1 6 25 8 29 12)
  (exec-mem 3744 1 7 44 7 47 12)
  (exec-mem 3744 1 8 38 8 41 10)
  (if (</> (// (? (= 138 #t)) (exec-mem 3744 1 9 11 10 16 11))))
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB114.GPC")
  (image-mem 0 3)
  (if (</>
       (// (? (= 138 #t)) (image-file "B:¥GPC¥DB122.GPC") (image-mem 1 3))))
  ((cmd 193) 0 "B:¥GPA¥DB114.GPA")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 127 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (?
         (= 163 #t)
         (= 135 #t)
         (= 137 #t)
         (= 147 #t)
         (= 152 #t)
         (= 156 #t)
         (= 164 #f))
        ((cmd 196) 0 0)
        ((cmd 196) 0 1)
        (delay 6 0)
        ((cmd 196) 0 2)
        (delay 6 0)
        ((cmd 196) 0 3)
        (delay 6 0)
        ((cmd 196) 0 4)
        (delay 6 0)
        ((cmd 196) 0 5)
        (delay 6 0)
        ((cmd 196) 0 6)
        (delay 6 0)
        ((cmd 196) 0 7)
        (text "［コール］ん！？　今、トイレに入る人影があったが・・・・。")
        (set-reg 164 #t)
        (wait)
        (text-reset 1))
       (//
        (? (= 163 #t) (= 135 #t) (= 137 #t) (= 147 #t) (= 152 #t) (= 156 #t))
        (text "［コール］確かに人影を見たんだ。早くトイレを調べよう。")
        (wait)
        (text-reset 1))
       (//
        (? (= 128 #f))
        (text "［コール］よし、まずはどこから調べようか。")
        (set-reg 128 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］次はどこを調べようかな。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 129 #f))
   (text "［コール］階段を調べよう。")
   (set-reg 129 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥069.MES"))
 (seg (? (= P 5))
   (text "［コール］もう一度、階段を調べてみるか。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥069.MES"))
 (seg (? (= P 6) (= 130 #f))
   (text "［コール］この事務室に居た死霊は、スティーブさんが倒したと言　　　　　っていたな。確認のために一度入ってみるか・・・。")
   (set-reg 130 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥070.MES"))
 (seg (? (= P 6))
   (text "［コール］ここは事務室だな。この中には、スティーブさんの仕留　　　　　めた死霊が転がっていたな。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥070.MES"))
 (seg (? (= P 7) (= 131 #f))
   (text "［コール］エレベーターは調べる必要はないな。電気を止めてある　　　　　から動いていないんだ。")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］このエレベーターは停止しているため、調べる必要はな　　　　　いだろう。")
   (wait)
   (text-reset 1))
 (seg (?
       (= P 8)
       (= 163 #t)
       (= 135 #t)
       (= 137 #t)
       (= 147 #t)
       (= 152 #t)
       (= 156 #t)
       (= 164 #f))
   (text "［コール］あのトイレに入って行った何者かの影を、俺は見逃さな　　　　　かったぞ。十分注意して行動しよう。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥071.MES"))
 (seg (? (= P 8) (= 132 #f))
   (text "［コール］トイレを調べてみよう。")
   (set-reg 132 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥071.MES"))
 (seg (? (= P 8))
   (text "［コール］もう一度トイレを調べてみよう。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥071.MES"))
 (seg (? (= P 9))
   (text "［コール］あれは、さっき俺が倒した女の死霊だ。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥072.MES"))
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
        (/ (nop@) (set-reg 127 #f) (flag-save 1))
        (/ (nop@) (set-reg 127 #f) (flag-save 2))
        (/ (nop@) (set-reg 127 #f) (flag-save 3))
        (/ (nop@) (set-reg 127 #f) (flag-save 4))
        (/ (nop@) (set-reg 127 #f) (flag-save 5))
        (/ (nop@) (set-reg 127 #f) (flag-save 6))
        (/ (nop@) (set-reg 127 #f) (flag-save 7))
        (/ (nop@) (set-reg 127 #f) (flag-save 8))
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB070.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 46 5 51 15)
  (exec-mem 3744 1 6 20 7 23 13)
  (exec-mem 3744 1 7 37 7 40 13)
  (exec-mem 3744 1 8 9 5 14 15)
  (exec-mem 3744 1 9 27 8 32 12)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB070.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
  (sound '|| 1)
  (loop
   (text-frame 15 298 74 356)
   (text-reset 1)
   (text "［コール］さて、どこへ行こうかな？")
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (seg-call)))
 (seg (? (= P 5) (= 146 #t))
   (text-reset 1)
   (text "［コール］ここは俺に与えられた部屋だったな。少し休むか・・。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥040.MES"))
 (seg (? (= P 5))
   (text-reset 1)
   (text "［コール］ここは何の部屋かな？")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥040.MES"))
 (seg (? (= P 6) (= 178 #t))
   (text-reset 1)
   (text "［コール］シーラの部屋に行ってみよう。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥049.MES"))
 (seg (? (= P 6) (= 146 #t))
   (text-reset 1)
   (text "［コール］シーラの部屋に行ってみよう。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥043.MES"))
 (seg (? (= P 6))
   (text-reset 1)
   (text "［コール］左手の奥の部屋・・・ここがシーラが使っている部屋だ　　　　　な。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥038.MES"))
 (seg (? (= P 7) (= 178 #t))
   (text-reset 1)
   (text "［コール］ここはキャサリンの部屋だな。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥050.MES"))
 (seg (? (= P 7))
   (text-reset 1)
   (if (</>
        (// (? (= 123 #t)) (text "［コール］ここは空室だったな・・・。"))
        (// (text "［コール］ここは空室かな？"))))
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥041.MES"))
 (seg (? (= P 8) (= 100 #f))
   (text-reset 1)
   (text "［コール］ここは何の部屋だろう？")
   (wait)
   (text-reset 1)
   (text "［コール］ん？　鍵がかかっていて開かないや・・・。")
   (set-reg 100 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 101 #f))
   (text-reset 1)
   (text "［コール］このドアには鍵がかかっているから、中に入る事はでき　　　　　ないな。素直に諦めた方がよさそうだ。")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text-reset 1)
   (text "［コール］ここには鍵がかかっていて入れないな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 178 #t))
   (text-reset 1)
   (text "［コール］研究室に行こう。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥048.MES"))
 (seg (? (= P 9) (= 110 #f))
   (text-reset 1)
   (text
    "［コール］研究室に行く前に、シーラと会っておいた方がいいな。　　　　　今日はずっと奴を捜し歩いていたんだ、詳しい事情を聞　　　　　いておいた方がいいだろうな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (text-reset 1)
   (text "［コール］よし、ライルさんの研究室に行こう。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥042.MES"))
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
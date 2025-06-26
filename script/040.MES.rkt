(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB101.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 37 5 54 10)
  (exec-mem 3744 1 6 20 3 27 13)
  (exec-mem 3744 1 7 4 12 17 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB101.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 117 #f) (= 146 #t))
        (text "［コール］この部屋は、ライルさんが俺に使っていいって言ってく　　　　　れた部屋だ。")
        (set-reg 117 #t)
        (wait)
        (text-reset 1))
       (// (? (= 146 #t)) (text "［コール］ここは研究所の俺の部屋だ。") (wait) (text-reset 1))
       (//
        (? (= 116 #f))
        (text "［コール］なんだ？　この部屋は・・・。")
        (set-reg 116 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］ここは空室だったな・・・。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 118 #f))
   (text "［コール］ロッカーが並んでいるところを見ると、ここは研究所の　　　　　控え室か・・・。")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 119 #f))
   (text "［コール］どのロッカーを調べても鍵がかかっているため、開ける　　　　　事はできない。")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［コール］鍵のかかったロッカーが並んでいる。") (wait) (text-reset 1))
 (seg (? (= P 6) (= 120 #f))
   (text "［コール］俺がこの部屋に入るために使用したドアだ。このドアの　　　　　向こうは先程の廊下にあたる。")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］鍵のついていない普通のドアだな。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 121 #f))
   (text "［コール］左手前には机が置かれている。その隣には、パイプ式の　　　　　ベッドがあり、今俺はそのベッドに腰掛けている。")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 122 #f))
   (text "［コール］引き出しのついている机だが、中には何も入っていない　　　　　ようだな。")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］この机の表面には、かなりホコリが積もっている。ここ　　　　　何日か使っていないのだろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］よし、廊下に出るか。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥039.MES"))
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
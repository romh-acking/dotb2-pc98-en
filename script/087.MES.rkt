(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB073A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 6 50 3 56 14)
  (exec-mem 3744 1 7 4 10 23 15)
  (exec-mem 3744 1 8 15 2 39 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB072.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 133 #f))
        (text "［コール］よう、シ・・・あれ？")
        (wait)
        (text-reset 1)
        (text "［コール］あいつ、どこに行ったんだ？")
        (set-reg 133 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］まだシーラは戻って来ていないようだな・・・。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 6) (= 134 #f))
   (text "［コール］シーラの奴、シャワーでも浴びてるのかな？")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］誰もいないか・・・どこに行ったのかな。")
   (set-reg 134 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 135 #f))
   (text
    "［コール］シャワー室の壁は乾いている・・・。あいつ、昨日の夜　　　　　シャワーに入ったとか言ってたけど、俺に心配かけない　　　　　ように嘘を言っていたんだな・・・。")
   (set-reg 135 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text
    "［コール］シャワー室にはシーラの姿は見えない。本当にどこに行　　　　　っちゃったんだ？　俺がひっぱたいたから、機嫌を損ね　　　　　てるのかな・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 136 #f))
   (text "［コール］ベッドはきちんと整頓されているな。少なくとも、俺の　　　　　部屋にあるベッドよりは１０倍豪華だな。")
   (set-reg 136 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 137 #f))
   (text
    "［コール］シーラの奴、あんな身体で寝てなくていいのかな・・。　　　　　まあ、あいつの事だ。これ以上、俺に心配かけないよう　　　　　に考えているだろうから、きっと戻ってくるだろうな。")
   (wait)
   (text-reset 1)
   (text "［コール］もう二度と、あんな無茶はしないだろう。")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］しかし、身体に反応が出てきているんだ。心配だから、　　　　　おとなしくベッドで寝ていて欲しいな・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 138 #f))
   (text "［コール］飾りっ気のないカーテンだな。まあ、研究所で使用され　　　　　ているものなんてこんなモンだろうな。")
   (set-reg 138 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］カーテンは閉められているな。開けても真っ暗だし、こ　　　　　のままにしておいていいな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］仕方ない、一旦廊下に出るか・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥085.MES"))
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
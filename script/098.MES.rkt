(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB165.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 6 23 10)
  (exec-mem 3744 1 6 23 6 38 12)
  (exec-mem 3744 1 7 46 5 56 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB165.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 108 #f))
        (text "［コール］この墓地だ・・・２年前、ジャックという警官からドク　　　　　と一緒に逃げ込んだんだ・・・。")
        (set-reg 108 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］この墓地は、丁度ドクの家の裏にあるんだ。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 109 #f))
   (text
    "［コール］この高いレンガの壁に、この墓地は囲まれている。例え　　　　　死霊から逃れる事があっても、この壁を乗り越えるのは　　　　　不可能だ。出入口である門を使うしかないだろう。")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 110 #f))
   (text "［コール］ここに来ると、２年前に戻ったように錯覚する・・・。　　　　　あの頃に戻れたら、二度とこんな失敗はしないのだが。")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］レンガ造りの壁には、至る所にスプレーによる落書きが　　　　　残っている。あの頃と同じままだ・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 111 #f))
   (text "［コール］門には鍵がかかっていない。いつでも入れる状態だ。")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 112 #f))
   (text "［コール］この墓地の出入口は、この正面の門とは別にも裏口があ　　　　　った筈だ。")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］長い間放っておかれていたせいで、門は完全に錆付いて　　　　　いるようだな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 113 #f))
   (text "［コール］雲がでてきたようだ・・・。雨が降ってくる前に、早め　　　　　に血清を見つけて研究所に帰った方がよさそうだな。")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［コール］なんだか、急に冷え込んできたようだな・・・。") (wait) (text-reset 1))
 (seg (? (= P 1) (= 112 #t) (= 113 #t))
   (exec-mem 6064 2 1)
   (text "［コール］雨が降る前に、早めに血清を見つけて戻ろう。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 114 #t)
   (mes-jump "A:¥MES¥099.MES"))
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB003.GPC")
  (image-mem 1 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB034C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 104 #t) (= 106 #t) (= 107 #t))
        (load-mem "A:¥CLM¥DB004B.CLM" 32768))
       (// (load-mem "A:¥CLM¥DB004D.CLM" 32768))))
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (if (</>
       (//
        (? (= 104 #t) (= 106 #t) (= 107 #t))
        (exec-mem 3744 1 5 13 12 25 14))))
  (exec-mem 3744 1 6 27 5 36 13)
  (exec-mem 3744 1 7 23 2 40 3)
  (exec-mem 3744 1 8 3 8 7 12)
  (exec-mem 3744 1 9 37 7 47 14)
  (exec-mem 3744 1 10 52 12 56 15)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (text-frame 15 298 74 356)
  (if (</>
       (//
        (? (= 100 #f))
        (text "［コール］ん？　シーラが居ない・・・俺がなかなか戻って来ない　　　　　から、痺れを切らして帰ってしまったのかな？")
        (set-reg 100 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］今、俺は自分の部屋にいる。") (wait) (text-reset 1))))
  (loop
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (seg-call)
   (if (</>
        (//
         (? (= 104 #t) (= 106 #t) (= 107 #t) (= 109 #f))
         (load-mem "A:¥CLM¥DB004B.CLM" 32768)
         (exec-mem 3744 1 5 13 12 25 14)
         (exec-mem 3744 1 6 27 5 36 13)
         (exec-mem 3744 1 7 23 2 40 3)
         (exec-mem 3744 1 8 3 8 7 12)
         (exec-mem 3744 1 9 37 7 47 14)
         (exec-mem 3744 1 10 52 12 56 15)
         (nop@)
         (set-reg 109 #t))))))
 (seg (? (= P 5) (= 104 #t) (= 106 #t) (= 107 #t) (= 108 #f))
   (text "［コール］この椅子はシーラの特等席だ。俺はここには滅多に座ら　　　　　ないな。")
   (set-reg 108 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 104 #t) (= 106 #t) (= 107 #t))
   (text "［コール］ん？　今まで椅子に隠れて見えなかったが、テーブルの　　　　　上にメモが置いてあるな・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (text "［コール］シーラの字だ・・・。")
   (wait)
   (text-reset 1)
   (text "『コールへ" 'br)
   (text "　帰りが遅いのでコールを捜しに行きます。もし、先に帰って来て　いたら待っててください。必ず戻ります。　　　　　シーラ　』")
   (wait)
   (text-reset 1)
   (text "［コール］なんだって！？　俺を探しに行くって・・・どこに・・　　　　　まさかリーズに一人で・・・！？")
   (wait)
   (text-reset 1)
   (text "［コール］スティーブさんも今日はリーズに居ないし、ブラッディ　　　　　フォックスの奴等、シーラに何をするか判らないぞ！！")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (text "［コール］やばいな・・・早く助けに行かなきゃ！！")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥017.MES"))
 (seg (? (= P 6))
   (branch-random
    (</>
     (/ (text "［コール］壁には俺の貼り付けた切り抜きが貼ってある。"))
     (/ (text "［コール］新聞や雑誌の切り抜きが貼ってある。"))))
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 101 #f))
   (text "［コール］まだ寒くないからな・・・エアコンを入れるには早い。")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 102 #f))
   (text
    "［コール］エアコンの電源は切れたままだ。考えてもみれば、最近　　　　　はずっと涼しかったからな・・・こいつはもう何ヶ月も　　　　　止ったままだ。")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］来月あたりには寒くなるだろうから、またこいつの世話　　　　　になるだろうな・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 103 #f))
   (text "［コール］留守電には、どこからも連絡が入っていないようだ。")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 104 #f))
   (text "［コール］シーラが家に着けば、俺の所へきっと連絡するだろう。　　　　　あいつは人一倍心配性だからな・・・。")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］今はどこにも電話をする必要はないな。そのうちシーラ　　　　　から連絡が入るだろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 105 #f))
   (text "［コール］ドアには鍵がかかっていたな・・。シーラもここの合鍵　　　　　を持ってるから、不用心だと思って掛けて行ったのだろ　　　　　う。")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 106 #f))
   (text
    "［コール］今日はもう遅いし、家に居た方がいいだろう。明日にな　　　　　ったら、またパープル・スカイの事を調べに街へ繰り出　　　　　そう。")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (text
    "［コール］今日はこのままシーラの連絡を待っていた方がいいな。　　　　　明日、シーラと一緒にスティーブさんの所に詳しい話を　　　　　聞きにいこう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 10) (= 107 #f))
   (text "［コール］ステレオの電源が切れているな。きっとシーラが切って　　　　　行ったのだろう。")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 10))
   (text "［コール］しばらく事件の事について考えたいし、ラジオは消した　　　　　ままでいいな。")
   (wait)
   (text-reset 1))
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
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 1))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 2))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 3))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 4))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 5))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 6))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 7))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB057.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 40 5 56 10)
  (exec-mem 3744 1 6 34 5 39 10)
  (exec-mem 3744 1 7 4 9 13 11)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB057.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
  (sound '|| 1)
  (if (</>
       (// (? (= 100 #f)) (text "［コール］ハアハア・・・港の倉庫といったらここだな。") (set-reg 100 #t))
       (// (text "［コール］この港の第３倉庫にシーラがいるんだ。犯人が誰であろ　　　　　うと、早く助けに行かなきゃな。"))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 101 #f))
   (text
    "［コール］ここは同じ造りの倉庫がいくつも並んでいる。倉庫には　　　　　１から１３までの番号が書いてある。シーラはこの中の　　　　　第３倉庫にいる筈だ。")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 102 #f))
   (text "［コール］どの倉庫も、中はヒッソリと静まり返っているようだ。　　　　　こんな時間に働いている人なんて、まずいないからな。")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］シーラは第３倉庫に捕まっているらしいな。早く助けに　　　　　行かないといけない。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 103 #f))
   (text "［コール］あそこが第３倉庫か・・・。あの中にシーラが捕まって　　　　　いるんだな。")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 104 #f))
   (text
    "［コール］第３倉庫の入口が少し開いていて光が漏れている。あの　　　　　中にシーラをさらった奴がいるんだ。気合入れて行動し　　　　　ないとな。")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 105 #f))
   (text
    "［コール］銃も持ってるし、いつでも入る準備はできている。シー　　　　　ラの顔を早くみたいぜ。そして、シーラをさらった奴を　　　　　ボコボコにしてやるんだ。")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］耳をすますが、中からは何の音も聞こえない。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 106 #f))
   (text "［コール］左手には海がある。さっきから波の音が聞こえている。")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］真っ暗で海は見えないが、波のたつ音だけはしっかりと　　　　　聞こえている。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］誰であろうと、俺の大事なシーラをさらった奴を許す事　　　　　はできない！　この手で警察に突き出してやるぜ！！")
   (wait)
   (text-reset 1)
   (text "［コール］ん？　さっきまで光が漏れていたのに、倉庫の中は真っ　　　　　暗だ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］おい、俺だ！！　隠れていないで出て来い！！")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥033.MES"))
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
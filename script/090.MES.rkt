(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB143.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 2 22 5)
  (exec-mem 3744 1 6 4 10 19 12)
  (exec-mem 3744 1 7 28 11 33 13)
  (exec-mem 3744 1 8 48 4 56 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB143.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 158 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 159 #f))
        (text "［コール］入口に入ると・・・ここはどうやら受付けのようだな。")
        (set-reg 159 #t))
       (// (text "［コール］ラゾバン製薬の１階受付けだ。"))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 160 #f))
   (text "［コール］あそこが受付けのようだが、人の気配は全く感じられな　　　　　いな。")
   (set-reg 160 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 161 #f))
   (text
    "［コール］受付けにはカーテンが閉められていて、中の様子は判ら　　　　　ない。もし誰か居るのなら、俺が入口を開けた時にその　　　　　音で気がついている筈だろう。")
   (set-reg 161 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 162 #f))
   (text
    "［コール］受付けのカウンターにはホコリが積もっているな。この　　　　　様子だけでも、この会社はしばらく使われていない事が　　　　　判るな。")
   (set-reg 162 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］受付けの中には誰もいないようだな。まあ、こんなに早　　　　　く見つけられるとは思っていなかったが・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 163 #f))
   (text "［コール］大きなソファーが置いてある。しばらく手入れをされて　　　　　いないのか、レザーがガビガビになっている。")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］かなり汚れているソファーだな・・・。こんな所に座っ　　　　　たら、尻が真っ白になってしまうな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 164 #f))
   (text "［コール］テーブルの上に灰皿が置いてある。どこにでもある様な　　　　　安っぽいものだ。")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 165 #f))
   (text "［コール］吸い殻が入っていない代わりに、微かだがホコリが積も　　　　　っているな。")
   (wait)
   (text-reset 1)
   (text "［コール］手で触ってみると・・・指が真っ白だ。")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］ここのテーブルと灰皿には、かなりホコリが積もってい　　　　　るようだな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 166 #f))
   (text
    "［コール］２階へ上がるための階段だろう。この建物はかなり古い　　　　　ようだし、エレベーターも付いていないから、階の移動　　　　　はこの階段を使うしかないようだ。")
   (set-reg 166 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 167 #f))
   (text "［コール］ん？　階段には、いくつかの足跡が残っているぞ。")
   (wait)
   (text-reset 1)
   (text "［コール］大きい足跡と小さいものの二つだ・・・。多分、大きい　　　　　方がスティーブさんのものだな。")
   (set-reg 167 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text
    "［コール］スティーブさんも、この階段を登って上の階に行ったよ　　　　　うだな。それと、もう一つの小さい足跡・・・これが、　　　　　きっとダニエルのものだな。")
   (set-reg 168 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 161 #t) (= 168 #t))
   (exec-mem 6064 2 1)
   (text "［コール］早くスティーブさんを捜さないとな。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥091.MES"))
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
        (/ (nop@) (set-reg 158 #f) (flag-save 1))
        (/ (nop@) (set-reg 158 #f) (flag-save 2))
        (/ (nop@) (set-reg 158 #f) (flag-save 3))
        (/ (nop@) (set-reg 158 #f) (flag-save 4))
        (/ (nop@) (set-reg 158 #f) (flag-save 5))
        (/ (nop@) (set-reg 158 #f) (flag-save 6))
        (/ (nop@) (set-reg 158 #f) (flag-save 7))
        (/ (nop@) (set-reg 158 #f) (flag-save 8))
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
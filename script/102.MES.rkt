(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB173.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 38 12 47 13)
  (exec-mem 3744 1 6 17 8 31 12)
  (exec-mem 3744 1 7 30 4 40 7)
  (exec-mem 3744 1 8 4 7 12 10)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB173.GPC")
  (image-mem 0 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB174C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 138 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
        (sound '|| 1))))
  (if (</>
       (// (? (= 139 #f)) (text "［コール］あった！！　やっとバッグを見つけたぞ！！") (set-reg 139 #t))
       (// (text "［コール］これは確かにドクのバッグだ。"))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 140 #f))
   (text
    "［コール］当時、何かにつまずいたドクは、ここでバッグを落とし　　　　　た時に、その反動で中に入っていた蘇生薬のフラスコが　　　　　飛び出してしまったんだ。")
   (set-reg 140 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 141 #f))
   (text "［コール］フラスコの破片が今まで残っているという事は、この２　　　　　年間、この辺りには誰も近寄っていないのだろう。")
   (set-reg 141 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］このガラスの破片は、当時の蘇生薬が入ったフラスコに　　　　　間違いないな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 142 #f))
   (text "［コール］間違いない・・・あのバッグは確かにドクのものだ。　　　　　　しかし、よく今まで残っていたな・・・。")
   (set-reg 142 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 143 #f))
   (text "［コール］あのバッグの中に血清が入っているんだな。容器が割れ　　　　　ていなければいいが・・・。")
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］とにかく、確かめてみよう。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (text "［コール］あった！　これがドクの言っていた血清だな！")
   (wait)
   (text-reset 1)
   (text "［コール］ん？　何か手帳のような物も入っているな・・・一応、　　　　　一緒に持って行くか・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (text "［コール］これでシーラを助けられるぞ！！　よし、早く研究所に　　　　　戻ろう！！")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   ((cmd 209) 0 5)
   (dec-var T M)
   (exec-mem 9920 0 6 6 113 64 0)
   ((cmd 209) 1 5)
   (sound '|| 0)
   (image-file "B:¥GPC¥DB070.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB155.GPC")
   (image-mem 1 3)
   (image-file "B:¥GPC¥DB071.GPC")
   (image-mem 1 3)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (sound '|| 1)
   (text "［スティーブ］コール、無事だったか？")
   (wait)
   (text-reset 1)
   (text "［コール］ええ、一度死霊に襲われましたがなんとか・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］それよりシーラは？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ああ、大丈夫だ。ベッドに寝かせてあるよ。それで　　　　　　　血清の方は？")
   (wait)
   (text-reset 1)
   (text "［コール］持って来ました。だけど、その前にちょっと・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］どうした？")
   (wait)
   (text-reset 1)
   (text "［コール］ちょっと、俺の部屋に来てください。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥103.MES"))
 (seg (? (= P 7) (= 144 #f))
   (text "［コール］誰も手入れをしていないのか、墓はかなり汚れている。")
   (set-reg 144 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 145 #f))
   (text "［コール］ここは墓石の裏側か・・・名前は反対側に彫られている　　　　　ようだな。")
   (set-reg 145 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］確か、あの時ドクと逃げていた時に、この墓石にフラス　　　　　コが当たって割れたんだっけ・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 146 #f))
   (text "［コール］ん？")
   (wait)
   (text-reset 1)
   (text "［コール］今、茂みが少し動いたような気がしたが・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］風かな・・・。")
   (set-reg 146 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 147 #f))
   (text "［コール］また動いた・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］誰だ！？")
   (wait)
   (text-reset 1)
   (text "［　猫　］ミアー・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］猫・・・俺、ビビッてんのかな・・・。")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "［コール］猫がいなくなったから、もう茂みは揺れていないな。") (wait) (text-reset 1))
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
        (/ (nop@) (set-reg 138 #f) (flag-save 1))
        (/ (nop@) (set-reg 138 #f) (flag-save 2))
        (/ (nop@) (set-reg 138 #f) (flag-save 3))
        (/ (nop@) (set-reg 138 #f) (flag-save 4))
        (/ (nop@) (set-reg 138 #f) (flag-save 5))
        (/ (nop@) (set-reg 138 #f) (flag-save 6))
        (/ (nop@) (set-reg 138 #f) (flag-save 7))
        (/ (nop@) (set-reg 138 #f) (flag-save 8))
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
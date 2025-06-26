(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB181.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 17 5 23 12)
  (exec-mem 3744 1 6 7 8 14 10)
  (exec-mem 3744 1 7 46 14 54 15)
  (exec-mem 3744 1 8 33 3 44 4)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB181.GPC")
  (image-mem 0 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB191C.GPC")
  (image-mem 1 0)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 134 #t))
        (text "［コール］ブライアも言ってたけど、ブラッディフォックスも殆ど　　　　　死霊に殺られたようですね。")
        (wait)
        (text-reset 1))
       (//
        (? (= 108 #f))
        (text "［コール］ハアハア・・・ここが１階だな。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］気をつけろ・・・敵はどこに潜んでいるか判らんか　　　　　　　らな。")
        (set-reg 108 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［スティーブ］気をつけろ・・・敵はどこに潜んでいるか判らんか　　　　　　　らな。")
        (wait)
        (text-reset 1)
        (text "［コール］はい。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 109 #f))
   (text "［コール］コンクリの柱がむき出しに立っている。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］敵が柱の影に潜んでいる様子はないようだな。")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 110 #f))
   (text "［スティーブ］これだけの建物を支えている柱だ。傷んでいるとは　　　　　　　言え、かなり頑丈にできているよ。")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 111 #f))
   (text "［コール］柱には、スプレーで落書きがしてあるな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ブラッディフォックスの行く所には、必ずこうした　　　　　　　ものが残っているよ。")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［スティーブ］柱が気になるのか？")
   (wait)
   (text-reset 1)
   (text "［コール］ええ・・・俺、ここに来てから少し慎重になっているん　　　　　です。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 134 #t))
   (text "［コール］２階にはブライア達の死体があるだけで、他には何もな　　　　　かったな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ジルはこのビルのどこかに潜んでいる筈だが・・。")
   (set-reg 135 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 112 #f))
   (text "［コール］あれが階段だな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］階段の方がエレベーターより動き易いぞ。")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 113 #f))
   (text "［コール］あの階段を使えば２階に上がれるな。")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 114 #f))
   (text "［スティーブ］階段は一気に登った方がいい。途中で挟み打ちにさ　　　　　　　れたら、一巻の終わりだからな。")
   (wait)
   (text-reset 1)
   (text "［コール］なるほど・・・さすが刑事ですね。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］基本だよ、基本。")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］階段からは、誰も下りて来るような様子もないな。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 115 #f))
   (text "［コール］床に鉄パイプが落ちている。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］こんな物、銃に比べたら子供の玩具だな。")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 116 #f))
   (text "［コール］この鉄パイプは、ブラッディフォックスが落としたもの　　　　　だろう。俺には銃があるから、こいつは必要ないな。")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［コール］こんな物で叩かれたら、たまったモンじゃないな。") (wait) (text-reset 1))
 (seg (? (= P 8) (= 117 #f))
   (text "［スティーブ］蛍光燈は全部壊されているよ。まあ、それ以前に、　　　　　　　このビルに電気がきているとは思えんがね。")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］電気がつかなくても、これだけ見えれば文句はないな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 134 #t) (= 135 #t))
   (exec-mem 6064 2 1)
   (text "［コール］もう一度、２階を調べてみましょう。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ん？　コール、ちょっと来てみろ。")
   (wait)
   (text-reset 1)
   (text "［コール］何ですか？")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (text "［コール］消化器具のボックスでしょうか？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］多分な・・・開けてみるぞ。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB192.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (text "［コール］あっ！！　これは！？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］階段だ・・・こんな所に侵入路があるとはな。")
   (wait)
   (text-reset 1)
   (text "［コール］行きましょう！！")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥109.MES"))
 (seg (? (= P 1) (= 111 #t) (= 114 #t) (= 117 #t) (= 134 #f))
   (exec-mem 6064 2 1)
   (text "［コール］階段で２階に行ってみましょう。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］そうだな、この階には誰もいないみたいだな。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 118 #t)
   (exec-mem 912 "EXIT")
   (mes-jump "A:¥MES¥106.MES"))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［スティーブ］いや、もう少し調べてからにしよう。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
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
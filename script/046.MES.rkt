(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB077.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 25 3 33 7)
  (exec-mem 3744 1 6 43 5 54 11)
  (exec-mem 3744 1 7 4 8 13 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB077.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (text "［コール］キャサリン！！")
  (wait)
  (text-reset 1)
  (text "［キャサリン］こ、コール・・・うっ・・・うっ・・・。")
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 170 #f))
   (text "［コール］確かにキャサリンだ、よく無事だったな。どこも怪我は　　　　　していないか？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］ええ・・・。")
   (set-reg 170 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 171 #f))
   (text "［キャサリン］私・・・私・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］大丈夫だ、落ち着いて。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］怖かった・・・。いきなりガラスが割れたと思った　　　　　　　ら、たくさんの死体が現れて・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］怖かったな・・・もう大丈夫だ。")
   (set-reg 171 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 172 #f))
   (text "［コール］この街はほとんど奴等にやられてしまったんだ。だから　　　　　俺達は、比較的安全な場所に避難しているんだよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］安全な場所？")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、ピレイン科学薬品研究所っていう建物さ。そこに　　　　　は３２分署の刑事さんと、研究所のライル博士がいるん　　　　　だ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］シーラは？")
   (wait)
   (text-reset 1)
   (text "［コール］一緒だよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］良かった・・・見つかったのね。")
   (set-reg 172 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］さあ、立てるか？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］ごめんなさい・・・力が入らない・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］肩を貸そう。表に研究所のバンが停まっているんだ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］ありがとう、コール。")
   (set-reg 173 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 174 #f))
   (text "［コール］そうか、キャサリンはカウンターの内側に隠れていたん　　　　　だな。見えなかった訳だよ。")
   (set-reg 174 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 175 #f))
   (text "［コール］ここにずっと隠れていたのか？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］ええ・・・たくさんの人の悲鳴が聞こえた・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］そうか・・・怖かったな。")
   (set-reg 175 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text
    "［コール］こんな所に隠れて、よく死霊に見つからなかったものだ　　　　　な。奴等は目が無くとも、人間の位置が正確に判ると思　　　　　っていたが・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 176 #f))
   (text "［コール］ジュース瓶の入ったケースだな。")
   (set-reg 176 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 177 #f))
   (text "［コール］なんだかホッとしたら喉が渇いてきたよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］これ、持って行っていいわ。どうせ、しばらくお客　　　　　　　なんて来ないんだから・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］じょ、冗談だよ。")
   (set-reg 177 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［キャサリン］コール、キョロキョロしないで・・・。私、とても　　　　　　　怖かったの・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 173 #t))
   (exec-mem 6064 2 1)
   (text "［コール］よし、つかまって。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］うん。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 174 #t)
   (mes-jump "A:¥MES¥047.MES"))
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
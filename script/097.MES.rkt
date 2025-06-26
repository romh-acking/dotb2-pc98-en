(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB161.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 10 8 15 12)
  (exec-mem 3744 1 6 11 12 19 13)
  (exec-mem 3744 1 7 26 9 30 11)
  (exec-mem 3744 1 8 38 2 44 6)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB161.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB071.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 5)
  (if (</>
       (//
        (? (= 100 #f))
        (text "［スティーブ］クーガーは？")
        (wait)
        (text-reset 1)
        (text "［コール］眠りました・・・そして永遠に蘇る事はないでしょう。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］・・・そうか。")
        (set-reg 100 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［スティーブ］コール・・・あまり落ち込むなよ。")
        (wait)
        (text-reset 1)
        (text "［コール］ええ、大丈夫です。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 101 #f))
   (text "［コール］あの部屋でドクと話している時に、何故か言葉だけだっ　　　　　たが、彼のぬくもりを感じた。")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］あの中にドクの脳が眠っている。もう、誰も彼の意識を　　　　　復活できないように、俺はガラスケースを割ってきた。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 102 #f))
   (text "［コール］ドクと話せたのもライルさんのお陰なんだ。彼が死ぬ前　　　　　に、一度礼を言いたかったな・・・。")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 103 #f))
   (text "［コール］ライルさんにも、もう頼れない・・・。これからは、自　　　　　分達の力だけで戦わないといけないんだ。")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］この事件が解決したら、ライルさんとキャサリンの墓を　　　　　建ててあげよう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 104 #f))
   (text
    "［コール］ライルさんの研究に使われていたパソコンだ。あれだけ　　　　　酷く壊されていたら、中のデーターは残っていないだろ　　　　　うな。")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［コール］ライルさんの研究もこれで終わりか・・・。") (wait) (text-reset 1))
 (seg (? (= P 8) (= 101 #t) (= 107 #t))
   (text "［スティーブ］クーガー博士が、血清の入ったバッグを落としたと　　　　　　　いうのはどこなんだ？")
   (wait)
   (text-reset 1)
   (text "［コール］隣街の墓地です。あの時、ジャックに襲われてドクの家　　　　　からその墓地に逃げ込んだんです。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］とにかく、先に血清を見つけだしておいた方がいい　　　　　　　だろう。")
   (wait)
   (text-reset 1)
   (text "［コール］スティーブさん、墓地には俺一人で行ってきます。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］一人で！？　危険だぞ！？")
   (wait)
   (text-reset 1)
   (text "［コール］いえ・・・もし万が一、シーラの身体に変化があったら　　　　　と思って・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］・・・・・・判った。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］シーラの事は私に任せてくれ。だがジルの所へは私　　　　　　　も行くからな。")
   (wait)
   (text-reset 1)
   (text "［コール］はい、じゃ・・・お願いします。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］気をつけろよ・・・。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   ((cmd 206) 1 3)
   (mes-jump "A:¥MES¥098.MES"))
 (seg (? (= P 8) (= 105 #f))
   (text "［コール］シーラは？")
   (wait)
   (text-reset 1)
   (text
    "［スティーブ］部屋で寝かせておいたよ。かなりＤＮＶが繁殖して　　　　　　　しまっているから、早めにその血清を取りに行った　　　　　　　方がいいだろう。")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 106 #f))
   (text
    "［スティーブ］私は、初めてクーガー博士の話を聞いたが、間違い　　　　　　　なくコールの言っていた通りすばらしい人だと実感　　　　　　　させられたよ。")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］ドクのためにも、早くジルという男を見つけだしたいで　　　　　すね。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ああ、だが「ジル」という名前だけでは捜しようが　　　　　　　ないからな・・・どうしたものか・・・。")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
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
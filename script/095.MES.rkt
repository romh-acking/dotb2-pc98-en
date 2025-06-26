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
        (? (= 197 #f))
        (text "［コール］研究室までこの有り様か・・・。ドアの前に倒れている　　　　　のがライルさんか・・・。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］この研究室にまで死霊が入り込んで来てしまっては　　　　　　　脱出する事はまず不可能だよ。")
        (set-reg 197 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］クソッ、研究室までこの有り様か・・・。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 199 #t) (= 201 #t) (= 204 #t))
   (text "［コール］暗証番号が判らないと、ここを開ける事ができないじゃ　　　　　ないか・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］もし中にシーラが居たら、内側から開ける事はでき　　　　　　　ないのか？")
   (wait)
   (text-reset 1)
   (text "［コール］あ、できますね。そういえば、このドアを開ける方法は　　　　　２つあるって・・・" 'br)
   (text "　　　　　　　　　　　　ガチャ・・・")
   (wait)
   (text-reset 1)
   (text "［コール］？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］開いた・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］シーラか！？　")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥096.MES"))
 (seg (? (= P 5) (= 198 #f))
   (text "［コール］実験室へのドアには鍵がかかっているようだ。この中に　　　　　シーラが居てくれればいいが・・・。")
   (set-reg 198 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 199 #f))
   (text "［コール］前にライルさんが、ドアの鍵を開けるには暗証番号を入　　　　　力すると言っていたな。")
   (set-reg 199 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］前にライルさんが、ドアの鍵を開けるには暗証番号を入　　　　　力すると言っていたな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 200 #f))
   (text "［コール］ライルさんの死体だ・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］彼はシーラの身体を治すために毎晩のようにＤＮＶ　　　　　　　の研究をしていたよ。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (set-reg 200 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 201 #f))
   (text "［コール］ライルさんは銃を握っているな・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ああ、彼も常に銃を携帯していたからな。")
   (wait)
   (text-reset 1)
   (text "［コール］弾は全て打ち尽されている・・・。この銃で倒した死霊　　　　　が廊下にいた２体だなんて・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］彼のようなインテリが死霊を２体仕留めただけでも　　　　　　　私には驚くべき事だ。")
   (wait)
   (text-reset 1)
   (text "［コール］ええ。")
   (set-reg 201 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］ライルさんにはたくさん世話になったな。その礼も言え　　　　　ないまま死んでしまうなんて・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 202 #f))
   (text "［コール］机の上のパソコンが完全に壊れている。これだけでも、　　　　　死霊とかなり争った形跡が判る。")
   (set-reg 202 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］机の上の書類やパソコンにまで血痕が飛び散っている。　　　　　ライルさんの研究も、ここで終わりになってしまった。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 203 #f))
   (text
    "［スティーブ］この研究室には外への脱出経路がないために、死霊　　　　　　　に追い詰められてしまっては、まず助かる方法はな　　　　　　　いんだ。")
   (wait)
   (text-reset 1)
   (text "［コール］ええ・・・そうですね。この部屋は完全に密閉されてい　　　　　ますから・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］敵の死霊が多すぎたのだろうな。ライル一人では、　　　　　　　いくら銃を持っていたところで勝ち目はない。")
   (set-reg 203 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 204 #f))
   (text "［コール］実験室を調べてみましょう。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］調べたいのだが、あの部屋に入るにはドアロックを　　　　　　　外さないと無理なんだよ。")
   (wait)
   (text-reset 1)
   (text "［コール］こうなったら壊してでも開けたいな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］あの扉は頑丈でね、銃なんかじゃとても壊せる代物　　　　　　　ではない。")
   (set-reg 204 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［スティーブ］実験室に入るためには、ロックを解除するための暗　　　　　　　証番号が必要だ。")
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB133.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 24 3 37 5)
  (exec-mem 3744 1 6 23 6 37 11)
  (exec-mem 3744 1 7 4 12 27 15)
  (exec-mem 3744 1 8 38 7 56 10)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB133.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 100 #f))
        (text "［スティーブ］ここがディスベル霊園だ。２年前に隣街で収容した　　　　　　　遺体は全てここに埋葬してあるんだ。")
        (wait)
        (text-reset 1)
        (text
         "［コール］ドクの遺体には脳波が現れたと言ってましたが、蘇生薬　　　　　が体内に入っている死体は全て蘇生させる事ができるん　　　　　でしょうね。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］多分な・・・。だが、こちらで手を下さない限りは　　　　　　　まず、這い出て来る事はないな。")
        (set-reg 100 #t)
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 101 #f))
   (text
    "［コール］門の上には『ＤＩＳＢＥＬＬ　ＣＥＭＥＴＡＲＹ』と書　　　　　かれている。昨夜、スティーブさんとライルさんはドク　　　　　の遺体を調べるためにここに来ているんだ。")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 102 #f))
   (text "［スティーブ］安心しろ、昨日来た時にはこの墓地の中には死霊は　　　　　　　居なかった。")
   (wait)
   (text-reset 1)
   (text "［コール］ダニエルはこの霊園には手を出していないようだな。")
   (wait)
   (text-reset 1)
   (text
    "［スティーブ］ダニエルは、街から一番近い『カリゼンヌ霊園』の　　　　　　　死霊を蘇らせているんだ。カリゼンヌよりは、こっ　　　　　　　ちの方が遥かに小さいよ。")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［コール］このディスベル霊園にドクが眠っているのか・・・。") (wait) (text-reset 1))
 (seg (? (= P 6) (= 103 #f))
   (text "［スティーブ］門は手で開けられるよ。この霊園には管理人が居な　　　　　　　いから、よく泥棒が潜んでいるんだ。")
   (wait)
   (text-reset 1)
   (text "［コール］墓荒らしですか。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］まあ、生きていればの話だがね・・・。")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］門には鍵がかかっていないようだな。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 104 #f))
   (text "［コール］車では入れないんですか？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］中は広いが門が小さいからな・・・。元々、この墓　　　　　　　地は車では入れないようだな。")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 105 #f))
   (text "［コール］車のライトが地面を照らしているな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］おっと、エンジンを切ってなかったな。")
   (wait)
   (text-reset 1)
   (text "［コール］いや、エンジンはかけておいた方がいいですよ。もし、　　　　　何かあった時に、すぐに脱出できますからね。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］なるほど・・・。")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［スティーブ］ここからは車じゃないからハンドライトを持って行　　　　　　　こう。")
   (wait)
   (text-reset 1)
   (text "［コール］はい。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 106 #f))
   (text "［コール］墓地の中は薄暗くてよく見えないな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ハンドライトが１つあるよ。")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 107 #f))
   (text "［スティーブ］月明かりだけでも結構見えるもんだよ。")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］管理が行き届いていないのか、雑草がやたらに茂ってい　　　　　るな。暗闇から死霊が襲って来たら一溜まりもないな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］早めに終わらせて、研究所に戻ろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［スティーブ］ライトは私が持つから、コールはスコップを持って　　　　　　　くれ。")
   (wait)
   (text-reset 1)
   (text "［コール］はい、判りました。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］クーガーの墓までは１０分くらい歩いた所にある。　　　　　　　十分、注意してくれ。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 108 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥082.MES"))
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
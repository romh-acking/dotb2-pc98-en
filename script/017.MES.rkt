(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB022.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 18 4 23 6)
  (exec-mem 3744 1 6 26 5 33 15)
  (exec-mem 3744 1 7 40 10 49 15)
  (exec-mem 3744 1 8 47 3 56 6)
  (exec-mem 3744 1 9 4 10 14 13)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB022.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_03.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_03.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 109 #f))
        (text "［コール］『バー・リーズ』に来たぞ。シーラはきっとこの店に居　　　　　るだろう。")
        (set-reg 109 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］早くシーラを助けに行かなきゃ！") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 110 #f))
   (text "［コール］シーラは俺がリーズに来る事を知っていたんだ。きっと　　　　　彼女は俺を探しにこの店に来ている筈だ。")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 111 #f))
   (text "［コール］看板の電気がついている・・・まだ店は営業しているよ　　　　　うだな。")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］看板を見ている暇なんてないよ。早くシーラを助けない　　　　　とな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 112 #f))
   (text "［コール］音楽が鳴っているから、店内の話し声は聞こえないな。")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］さっきの奴等もまだ居るかもしれないからな、十分注意　　　　　しないといけないな。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥018.MES"))
 (seg (? (= P 7) (= 113 #f))
   (text "［Ｂ・Ｆ］おい！")
   (wait)
   (text-reset 1)
   (text "［コール］ん？　俺か？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］お前、さっきスティーブと一緒だっただろ？")
   (wait)
   (text-reset 1)
   (text "［コール］ああ・・・それが何か？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］俺はスティーブの野郎が大嫌いなんだ。ポリスでもねぇ　　　　　のに、偉そうに俺達に文句いいやがってよ。")
   (wait)
   (text-reset 1)
   (text "［コール］〔こいつらスティーブさんが刑事だと知らないんだ〕")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］いつか半殺しにしてやるからな。奴に言っとけ！")
   (wait)
   (text-reset 1)
   (text "［コール］そんな事、俺じゃなくスティーブに直に言えよ。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］いや、あいつムカつくことに、やたら強いんだよな。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 113 #f))
   (text "［コール］ちょっと聞きたいんだが・・・。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］何だ？")
   (wait)
   (text-reset 1)
   (text "［コール］ここに２０代半ば位の女性が来なかったか？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ああ、１５分位前だったかな・・・。中に入って行った　　　　　のを見たぜ。")
   (wait)
   (text-reset 1)
   (text "［コール］やっぱりシーラはここに居るんだ・・・。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］馬鹿な女だよな、たった一人で来るなんてよ。")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［Ｂ・Ｆ］今日は呑み過ぎでよ・・・気持ち悪いんだよ。あんまし　　　　　話し掛けんなよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "［コール］相変わらず、この壁の落書きは酷いものだな。") (wait) (text-reset 1))
 (seg (? (= P 9) (= 114 #f))
   (text
    "［コール］バイクがあるという事は、まだブラッディフォックスが　　　　　店に居るって事だな。シーラが店に来て、奴等がただで　　　　　帰す訳がないからな・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 115 #f))
   (text "［コール］奴等、シーラに手を出したらタダじゃ済まさないぞ！！　　　　　俺はキレると何をしでかすか分からないからな。")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (text
    "［コール］数台のバイクが停まっている。ブラッディフォックスの　　　　　連中がまだ店内に居る事は、このバイクを見れば一目瞭　　　　　然だな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］さっきの奴等もまだ居るかもしれないからな、十分注意　　　　　しないといけないな。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥018.MES"))
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
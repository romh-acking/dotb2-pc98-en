(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB108A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 7 10 25 14)
  (exec-mem 3744 1 6 17 2 24 9)
  (exec-mem 3744 1 7 51 4 54 7)
  (exec-mem 3744 1 8 27 3 36 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB108.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB103.GPC")
  (image-mem 1 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 120 #f))
        (text "［キャサリン］コール・・・どうしたの？　真剣な顔をして・・。")
        (wait)
        (text-reset 1)
        (text "［コール］いや、ちょっとね・・・。")
        (set-reg 120 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［キャサリン］コール、落ち着かないみたいね。何かあったの？")
        (wait)
        (text-reset 1)
        (text "［コール］いや、何でもないんだ。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 8) (= 121 #f))
   (text "［キャサリン］どうしたの？　いつものコールらしくないわ。")
   (wait)
   (text-reset 1)
   (text "［コール］ははは、そうか？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］何かあったの？")
   (wait)
   (text-reset 1)
   (text "［コール］いや、何でもないよ。")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 122 #f))
   (text
    "［コール］〔キャサリンにはシーラの事を話す訳にはいかないな。　　　　　　これ以上、思い詰めたらキャサリンは気がおかしくな　　　　　　ってしまいそうだもんな〕")
   (wait)
   (text-reset 1)
   (text "［キャサリン］うん？")
   (wait)
   (text-reset 1)
   (text "［コール］いや、こっちの話し。")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 123 #f))
   (text
    "［キャサリン］そういえば、さっきライルさんがコールの事を捜し　　　　　　　てたわ。随分と深刻な表情だったけど、コール、何　　　　　　　かしたの？")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、ライルさんならたった今会ってきたよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］それで、何を言われたの？")
   (wait)
   (text-reset 1)
   (text "［コール］なに、大した事じゃないよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］コール、何か隠してない？")
   (wait)
   (text-reset 1)
   (text "［コール］別に・・・ただ、この研究所にブラッディフォックスが　　　　　侵入したから・・・それでね。")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 124 #f))
   (text "［キャサリン］ブラッディフォックスが来たの？")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、問い詰めようと思ったら自ら舌を噛み切ったよ。　　　　　なんとも恐ろしい奴さ・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］そう・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］そんなに心配するなよ、事件の事は俺とスティーブさん　　　　　に任せておいてくれ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］うん・・・。")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［キャサリン］なんだか今日のコールは元気がないみたいね。どこ　　　　　　　か具合でも悪いの？")
   (wait)
   (text-reset 1)
   (text "［コール］いや、そんな事はないさ。いつも通りだよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 125 #f))
   (text "［コール］寝心地の良さそうなベッドだな。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］だけど、今まで使っている人がいなかったみたいだ　　　　　　　から、少しカビ臭いのよ。")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［キャサリン］明日になったらシーツを洗おうと思っているの。") (wait) (text-reset 1))
 (seg (? (= P 6) (= 126 #f))
   (text "［コール］カーテンは閉めないのか？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］私、暑がりだからこのままでいいの。")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］空が曇っているようだな。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］雨でも降るのかしら・・・嫌な天気よね。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text
    "［コール］〔このまま何日もシーラを放っておいたら、何れ死霊に　　　　　　なってしまうのか・・・。そんな・・・そんな事には　　　　　　絶対させないぞ！！〕")
   (wait)
   (text-reset 1)
   (text "［キャサリン］どうしたの？　カレンダーなんか睨んじゃって。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］じゃ、俺はこれで失礼するよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］コール、元気出してね。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥074.MES"))
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
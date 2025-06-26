(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB043A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 16 3 21 7)
  (exec-mem 3744 1 7 25 2 34 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB044.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 5)
  (if (</>
       (//
        (? (= 108 #t) (= 121 #f))
        (text "［コール］ライルさん、水を一杯もらえませんか？　シーラが喉が　　　　　渇いているらしくて・・・。")
        (wait)
        (text-reset 1)
        (text "［ライル］ああ、そこの水道を使ってくれ。")
        (wait)
        (text-reset 1)
        (text "［コール］どうも。")
        (set-reg 121 #t)
        (wait)
        (text-reset 1))
       (//
        (? (= 120 #f))
        (text "［ライル］やあ、コール。昨日はゆっくり眠れたかな？")
        (wait)
        (text-reset 1)
        (text "［コール］ええ、お陰様で。")
        (set-reg 120 #t)
        (wait)
        (text-reset 1))
       (// (text "［ライル］コールか、今度は何の用かな？") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 122 #f))
   (text "［コール］ライルさん、昨日はどこに行ってたんですか？")
   (wait)
   (text-reset 1)
   (text "［ライル］ああ、実験したい事があってね・・・この部屋の隣の実　　　　　験室に居たんだよ。")
   (wait)
   (text-reset 1)
   (text "［コール］あそこのドアにはオートロックが付いていましたね。　")
   (wait)
   (text-reset 1)
   (text "［ライル］実験室には申し訳ないが誰も入れたくないんでね。中に　　　　　入るには二通りの方法しかないんだ。")
   (wait)
   (text-reset 1)
   (text "［コール］二通り？")
   (wait)
   (text-reset 1)
   (text "［ライル］一つは、オートロックの暗証を入力する方法。もう一つ　　　　　は、中に居る人が内側から開ける事ができるよ。")
   (wait)
   (text-reset 1)
   (text "［コール］なるほどね。")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 123 #f))
   (text "［コール］そういえば、スティーブさんを見掛けませんでした？")
   (wait)
   (text-reset 1)
   (text "［ライル］さっき、車で街へ向かったよ。")
   (wait)
   (text-reset 1)
   (text "［コール］街に？")
   (wait)
   (text-reset 1)
   (text "［ライル］ああ、食料を調達しに行ったんだ。")
   (wait)
   (text-reset 1)
   (text "［コール］一人で大丈夫かな？")
   (wait)
   (text-reset 1)
   (text "［ライル］なに、昨日だって帰ってきたんだ。心配はいらないよ。")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 124 #f))
   (text "［コール］ライルさん、昨日スティーブさんが夜中に出て行ったの　　　　　を知ってます？")
   (wait)
   (text-reset 1)
   (text "［ライル］！？")
   (wait)
   (text-reset 1)
   (text "［コール］偶然見たんですよ、スティーブさんが大きな荷物を持っ　　　　　て車で出かけるのを・・・。")
   (wait)
   (text-reset 1)
   (text "［ライル］さ、さあ・・・私はずっと研究室にいたからね。")
   (wait)
   (text-reset 1)
   (text
    "［コール］昨日、スティーブさんは疲れたと言って部屋に入ってし　　　　　まったんです。俺はてっきり休んでいるものだとばかり　　　　　思ってたんですが・・・。")
   (wait)
   (text-reset 1)
   (text "［ライル］まあ、彼は私とは違って色々とやる事があるからな。　　　　　　夜中に出て行ったところで、不思議な事はないよ。")
   (wait)
   (text-reset 1)
   (text "［コール］まあそうですが・・・。")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［ライル］刑事であるスティーブには色々とやる事があるからな。　　　　　夜中に出て行ったところで、不思議な事はないよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 125 #f))
   (text "［コール］いつ来てもこの研究室は凄いな。")
   (wait)
   (text-reset 1)
   (text "［ライル］ピレイン研究所は、この辺りではトップグループに入っ　　　　　ているからね。設備だけはどこにも負けていないよ。")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 126 #f))
   (text "［コール］実験室には、スティーブさんも未だに入った事がないっ　　　　　て言ってましたよね。")
   (wait)
   (text-reset 1)
   (text "［ライル］そうだな、あの部屋に入れるのは私だけだよ。")
   (wait)
   (text-reset 1)
   (text "［コール］何があるんですか？")
   (wait)
   (text-reset 1)
   (text "［ライル］ただの実験室だよ。")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［ライル］この部屋は私の生きがいだよ。") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］それでは、そろそろ失礼しますね。")
   (wait)
   (text-reset 1)
   (text "［ライル］用があったらいつでも来てくれ。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥062.MES"))
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
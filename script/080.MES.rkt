(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB043.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 16 3 21 7)
  (exec-mem 3744 1 6 38 2 44 6)
  (exec-mem 3744 1 7 25 2 34 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB044.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB071.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 136 #f))
        (text "［コール］スティーブさん、ライルさん・・・。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］コール、決心はついたか？")
        (set-reg 136 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］俺は今、ピレイン研究所の研究室に居る。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 137 #f) (= 140 #f))
   (text "［ライル］どうだ、決心はついたのか？")
   (wait)
   (text-reset 1)
   (text "［コール］え、ええ・・・。")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 140 #t) (= 141 #f))
   (text "［ライル］そうか・・・蘇生はしないか・・・。そうなると、今度　　　　　はシーラの身が心配になってくるな。")
   (wait)
   (text-reset 1)
   (text "［コール］はい、シーラを犠牲にする訳でもないし・・・ただ俺は　　　　　人間としてやってはならない事だと思ったからです。")
   (wait)
   (text-reset 1)
   (text "［ライル］悪かった・・・変な物を見せてしまって・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］いえ、いいんです。")
   (set-reg 141 #t)
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 140 #t))
   (text "［ライル］どちらにしても、この選択はコールにとって辛いものだ　　　　　ったな。よく決心したよ。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 138 #t))
   (text "［ライル］私も、脳の蘇生を全力でやらせてもらう。決してコール　　　　　の選択が間違っていなかったと言えるぐらいにな。")
   (wait)
   (text-reset 1)
   (text "［コール］はい、宜しくお願いします。")
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［ライル］それで・・・どうする事にしたんだ？")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 135 #t) (= 138 #f))
         (text "［コール］ドクの脳を蘇生する事にしました。")
         (wait)
         (text-reset 1)
         (text "［ライル］そうか・・・よく決心したな。だが、安心するのはクー　　　　　ガー博士の脳が無事に蘇生されてからだ。")
         (wait)
         (text-reset 1)
         (text "［コール］はい、判っています。もし、失敗してもそれは仕方のな　　　　　い事だと思っています。")
         (wait)
         (text-reset 1)
         (text "［ライル］よく言った。私も全力でやらせてもらうよ。")
         (wait)
         (text-reset 1)
         (text "［コール］宜しくお願いします。")
         (set-reg 138 #t)
         (wait)
         (text-reset 1)))))
 (seg (? (= P 6) (= 143 #t))
   (text "［コール］それとスティーブさん、ダニエルの居場所が判ったんで　　　　　す。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］何！？")
   (wait)
   (text-reset 1)
   (text "［コール］奴はラゾバン製薬に身を潜めています。そこでブラッデ　　　　　ィフォックスに指示を出していたのでしょう。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］確かか？")
   (wait)
   (text-reset 1)
   (text
    "［コール］ええ、実はキャサリンがシャッフル・フードでさらわれ　　　　　そうになった時、ブラッディフォックスの一人が「ラゾ　　　　　に連れていく」と言っていたそうです。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ラゾバン製薬というと、この研究所から東に１時間　　　　　　　ぐらいだな。")
   (wait)
   (text-reset 1)
   (text "［コール］どうします？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］敵の本拠地に潜入するには、それなりに準備が必要　　　　　　　になってくるな。")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 138 #t))
         (text "［スティーブ］とにかく、今はシーラを回復させる方が先だ。")
         (wait)
         (text-reset 1)
         (text "［ライル］そうだな、早速ディスベル霊園でクーガー博士の遺体を　　　　　回収しよう。")
         (wait)
         (text-reset 1)
         (text "［スティーブ］よし、コール。私と一緒に来るんだ。")
         (wait)
         (text-reset 1)
         (text "［コール］判りました。")
         (wait)
         (text-reset 1)
         (text "［ライル］私は蘇生の準備をしておくよ。")
         (wait)
         (text-reset 1)
         (text "［スティーブ］うむ、頼んだぞ。")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         ((cmd 204) 100 899)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥081.MES"))
        (//
         (? (= 140 #t))
         (text "［コール］どうします？")
         (wait)
         (text-reset 1)
         (text "［スティーブ］とにかく、少し時間をかけて今後の事について考え　　　　　　　てみた方がいいだろうな。")
         (wait)
         (text-reset 1)
         (text "［ライル］コール・・・シーラは自分がこの先、どうなるか感付い　　　　　ているだろう。なるべく彼女の側に居てやってくれ。")
         (wait)
         (text-reset 1)
         (text "［コール］判りました。じゃあ、俺はこれで・・・。")
         (wait)
         (text-reset 1)
         (text "［ライル］私は実験室にいるから、何かあったら来てくれ。")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         ((cmd 204) 100 899)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥083.MES")))))
 (seg (? (= P 6) (= 139 #f) (= 138 #f))
   (text "［スティーブ］クーガーを蘇生するのか、それとも止めておくか？")
   (set-reg 139 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 138 #t) (= 142 #f))
   (text "［スティーブ］そうか、クーガーを蘇生するのか。")
   (wait)
   (text-reset 1)
   (text "［コール］はい、今の俺にはシーラを犠牲にする事はできません。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］二言はないな？")
   (wait)
   (text-reset 1)
   (text "［コール］はい、宜しくお願いします。")
   (set-reg 142 #t)
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 138 #t))
   (text "［スティーブ］どちらにしても、この選択はコールにとって辛いも　　　　　　　のだったな。よく決心したよ。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 140 #t))
   (text "［スティーブ］コールの選択はどうであれ、うまく行く事を願って　　　　　　　いるよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［スティーブ］はやくコールの決断を言ってくれ。それによっては　　　　　　　いろいろな準備も必要になってくるからな。")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 134 #t) (= 140 #f))
         (text "［コール］ドクの蘇生ですが、真剣に考えて俺にはそんな残酷な事　　　　　はできません。")
         (wait)
         (text-reset 1)
         (text "［スティーブ］そうか・・・まあ、コールがそう言うなら我々は、　　　　　　　これ以上クーガーに近づく事はないよ。")
         (wait)
         (text-reset 1)
         (text "［コール］すみません・・・折角、彼の遺体から脳波をキャッチし　　　　　たのに・・・。")
         (wait)
         (text-reset 1)
         (text "［スティーブ］そんな事は全然気にする必要はない。")
         (set-reg 140 #t)
         (wait)
         (text-reset 1)))))
 (seg (? (= P 7))
   (text
    "［コール］ここは、ライルさんの研究室だ。左側のドアの先には、　　　　　一般常識では考えられないような実験が行われる部屋が　　　　　ある。")
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
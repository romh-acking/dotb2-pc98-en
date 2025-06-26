(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (if (</>
       (// (? (= 901 #t) (= 124 #f)) (load-mem "A:¥CLM¥DB043.CLM" 32768))
       (// (load-mem "A:¥CLM¥DB043A.CLM" 32768))))
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 16 3 21 7)
  (if (</> (// (? (= 901 #t) (= 124 #f)) (exec-mem 3744 1 6 38 2 44 6))))
  (exec-mem 3744 1 7 25 2 34 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB044.GPC")
  (image-mem 1 3)
  (if (</>
       (//
        (? (= 901 #t) (= 124 #f))
        (image-file "B:¥GPC¥DB071.GPC")
        (image-mem 1 3))))
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 5)
  (if (</>
       (//
        (? (= 901 #t) (= 124 #f) (= 117 #f))
        (text "［ライル］やあ、お疲れさん。")
        (wait)
        (text-reset 1)
        (text "［コール］ハアハアハア・・・結構重かったな・・・。")
        (set-reg 117 #t)
        (wait)
        (text-reset 1))
       (//
        (? (= 901 #t) (= 124 #f))
        (text "［スティーブ］コールか、シーラの様子はどうかな。")
        (wait)
        (text-reset 1))
       (//
        (text "［コール］あれ？　スティーブさんは？")
        (wait)
        (text-reset 1)
        (text "［ライル］さっき出かけたが・・・？")
        (set-reg 150 #t)
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 150 #t) (= 121 #f))
   (text "［コール］スティーブさん、どこに行ったんですか？")
   (wait)
   (text-reset 1)
   (text "［ライル］さあ、何も聞いていないが・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］そうですか・・・。")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 150 #t))
   (text "［ライル］さっき車の音がしたから、きっとまた街にでも行ったの　　　　　だろう。")
   (wait)
   (text-reset 1)
   (text "［コール］街へか・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 118 #f))
   (text "［ライル］御苦労だったな、ゆっくり休んでくれ。")
   (wait)
   (text-reset 1)
   (text "［コール］ドクを復活させるのに、どのくらいかかりますか？")
   (wait)
   (text-reset 1)
   (text "［ライル］そうだな・・・３時間もあれば準備できるよ。")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 119 #f))
   (text "［コール］ドクの脳は大丈夫でしょうか？")
   (wait)
   (text-reset 1)
   (text
    "［ライル］微妙な脳波が確認されてはいるが、かなり古くなってい　　　　　るから気をつけて扱わなければならない。脳波が止まっ　　　　　てしまったら一巻の終わりだからな。")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 120 #f))
   (text "［コール］ドクの脳には、俺が撃った弾丸の傷が入っていると思う　　　　　けど・・・。")
   (wait)
   (text-reset 1)
   (text
    "［ライル］弾丸なんてものは、撃った時点で脳を貫通しているよ。　　　　　それに、脳は時間が経つと空気に触れている部分が次第　　　　　に固まってくるんだ。血液のようにね。")
   (wait)
   (text-reset 1)
   (text "［ライル］それに、空気に触れていない部分は蘇生薬の効能で、未　　　　　だに生き続けているからな。")
   (wait)
   (text-reset 1)
   (text "［コール］なるほど・・・。なら、脳ミソが流れ出て来る事はない　　　　　ですね。")
   (wait)
   (text-reset 1)
   (text "［ライル］心配いらないよ。")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］ドクの脳を必ず蘇生してください。")
   (wait)
   (text-reset 1)
   (text "［ライル］ああ、シーラを見殺しにする事はできないからな。頑張　　　　　ってみるよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 122 #f))
   (text "［スティーブ］ライル、聞いてくれ。私が墓地で死霊に襲われた時　　　　　　　コールに助けてもらったんだ。")
   (wait)
   (text-reset 1)
   (text "［ライル］ほう、さすがコールだな。")
   (wait)
   (text-reset 1)
   (text "［コール］そんな助けるなんて大袈裟な・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］これで二度もコールに助けられたよ。あらためて、　　　　　　　礼を言うよ。")
   (wait)
   (text-reset 1)
   (text "［コール］そんな・・・よしてくださいよ。")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 123 #f))
   (text "［ライル］それで、どうやって死霊を倒したんだ？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］１階では、死霊のこめかみに１発。死霊はそのまま　　　　　　　床におねんねさ。")
   (wait)
   (text-reset 1)
   (text "［ライル］そういえば、１階にあった女の死体も、こめかみに１発　　　　　撃ち込まれていたな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］余程、練習をしなくてはあそこまでうまくならない　　　　　　　よ。どこかで撃っていたんじゃないのか？")
   (wait)
   (text-reset 1)
   (text "［コール］よしてくださいよ、俺がそんな事やってる訳ないじゃな　　　　　いですか。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ジョーク、ジョークだよ。")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 124 #f))
   (text
    "［コール］スティーブさん、ドクの蘇生が終わったらラゾバン製薬　　　　　に行きませんか？　ダニエルを早めに潰しておかないと　　　　　安心できないんです。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・何か？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］いや、そんなに急ぐ事もないよ。ダニエルの事は、　　　　　　　シーラが治ってからゆっくり考えよう。")
   (wait)
   (text-reset 1)
   (text "［コール］そうですか・・・。")
   (wait)
   (text-reset 1)
   (text
    "［スティーブ］とにかく、今はシーラの身体からＤＮＶを除去する　　　　　　　事が先決だよ。そうでないと、コールも安心できな　　　　　　　いだろう？")
   (wait)
   (text-reset 1)
   (text "［コール］それもそうですが・・・。")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［スティーブ］コール、今はシーラの事を一番に考えてやるんだ。")
   (wait)
   (text-reset 1)
   (text "［コール］はい・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (branch-random
    (</> (/ (text "［ライル］どうした？　キョロキョロして？")) (/ (text "［ライル］コール、落ち着かないな。"))))
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 901 #t) (= 120 #f))
   (exec-mem 6064 2 1)
   (text "［スティーブ］コール、まだ話しは終わっていないよ。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
 (seg (? (= P 1) (= 901 #t) (= 124 #f))
   (exec-mem 6064 2 1)
   (text "［スティーブ］コール、まだ話しは終わっていないよ。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］じゃあ、俺はこれで失礼します。")
   (wait)
   (text-reset 1)
   (text "［ライル］今はシーラの側にいてやった方がいいぞ。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (mes-jump "A:¥MES¥085.MES"))
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
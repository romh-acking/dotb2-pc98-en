(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB062.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 20 2 27 7)
  (exec-mem 3744 1 6 41 5 48 8)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB061.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB062.GPC")
  (image-mem 1 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB064RC.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (image-file "B:¥GPC¥DB064LC.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 1 54 38 23 134")
  (image-file "B:¥GPC¥DB065C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 2 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 3 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 107 #f))
        (text "［ブライア］なかなかタフな奴だな・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］貴様・・・！！")
        (wait)
        (text-reset 1)
        (text "［ブライア］半殺しにあったばかりの今のお前には、動くどころか　　　　　　口を利く事しかできないぜ。")
        (set-reg 107 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］くそっ、さんざん痛めつけられたせいで力が入らない。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 108 #f))
   (text "［コール］シーラに・・・シーラに会わせてくれ。")
   (wait)
   (text-reset 1)
   (text "［ブライア］残念ながら、あの女はここにはいない。")
   (wait)
   (text-reset 1)
   (text "［コール］どこだ！？")
   (wait)
   (text-reset 1)
   (text
    "［ブライア］リーズに監禁していた時に、スティーブの野郎に持っ　　　　　　ていかれたよ。まあ、俺達はお前に昨日の借りを返す　　　　　　事が目的だったからな。女なんてどうでもよかった。")
   (set-reg 108 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 109 #f))
   (text "［コール］スティーブさんがシーラを・・・？")
   (wait)
   (text-reset 1)
   (text "［ブライア］あの野郎には、いずれ死んでもらうがな・・・。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ケッケッケッ！")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 110 #f))
   (text "［ブライア］それにしても、お前はなかなか度胸があるな。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text
    "［ブライア］初めてリーズに来た時といい、その後リーズでブラッ　　　　　　ディフォックスの２人を倒した事といい、そして今回　　　　　　もたった一人で来るとはな・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］何が言いたいんだ？")
   (wait)
   (text-reset 1)
   (text "［ブライア］これだけ人々に恐れられているブラッディフォックス　　　　　　を相手にしているんだ。何かしら目的があるんだろ？")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［ブライア］言いたくなければそれでもいい。")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［ブライア］残念だな、もう少し素直な奴だと思っていたが・・。")
   (wait)
   (text-reset 1)
   (text "［ブライア］おい、例のモノを持って来い。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (text "［　女　］フフフ・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "A 1")
   (exec-mem 912 "PUT 1 54 38,W 0,O 0")
   (exec-mem 912 "A 0")
   (exec-mem 19216 55 39 73 146 2 6 1 19)
   (text "［コール］！？")
   (wait)
   (text-reset 1)
   (text
    "［ブライア］最近じゃ、ポリスの手入れがうるさくてな。売れ残っ　　　　　　たパープル・スカイの処分に困っているんだ。てめえ　　　　　　にも一肌脱いでもらうぜ。")
   (wait)
   (text-reset 1)
   (text "［コール］売れ残っただと！？　じゃあ、お前がパープル・スカイ　　　　　を作っているのか！？")
   (wait)
   (text-reset 1)
   (text "［ブライア］俺は大量に来る薬をさばいているダケだよ。さあ、そ　　　　　　ろそろ楽になれ。")
   (wait)
   (text-reset 1)
   (text "［コール］や、やめろ・・・この薬は・・・抵抗力の増したＤＮＶ　　　　　を注射したら・・・！！")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］オラ、ジタバタするんじゃねぇ。")
   (wait)
   (text-reset 1)
   (text "［ブライア］やれ！")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 2 54 38,W 0,O 0")
   (text "［　女　］ウフフフ・・・。最高のエクスタシーをプレゼントして　　　　　あげるわ。")
   (wait)
   (text-reset 1)
   (text "［コール］止めろぉ！！！！")
   (wait)
   (text-reset 1)
   (sound '|| 0)
   (sound '|se | 8)
   (text "［　女　］ん？")
   (wait)
   (text-reset 1)
   (text "［ブライア］誰だ？")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 3 54 38,W 0,O 0")
   (exec-mem 912 "EXIT")
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB061.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB066.GPC")
   (image-mem 1 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (text "［Ｂ・Ｆ］た、大変だぁ！！")
   (wait)
   (text-reset 1)
   (text "［ブライア］どうした！？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］街中がパニックだ！！")
   (wait)
   (text-reset 1)
   (text "［ブライア］何があった！？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］何百体ものゾンビが現れたんだ！！")
   (sound '|| 0)
   (sound '|se | 4)
   (wait)
   (text-reset 1)
   (text "［コール］！？")
   (wait)
   (text-reset 1)
   (text "［ブライア］ゾンビだと？　笑わせるな！！")
   (wait)
   (text-reset 1)
   (text
    "［Ｂ・Ｆ］嘘じゃねぇ、仲間は奴等に殆ど殺されちまったんだ！！　　　　　目の前でマリーもジョナサンもスティングも・・・・・　　　　　皆、奴等に喰われちまった！！　頼むから来てくれ！！")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］なんだと！？")
   (wait)
   (text-reset 1)
   (text "［ブライア］クッ・・！！")
   (wait)
   (text-reset 1)
   (text "［ブライア］よし、判った。すぐに行こう！！")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］こいつは？")
   (wait)
   (text-reset 1)
   (text "［ブライア］そんな奴、放っておけ！！　行くぞ！！")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB061.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (text "［コール］街に死霊が出ただと！？　なんて事だ！！　嫌な予感が　　　　　的中しちまった！！")
   (wait)
   (text-reset 1)
   (text "［コール］こんな所でグズグズしていられない！！　俺も行ってみ　　　　　よう！！")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (sound '|| 0)
   (mes-jump "A:¥MES¥035.MES"))
 (seg (? (= P 6))
   (branch-random
    (</>
     (/
      (text "［コール］・・・・・・。")
      (wait)
      (text-reset 1)
      (text "［Ｂ・Ｆ］この馬鹿、まだ殴り足りない気分だぜ。")
      (wait)
      (text-reset 1))
     (/
      (text "［Ｂ・Ｆ］てめえはブライアさんと話しているんだろ！　何をよそ　　　　　見してるんだ！？　ハッ倒すぞ！！")
      (wait)
      (text-reset 1)
      (text "［コール］やってみろ、てめえ必ず殺す！")
      (wait)
      (text-reset 1)
      (text "［Ｂ・Ｆ］なんだとこの・・・！！")
      (wait)
      (text-reset 1)
      (text "［ブライア］やめとけ！")
      (wait)
      (text-reset 1))
     (/
      (text "［Ｂ・Ｆ］こんな奴、早く止め刺しましょうよ。")
      (wait)
      (text-reset 1)
      (text "［ブライア］まあ、待て。")
      (wait)
      (text-reset 1))
     (/
      (text "［コール］俺にもタバコをくれよ。")
      (wait)
      (text-reset 1)
      (text "［Ｂ・Ｆ］お前、もう少し痛い目見るか？　あん？")
      (wait)
      (text-reset 1)))))
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
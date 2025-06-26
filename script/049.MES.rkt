(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB073.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 30 3 37 7)
  (exec-mem 3744 1 6 50 3 56 14)
  (exec-mem 3744 1 7 4 10 23 15)
  (exec-mem 3744 1 8 15 2 27 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB072.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB073.GPC")
  (image-mem 1 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 184 #f) (= 202 #f))
        (text "［コール］あれ？　キャサリンは？")
        (wait)
        (text-reset 1)
        (text "［シーラ］さっき出ていったわ。コール、ありがとう。")
        (wait)
        (text-reset 1)
        (text "［コール］ん？")
        (wait)
        (text-reset 1)
        (text "［シーラ］キャサリンを助けてくれて・・・。")
        (set-reg 184 #t)
        (wait)
        (text-reset 1))
       (//
        (text
         "［シーラ］どうしたの？　今日のコールは落ち着かないみたいね。　　　　　いつもだったら、私よりコールの方がずっと落ち着いて　　　　　いるのにね。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 182 #t) (= 186 #t) (= 187 #f))
   (text "［シーラ］コール、何かゴチャゴチャしちゃってるみたいだから、　　　　　今までの事を少し整理してみたらどう？")
   (wait)
   (text-reset 1)
   (text "［コール］そうだな・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］まず最初に、パープル・スカイというドラッグはブラッ　　　　　ディフォックスの中で流れている事は間違い無いわね。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、間違い無い。")
   (wait)
   (text-reset 1)
   (text "［シーラ］そして、ブラッディフォックスの中で、一番パープル・　　　　　スカイに関係している人の名前は？")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    36
    298
    56
    298
    16
    317
    36
    317
    56
    317
    16
    337
    36
    337
    56
    337
    (</>
     (/ (text "スティーブ　　　　"))
     (/ (text "キャサリン　　　　"))
     (/ (text "ブライア　　　　　"))
     (/ (text "ライル　　　　　　"))
     (/ (text "ダニエル　　　　　"))
     (/ (text "シーラ　　　　　　"))))
   (text-reset 1)
   (if (</> (// (? (= S 2)) (nop@) (set-reg 188 #t))))
   (text "［シーラ］そして、その人の手によってパープル・スカイは主にど　　　　　こでさばかれているの？")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    36
    298
    56
    298
    16
    317
    36
    317
    56
    317
    16
    337
    36
    337
    56
    337
    (</>
     (/ (text "バー『リーズ』　　"))
     (/ (text "ディスコ『ジーナ』"))
     (/ (text "ラゾバン製薬　　　"))
     (/ (text "ピレイン研究所　　"))
     (/ (text "３２分署　　　　　"))
     (/ (text "シャッフル・フード"))))
   (text-reset 1)
   (if (</> (// (? (= S 1)) (nop@) (set-reg 189 #t))))
   (text "［シーラ］そして、私が調べていた結果、パープル・スカイの製造　　　　　元がラゾバン製薬だと判ったのよね。その理由は？")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    16
    317
    16
    337
    (</>
     (/ (text "ラゾバン製薬の社印の入ったケースをジーナで発見した"))
     (/ (text "ラゾバン製薬の所長がキャサリンの義父だと判ったから"))
     (/ (text "ラゾバン製薬へシーラは実際に行って来て確かめたから"))))
   (text-reset 1)
   (if (</> (// (? (= S 0)) (nop@) (set-reg 190 #t))))
   (text
    "［シーラ］そして私は、ラゾバン製薬に向かった・・。だけど途中　　　　　でブラッディフォックスに捕まりリーズに監禁されてし　　　　　まった。")
   (wait)
   (text-reset 1)
   (text "［シーラ］ラゾバン製薬は、ついこの間、麻薬取締法違反でガサ入　　　　　れされていた。そして大量に見つかったのが・・・？")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    36
    298
    56
    298
    16
    317
    36
    317
    56
    317
    16
    337
    36
    337
    56
    337
    (</>
     (/ (text "大麻　　　　　　　"))
     (/ (text "ヘロイン　　　　　"))
     (/ (text "マリファナ　　　　"))
     (/ (text "コカイン　　　　　"))))
   (text-reset 1)
   (if (</> (// (? (= S 1)) (nop@) (set-reg 191 #t))))
   (text
    "［シーラ］蘇生薬にその薬を混合して出来たのがパープル・スカイ　　　　　という訳ね。これで、ほぼラゾバン製薬が関係している　　　　　可能性はあるわね。")
   (wait)
   (text-reset 1)
   (text "［シーラ］ラゾバン製薬の所長でもあり、キャサリンの義父でもあ　　　　　る人の名前は？")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    36
    298
    56
    298
    16
    317
    36
    317
    56
    317
    16
    337
    36
    337
    56
    337
    (</>
     (/ (text "スティーブ　　　　"))
     (/ (text "キャサリン　　　　"))
     (/ (text "ブライア　　　　　"))
     (/ (text "ライル　　　　　　"))
     (/ (text "ダニエル　　　　　"))
     (/ (text "シーラ　　　　　　"))))
   (text-reset 1)
   (if (</> (// (? (= S 4)) (nop@) (set-reg 191 #t))))
   (text
    "［シーラ］シャッフル・フードにあったブラッディフォックスの死　　　　　体だけど、キャサリンが言うには、その人達が彼女をさ　　　　　らおうとした時に死霊に襲われたそうね。")
   (wait)
   (text-reset 1)
   (text "［シーラ］彼等は何て言ってキャサリンを誘き出そうとしたの？")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    16
    317
    16
    337
    (</>
     (/ (text "『姉ちゃん、デートしてくれよ』と言って誘った"))
     (/ (text "『リーダーが会いたがっている』と言って誘った"))
     (/ (text "『キャサリンの親父に頼まれた』と言って誘った"))))
   (text-reset 1)
   (if (</> (// (? (= S 2)) (nop@) (set-reg 192 #t))))
   (text "［シーラ］という事は・・・？")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    16
    317
    16
    337
    (</>
     (/ (text "キャサリンとブラッディフャックスはどこかで繋がっている"))
     (/ (text "キャサリンは以前にもブラッディフォックスに誘われている"))
     (/ (text "キャサリンの義父と、ブラッディフォックスは繋がっている"))))
   (text-reset 1)
   (if (</> (// (? (= S 2)) (nop@) (set-reg 193 #t))))
   (if (</>
        (//
         (? (= 188 #t) (= 189 #t) (= 190 #t) (= 191 #t) (= 192 #t) (= 193 #t))
         (text "［コール］これだけ揃えば、ラゾバン製薬とブラッディフォックス　　　　　が繋がっている事はほぼ間違いなさそうだな。")
         (set-reg 187 #t)
         (wait)
         (text-reset 1))
        (//
         (text "［コール］うーん、どこかおかしいような気がするが・・・。")
         (wait)
         (text-reset 1)
         (text "［シーラ］もう一度、最初から考え直してみましょうよ。")
         (wait)
         (text-reset 1)
         ((cmd 204) 188 193)))))
 (seg (? (= P 5) (= 182 #t) (= 186 #t))
   (text "［コール］後は、スティーブさんが取りにいったラゾバン製薬の資　　　　　料を見るだけだな。")
   (wait)
   (text-reset 1)
   (text "［シーラ］それにしても・・・スティーブさん遅いわね・・・。")
   (set-reg 194 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 185 #f))
   (text "［シーラ］キャサリンの義父さんが、ラゾバン製薬の所長だったみ　　　　　たいね・・・。キャサリン、何だか可哀想・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ・・・だけど彼女自身、その男をすごく嫌っている　　　　　みたいだぜ。")
   (wait)
   (text-reset 1)
   (text
    "［シーラ］聞いたわ・・・キャサリンに乱暴したそうね・・・・。　　　　　だけど、彼女のお母さんがその人を愛してしまったんで　　　　　しょ？")
   (wait)
   (text-reset 1)
   (text "［シーラ］彼女にしてみれば、そんな事があった上で、お母さんと　　　　　顔を会わせるのは辛いのよ。")
   (wait)
   (text-reset 1)
   (text "［コール］まあな・・・。")
   (set-reg 185 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 186 #f))
   (text "［コール］キャサリンたまには実家に帰っているのかな？")
   (wait)
   (text-reset 1)
   (text
    "［シーラ］さあ・・・私、彼女の家の事は全然判らないし、彼女も　　　　　そういう話は今まで一度もした事がなかったから・・。　　　　　彼女の口からそんな話が出たのは、さっきが初めてよ。")
   (wait)
   (text-reset 1)
   (text "［コール］そうか・・・。")
   (set-reg 186 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］そういえば、スティーブさんはまだ帰ってきてないか？")
   (wait)
   (text-reset 1)
   (text "［シーラ］そういえば、まだみたいね。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (branch-random
    (</>
     (/
      (text "［コール］ここはシャワー室だったな。")
      (wait)
      (text-reset 1)
      (text "［シーラ］もう少ししたら入ってみようかしら。")
      (wait)
      (text-reset 1))
     (/
      (text "［コール］シャワー室へのドアがある。中はそんなに広くなさそう　　　　　だな。")
      (wait)
      (text-reset 1)))))
 (seg (? (= P 7) (= 113 #f))
   (text
    "［コール］どこにでもあるパイプ式のベッドだな。俺も、アパート　　　　　ではこの形のベッドで毎日寝ているが、見た目よりはな　　　　　かなか寝心地がいいものだ。")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 114 #f))
   (text "［シーラ］どうしたの？　ベッドが気になる？")
   (wait)
   (text-reset 1)
   (text "［コール］いや、パイプ式のベッドなんて珍しいからさ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］コールの部屋にも、こんな感じのベッドがあるわね。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、安かったからな・・・。")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［コール］普通のパイプ式のベッドだな。") (wait) (text-reset 1))
 (seg (? (= P 8) (= 115 #f))
   (text "［コール］あそこが窓か・・・。カーテンが閉まっているが、この　　　　　時間じゃあ窓の外は真っ暗だな。")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "［シーラ］夜は冷えるからカーテンをしてるの。") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］よし、一旦廊下に戻ろう。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥039.MES"))
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB012.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 49 9 55 12)
  (exec-mem 3744 1 6 27 4 37 8)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB010.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB012.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 156 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 157 #f))
        (text "［Ｂ・Ｆ］てめぇのせいで女を逃がしちまったじゃねぇか！　余計　　　　　な事しやがって！！　覚悟は出来てるんだろうなぁ！？")
        (set-reg 157 #t)
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 158 #f))
   (text "［コール］辺りの人は俺と目を合わせないようにしている。まぁ、　　　　　こいつらと関り合いになりたくない気持ちは判るな。")
   (set-reg 158 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］周りの人はそそくさとこの場を立ち去ろうとしている。　　　　　誰も足を止めて見物しようとする人はいない。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 159 #f))
   (text "［Ｂ・Ｆ］この野郎、俺達がブラッディフォックスだと知ってて喧　　　　　嘩売ってんのか！？")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、知ってるさ。だが俺は喧嘩をしたい訳じゃない。　　　　　ちょっと聞きたい事があってね。")
   (wait)
   (text-reset 1)
   (text
    "［Ｂ・Ｆ］ふざけるなっ！！　この縄張りで俺達に楯突くとはいい　　　　　度胸じゃねぇか。二度とそんな口を叩けねぇようにして　　　　　やるぜ！！")
   (wait)
   (text-reset 1)
   (text "［コール］しょうがねぇなぁ・・・。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ブラッディフォックスの恐ろしさを教えてやるぜ！！")
   (wait)
   (text-reset 1)
   (text "［コール］能書きはいいからよ、やるんなら早くやろうぜ。俺も、　　　　　お前と付き合ってる程暇じゃねぇんだよ。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］テメェ！！")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］うっ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ん？　どうした？　早くかかって来いよ。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ま、待てよ。お前、そんな物騒な物を持ってて・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］さっきの威勢はどうしたんだ？　俺も気が短いからよ、　　　　　指先に力が入ったまま戻らねぇんだ。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ま、まて！！　わ、判った・・何でも言うからよ。その　　　　　銃はしまってくれよ、な？")
   (wait)
   (text-reset 1)
   (text "［コール］しまってもいいが、下手に動くと腹に風穴が空くぜ？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］わ、判ったよ。")
   (set-reg 159 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 160 #f))
   (text "［Ｂ・Ｆ］それで聞きたい事って一体何なんだ？")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、そうだ。お前の連れのバイクのタイヤに付着して　　　　　いるものだが、あれは何なんだ？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］付着？")
   (wait)
   (text-reset 1)
   (text "［コール］タイヤにベットリついてんだろ？　紫のペイントだよ。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ああ、あれか？　多分走っている時に付いたんじゃねぇ　　　　　のか？　ただのペンキだろ？")
   (set-reg 160 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 161 #f))
   (text "［コール］どこで付いたのか判るか？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］さあな・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］死にたいか？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］よせよ、判ったよ・・。今日は隣街のベイサイド研究所　　　　　にずっとたまってたからよ、きっとそこじゃねぇのか？")
   (wait)
   (text-reset 1)
   (text "［コール］ベイサイド研究所！？　２年前の事件で、アンドロイド　　　　　になったグールがアジトにしていた場所じゃないか！！")
   (set-reg 161 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 162 #f))
   (text "［コール］どうしてベイサイドなんかに・・・。ひょっとしたら、　　　　　あの時グールは蘇生薬をまだ隠し持っていたのかもな。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］隣の街は、俺達ブラッディフォックスの仲間がたくさん　　　　　住み着いているからな。")
   (wait)
   (text-reset 1)
   (text "［コール］とにかく行ってみるしかないか・・・。")
   (wait)
   (text-reset 1)
   (text
    "［Ｂ・Ｆ］クレイジーだぜ・・・。ブラッディフォックスのたまり　　　　　場に、普通の人間が好き好んで行ける筈がねぇ。あんた　　　　　ＦＢＩじゃねぇのか？")
   (wait)
   (text-reset 1)
   (text "［コール］余計な詮索はしない方がいいな。")
   (set-reg 162 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］良く判ったよ。また何かあったら宜しく頼むぜ。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］冗談じゃない、もぅお前なんかに会いたくねぇよ。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB010.GPC")
   (image-mem 1 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (text "［コール］よし、ベイサイド研究所に行ってみるか。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥006.MES"))
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
        (/ (nop@) (set-reg 156 #f) (flag-save 1))
        (/ (nop@) (set-reg 156 #f) (flag-save 2))
        (/ (nop@) (set-reg 156 #f) (flag-save 3))
        (/ (nop@) (set-reg 156 #f) (flag-save 4))
        (/ (nop@) (set-reg 156 #f) (flag-save 5))
        (/ (nop@) (set-reg 156 #f) (flag-save 6))
        (/ (nop@) (set-reg 156 #f) (flag-save 7))
        (/ (nop@) (set-reg 156 #f) (flag-save 8))
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
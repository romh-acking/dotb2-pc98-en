(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB183.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 28 3 34 6)
  (exec-mem 3744 1 6 37 4 42 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB183.GPC")
  (image-mem 0 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB184C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 127 #f))
        (text "［コール］動くな！！")
        (wait)
        (text-reset 1)
        (text "［ブライア］あん？")
        (wait)
        (text-reset 1)
        (text "［スティーブ］ここまでだな、ブライア。")
        (wait)
        (text-reset 1)
        (text "［ブライア］ほう、二人揃ってここまで来るとはな・・・。")
        (set-reg 127 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［ブライア］ここまで来たのは誉めてやるが、お前等はここで死ん　　　　　　でもらうよ。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 131 #t) (= 132 #t))
   (text "［コール］さあ、そろそろ教えてもらおう。ジルはどこにいる！？")
   (wait)
   (text-reset 1)
   (text "［ブライア］おめでたい奴だ、俺がそんな事を口に出すとでも思っ　　　　　　ているのか？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ブライア、お前のその余裕はどこからくるんだ？")
   (wait)
   (text-reset 1)
   (text "［ブライア］今頃気がついても遅いがな。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (text "［Ｂ・Ｆ］おっと、動くな。")
   (wait)
   (text-reset 1)
   (text "［コール］！？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］銃を渡してもらおうか。")
   (wait)
   (text-reset 1)
   (text "［コール］くそっ・・・。")
   (wait)
   (text-reset 1)
   (text "［ブライア］スティーブ、判るか？　ブラッディフォックスのトッ　　　　　　プは、腕だけじゃやっていけねぇんだよ。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］冷静な判断力が必要という訳か・・？　たいした男　　　　　　　だな・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 133 #t)
   (mes-jump "A:¥MES¥108.MES"))
 (seg (? (= P 5) (= 128 #f))
   (text "［ブライア］スティーブ・・・てめえ、刑事だったんだってな？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］今頃気がついた所で少し遅かったようだな。")
   (wait)
   (text-reset 1)
   (text "［ブライア］まあ、どっちにしろ俺達の邪魔をした事には変わりは　　　　　　ない。死んで詫びてもらおうか。")
   (wait)
   (text-reset 1)
   (text "［コール］おい、自分の立場を判っていないようだな？　パープル　　　　　スカイを食らって頭がイカレたか？")
   (wait)
   (text-reset 1)
   (text "［ブライア］パープル・スカイを食らったらどうなるかぐらい、お　　　　　　前の女で実験済みだろう？")
   (set-reg 128 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 129 #f))
   (text "［スティーブ］ほう、お前は食ってないのか・・・なら、弾丸は１　　　　　　　発で済みそうだな。")
   (wait)
   (text-reset 1)
   (text "［コール］尻尾振ってダニエルに付いたのは、些か間違いだったよ　　　　　うだな。")
   (wait)
   (text-reset 1)
   (text
    "［ブライア］ワハハハハ・・・。ダニエルに従うよう、言われてい　　　　　　ただけだ。あんなジジイを初めからあてにする筈がな　　　　　　い。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］全てはジルの差し金か・・・。")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 130 #f))
   (text
    "［ブライア］ダニエルは、街の崩壊どころか俺達の仲間まで殺しや　　　　　　がった。何れ決着をつけるつもりだったが、その前に　　　　　　お前等が殺したそうだな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ブラッディフォックスの連中は、結局はお前しか残　　　　　　　らなかったのか？")
   (wait)
   (text-reset 1)
   (text "［ブライア］残っていれば、お前等がこのラスニュービルに近づい　　　　　　てきただけで蜂の巣にしてるぜ。")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 131 #f))
   (text
    "［ブライア］バー・リーズにスティーブが一番最初に来た時、下っ　　　　　　端の連中がお前に喧嘩を売った。お前は、そいつをも　　　　　　のの見事に倒した。")
   (wait)
   (text-reset 1)
   (text "［ブライア］それ以来、誰もお前には喧嘩を売らなかった。実際、　　　　　　俺もいずれ決着をつけようと思っていたがな。")
   (wait)
   (text-reset 1)
   (text
    "［ブライア］だが、そのコールが店に来た時に、お前は初めて自分　　　　　　から動き出した。そして、シーラという女をリーズか　　　　　　ら連れ出した。")
   (wait)
   (text-reset 1)
   (text
    "［ブライア］だが、お前の連れて行ったシーラという女は、既に純　　　　　　度の高いパープルスカイを打ってあった。そろそろ、　　　　　　醜いゾンビになっている頃だろうよ。")
   (wait)
   (text-reset 1)
   (text "［コール］醜いゾンビだと？　ほう、それは楽しみだな。")
   (wait)
   (text-reset 1)
   (text "［ブライア］フン、イキがっていられるのも今のうちだ。")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［ブライア］フン、イキがっていられるのも今のうちだ。") (wait) (text-reset 1))
 (seg (? (= P 6))
   (branch-random
    (</>
     (/
      (text "［　女　］なあに？　私に何か言いたいの？")
      (wait)
      (text-reset 1)
      (text "［ブライア］そう怒るなよ、どうせこいつらは死ぬんだからな。")
      (wait)
      (text-reset 1))
     (/
      (text "［コール］お前、その男に付いていて楽しいのか？")
      (wait)
      (text-reset 1)
      (text "［　女　］アンタには関係ないでしょ。")
      (wait)
      (text-reset 1))
     (/
      (text "［　女　］ブライア・・・こんな奴等、早く殺して。")
      (wait)
      (text-reset 1)
      (text "［ブライア］そう、慌てるなよ。")
      (wait)
      (text-reset 1))))
   (set-reg 132 #t))
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
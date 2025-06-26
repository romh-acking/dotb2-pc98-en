(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB011.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 49 9 55 12)
  (exec-mem 3744 1 6 15 9 23 14)
  (exec-mem 3744 1 7 25 4 41 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (if (</>
       (// (? (= 146 #t)) (image-file "B:¥GPC¥DB010.GPC") (image-mem 1 3))))
  (image-file "B:¥GPC¥DB011.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 146 #f))
        (text "［Ｂ・Ｆ］ようよう、姉ちゃん。俺達とデートしようぜぇ。")
        (wait)
        (text-reset 1)
        (text "［女の人］いやっ、放してよ！！")
        (wait)
        (text-reset 1)
        (text "［Ｂ・Ｆ］いいじゃねぇかよ、どうせ暇なんだろ？")
        (wait)
        (text-reset 1)
        (text "［コール］ブラッディフォックスの連中がまたチョッカイだしてる　　　　　な・・・。")
        (wait)
        (text-reset 1)
        (text "［女の人］やめてよ！！")
        (set-reg 146 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［Ｂ・Ｆ］姉ちゃんよぅ、俺達と楽しもうぜぇ。")
        (wait)
        (text-reset 1)
        (text "［女の人］イヤ！　放して！！")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 147 #f))
   (text "［コール］辺りの人は見て見ぬふりをしているな。相手がブラッデ　　　　　ィフォックスじゃ、その気持ちも判らん事もないが。")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 148 #f))
   (text "［コール］辺りの人達は皆、目を逸らしているな。あんな連中と関　　　　　り合いになったらタダじゃ済まされないからな。")
   (set-reg 148 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text
    "［コール］誰もあの女の人を助けようとしないのは、例え奴等をボ　　　　　コボコにしたところで必ずと言っていい程、後に仲間を　　　　　連れて仕返しがあるんだ。")
   (wait)
   (text-reset 1)
   (text "［コール］奴等のバックには、とてつもなく大きな組織があるから　　　　　警察も奴等にだけは下手に手を出せないらしいからな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 150 #t) (= 154 #t) (= 155 #f))
   (text
    "［コール］あれ？　あのバイクのタイヤに付いているペイントは、　　　　　路地裏に付着していた蘇生薬のモノに似てないか・・？　　　　　まさかこいつらがあの二人を・・・？")
   (wait)
   (text-reset 1)
   (text
    "［コール］いや、こいつらは今ここに来たばかりのようだし、二人　　　　　が殺されていた時には、バイクの音なんてしなかったよ　　　　　な・・・。")
   (set-reg 155 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 150 #t) (= 154 #t))
   (text
    "［コール］なら、あのバイクに付いているのはペンキか何かかな？　　　　　考える前に、直に聞いてみた方がいいようだな。ついで　　　　　にあの姉ちゃんも助けられるかもしれないし。")
   (wait)
   (text-reset 1)
   (text "［コール］気合入れていくか！")
   (wait)
   (text-reset 1)
   (text "［コール］おい、ちょっと聞きたいんだが。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］うるせぇ、後にしろ！！")
   (wait)
   (text-reset 1)
   (text "［女の人］た、助けて！！")
   (wait)
   (text-reset 1)
   (text "［コール］お前だお前、俺の質問に答えろ。")
   (wait)
   (text-reset 1)
   (nop@)
   (set-reg 156 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥005.MES"))
 (seg (? (= P 6) (= 149 #f))
   (text
    "［コール］仲間と思われる男が、バイクに乗ってニヤついている。　　　　　さっき聞こえたうるさい音は、あの男のバイクの音だっ　　　　　たんだな。")
   (set-reg 149 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 150 #f))
   (text "［コール］バイクに乗った男が何か言っている。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］そんな女にいつまで時間かけてるんだ？　めんどくせぇ　　　　　から、さらっちまえよ！")
   (wait)
   (text-reset 1)
   (text "［女の人］放してったら！！")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］おとなしくした方がいいぜぇ。俺だっていつまでも優し　　　　　くはないからなぁ。")
   (set-reg 150 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text
    "［コール］この辺りに住んでいれば、こんな光景はそんなに珍しく　　　　　はない。俺がこの街へ引っ越して来た時から、既にこの　　　　　辺りはブラッディフォックスの縄張りになっていたな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 151 #f))
   (text "［コール］このまま放っておいたら、あの女性が連れて行かれるの　　　　　は時間の問題だろう。")
   (wait)
   (text-reset 1)
   (text
    "［コール］だからと言って、女を助けるためにブラッディフォック　　　　　スと関り合いになってしまったら、まず半殺しの目に遭　　　　　うのがオチだしな。")
   (set-reg 151 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 152 #f))
   (text "［Ｂ・Ｆ］なかなかいい身体してんじゃねえかよ。お？")
   (wait)
   (text-reset 1)
   (text "［女の人］イヤだったら・・・放してよ！！")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］いいじゃねぇかよ、俺達と遊ぼうぜぇ。")
   (wait)
   (text-reset 1)
   (text "［コール］確かに奇麗な人だな・・・スタイルもいいし・・・ん？　　　　　これじゃあ、俺も奴等と変わらないか。")
   (set-reg 152 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 153 #f))
   (text "［コール］あの女性には悪いが、俺には今やる事があるからな。")
   (wait)
   (text-reset 1)
   (text "［女の人］いい加減にしないと警察を呼ぶわよ！！")
   (wait)
   (text-reset 1)
   (text
    "［Ｂ・Ｆ］ワハハハハハ。警察は俺達の言いなりだぜ、捕まえる事　　　　　なんて出来やしないさ。そんな事よりよ、俺達と楽しい　　　　　事しようぜ？")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (set-reg 153 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 154 #f))
   (text "［Ｂ・Ｆ］俺はお前みたいな威勢のいい女にシビれるんだよなぁ。")
   (wait)
   (text-reset 1)
   (text "［女の人］イヤっ！　放して！！")
   (wait)
   (text-reset 1)
   (text "［コール］なんか可哀想だな・・・だが、相手はブラッディフォッ　　　　　クスだ。下手に手を出すとこっちがヤバいからな。")
   (set-reg 154 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］ブラッディフォックスでも、こんな所でナンパしてると　　　　　は、あいつはかなり下っ端だろうな。")
   (wait)
   (text-reset 1))
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
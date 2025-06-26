(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB023.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 45 6 52 9)
  (exec-mem 3744 1 6 30 3 37 7)
  (exec-mem 3744 1 7 4 11 15 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB023.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 205 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_03.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_03.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 206 #f))
        (text "［バーテン］・・・・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］なんだか無愛想な店だな・・・。")
        (set-reg 206 #t)
        (wait)
        (text-reset 1))
       (// (text "［バーテン］・・・・・・。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 207 #f))
   (text "［バーテン］ご注文は・・・？")
   (wait)
   (text-reset 1)
   (text "［コール］ビールくれないか。")
   (wait)
   (text-reset 1)
   (text "［バーテン］・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］サンキュ、金はここにおくぞ。")
   (set-reg 207 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 208 #f))
   (text "［コール］ちょっと昨日の殺人事件について聞きたいんだが。")
   (wait)
   (text-reset 1)
   (text "［バーテン］・・・・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］犯人のベンという男は、ジャンキーだったと新聞に載っ　　　　　ていたが、パープル・スカイという薬と何か関係がある　　　　　のか？")
   (wait)
   (text-reset 1)
   (text "［バーテン］・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］おい、人の話しを聞いているのか？")
   (wait)
   (text-reset 1)
   (text "［バーテン］・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ったく・・・無愛想な奴だな。")
   (set-reg 208 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］なあ、ベンについて知ってる事を教えてくれよ？")
   (wait)
   (text-reset 1)
   (text "［バーテン］・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］この分じゃ、１００回聞いても返事は返ってこないだろ　　　　　うな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 213 #t) (= 214 #t))
   (text "［バーテン］お客さん、他の客に迷惑だろ。いい加減にしてくれ　　　　　　　ねえか？")
   (wait)
   (text-reset 1)
   (text "［コール］だったら昨日の事件の事を教えてくれよ。そのために　　　　　　ここまで尋ねてきたんだぜ？")
   (wait)
   (text-reset 1)
   (text
    "［バーテン］あいにく俺は今日ヘルプで入っているからな。事件の　　　　　　事は何も知らねえ。それより、どうせ聞くなら彼等に　　　　　　聞いた方が早いんじゃねえか？")
   (wait)
   (text-reset 1)
   (text "［コール］彼等とは？")
   (wait)
   (text-reset 1)
   (text "［バーテン］奥のテーブルで飲んでいるブラッディフォックスさ。　　　　　　まあ、それだけの勇気があればの話だが・・フフフ。")
   (wait)
   (text-reset 1)
   (text "［コール］ブラッディフォックスねぇ・・・。")
   (wait)
   (text-reset 1)
   (text "［バーテン］それが嫌ならおとなしく帰るんだな。ここはあんたの　　　　　　様な真面目な人間の来る所じゃねぇ。")
   (wait)
   (text-reset 1)
   (text
    "［コール］真面目な人間ねぇ・・・だけど俺はこのままノコノコと　　　　　帰る訳にはいかないんだよな。しょうがない、奴等に聞　　　　　いてみるしかないか・・・。")
   (wait)
   (text-reset 1)
   (text "［バーテン］フッ、馬鹿な奴だ・・・。ブラッディフォックスに、　　　　　　たった一人で喧嘩売るようなモンだぜ・・・。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥012.MES"))
 (seg (? (= P 6) (= 208 #t) (= 211 #t))
   (text "［コール］なあ、昨日の事件についてちょっと聞くけど・・・。")
   (wait)
   (text-reset 1)
   (text "［　客　］・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］なあ、頼むよ。力になってくれよ・・・。")
   (wait)
   (text-reset 1)
   (text "［　客　］・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ったく、この店じゃバーテンはおろか客まで無愛想な奴　　　　　ばかりだな・・・。")
   (set-reg 214 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 209 #f))
   (text "［コール］カウンターに客が座っているな。ここの常連なら、昨日　　　　　の事件の事も知っているかもしれないぞ。")
   (set-reg 209 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 210 #f))
   (text "［コール］ちょっと尋ねたいんだが・・・。")
   (wait)
   (text-reset 1)
   (text "［　客　］・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］なあ、俺の質問に答えてくれないか？")
   (wait)
   (text-reset 1)
   (text "［　客　］・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］なんだよ、無視しやがって・・・。")
   (set-reg 210 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］なあ、頼むよ。質問に答えてくれよ。")
   (wait)
   (text-reset 1)
   (text "［　客　］・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］だめだな、別の奴に聞いた方がいいや。")
   (set-reg 211 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 212 #f))
   (text "［コール］奥のテーブルでブラッディフォックスの連中が飲んでい　　　　　るな。表に停めてあったバイクはきっと奴等のものだろ　　　　　う。")
   (set-reg 212 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 213 #f))
   (text "［コール］奴等の他には客が見当たらないな。今日は空いている方　　　　　なのかな？")
   (set-reg 213 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］はやいとこ情報を入手して出て行かないとな。いい加減　　　　　もう奴等とはモメたくはないからな。")
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
        (/ (nop@) (set-reg 205 #f) (flag-save 1))
        (/ (nop@) (set-reg 205 #f) (flag-save 2))
        (/ (nop@) (set-reg 205 #f) (flag-save 3))
        (/ (nop@) (set-reg 205 #f) (flag-save 4))
        (/ (nop@) (set-reg 205 #f) (flag-save 5))
        (/ (nop@) (set-reg 205 #f) (flag-save 6))
        (/ (nop@) (set-reg 205 #f) (flag-save 7))
        (/ (nop@) (set-reg 205 #f) (flag-save 8))
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
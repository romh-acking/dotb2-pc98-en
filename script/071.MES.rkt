(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB124.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 35 4 39 6)
  (exec-mem 3744 1 6 27 10 31 13)
  (exec-mem 3744 1 7 43 5 56 13)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB124.GPC")
  (image-mem 0 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 2 23 40 238 1 2 23")
  (exec-mem 912 "C 0 40 23 18 238 1 40 23")
  (exec-mem 912 "A 1")
  (image-file "B:¥GPC¥DB125.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 2 23 54 238")
  (image-file "B:¥GPC¥DB126.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 1 2 23 54 238")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 15456 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 133 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 164 #t))
        (text "［コール］ん？　どこだ？　確かにこのトイレに入ってくるのを見　　　　　たが・・・。")
        (wait)
        (text-reset 1))
       (//
        (? (= 150 #f))
        (text "［コール］見たところ、死霊の姿はどこにもないが・・・。")
        (set-reg 150 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］トイレの中だ。鏡には俺の姿が映っている。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 164 #t) (= 153 #f))
   (text "［コール］鏡には俺の姿しか映っていない・・・。確かに死霊が、　　　　　ここに入った所を見たのだが・・・。")
   (set-reg 153 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 164 #t))
   (text "［コール］ん？　後ろの方で何か音がする・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 2 23,W 0,O 0")
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_05.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_05.USO"))))
   (sound '|| 1)
   (text "［コール］！？")
   (wait)
   (text-reset 1)
   (text "［コール］クソッ！！　隠れてやがったか！？")
   (wait)
   (text-reset 1)
   (image-file "A:¥GPC¥COUNTER.GPC")
   (image-mem 0 0)
   (load-mem "A:¥CLM¥DB125.CLM" 32768)
   (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 3 2 0)
   (exec-mem 3744 1 1 80 0 0 0)
   (exec-mem 3744 1 5 41 5 44 6)
   (exec-mem 3744 1 6 80 0 0 0)
   (exec-mem 15728 0 0 0 5 0 1)
   (exec-mem 15728 1 0 0 0 0 "Z")
   (exec-mem 15728 2 1)
   (exec-mem 15456 0)
   (exec-mem 14544 2 0)
   (exec-mem 15728 3)
   (exec-mem 3744 3 "P" 32768)
   (exec-mem 15728 4)
   (image-file "A:¥GPC¥DB_FRM3.GPC")
   (image-mem 0 0)
   (if (</>
        (//
         (? (= Z 2) (= P 6))
         (text "［コール］後ろの敵に銃を発砲する事はできない。この体勢のまま　　　　　後ろの壁に死霊をぶつけてやるぜ！！")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "［コール］ハアハア・・・なんだ、意外とあっけないな。")
         (wait)
         (text-reset 1)
         (image-file "B:¥GPC¥DB127.GPC")
         (image-mem 0 3)
         ((cmd 193) 0 "B:¥GPA¥DB127.GPA")
         (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
         (sound '|| 0)
         (if (</>
              (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
              (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
         (sound '|| 1)
         (text "［コール］お前は・・・ブラッディフォックス！？")
         (wait)
         (text-reset 1)
         (text "［Ｂ・Ｆ］ハアハア・・・ハアハア・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］そうか、お前が入口の鍵をこじ開けたんだな！？")
         (wait)
         (text-reset 1)
         (text
          "［コール］何故だ、どうして俺を襲ったんだ！？　どうしてここに　　　　　来たんだ！？　誰かに頼まれたのか！？　ダニエルに頼　　　　　まれたのか！？")
         (wait)
         (text-reset 1)
         (text "［Ｂ・Ｆ］ハアハア・・・ハアハア・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］答えろ！！　何故、俺を狙ったんだ！？")
         (wait)
         (text-reset 1)
         (text "［Ｂ・Ｆ］ニヤ・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］この野郎・・・うっ！")
         (wait)
         (text-reset 1)
         ((cmd 196) 0 0)
         ((cmd 196) 0 1)
         (delay 10 0)
         ((cmd 196) 0 2)
         (delay 6 0)
         ((cmd 196) 0 3)
         (delay 6 0)
         ((cmd 196) 0 4)
         (delay 6 0)
         ((cmd 196) 0 5)
         (delay 6 0)
         ((cmd 196) 0 6)
         (text "［コール］な、なんだ・・・おい！！")
         (wait)
         (text-reset 1)
         (text "［Ｂ・Ｆ］・・・・・・・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］な、なんて奴だ・・・。自分の舌を・・・噛み切りやが　　　　　った・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］・・・・・・・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］・・・・震えてる・・・この俺が・・・。")
         (wait)
         (text-reset 1)
         (text
          "［コール］死霊と戦っていても、決して震える事のなかったこの俺　　　　　が、死霊だけでなく、死を覚悟で来たブラッディフォッ　　　　　クスを前にして俺の全身が震えている・・・。")
         (wait)
         (text-reset 1)
         (text
          "［コール］何か物凄く大きな物が動いている・・・。今まで敵と言　　　　　えば死霊だけだったが、生身の人間が死を覚悟の上で俺　　　　　を狙っているなんて・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］と、とにかくスティーブさんに報告しないと・・・この　　　　　ままではいつか全員殺される・・・。")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         (exec-mem 912 "EXIT")
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         ((cmd 204) 100 899)
         (mes-jump "A:¥MES¥073.MES"))
        (//
         (? (= Z 2) (= P 5))
         (sound '|se | 13)
         (exec-mem 912 "PUT 1 2 23,W 0,O 0")
         (exec-mem 912 "EXIT")
         (text "［コール］こんな非常時に、俺はなんて意味の無い事を・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］ぐああああああっ！！")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (exec-mem 14544 2 2)
         (text "［コール］背中が熱い・・・何かで刺された・・・ようだ・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］みんな・・・すまな・・・い・・・・。")
         (wait)
         (text-reset 1))))
   (sound '|| 0)
   (sound '|se | 10)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (text "　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
   (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "GAME END"))))
   (text-reset 1)
   (branch-var
    S
    (</>
     (/
      (exec-mem 9920 0 6 6 113 64 0)
      (nop@)
      (set-reg 133 #f)
      (mes-jump "A:¥MES¥071.MES"))
     (/
      (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
      (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
      (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
      (loop (wait))))))
 (seg (? (= P 5) (= 151 #f))
   (text "［コール］大きな鏡が正面に張ってあるな。こうして銃を持ってい　　　　　ると、まるでギャングみたいだな。")
   (set-reg 151 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 152 #f))
   (text "［コール］鏡には俺の姿しか映っていない。後ろから死霊が現れて　　　　　も、この位置なら一発で判るな。")
   (set-reg 152 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］久しぶりに、自分の姿を見たような気がするな・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 164 #t))
   (text "［コール］便器の付近には死霊らしい姿は見えないな・・・。だが　　　　　どこかに居るという事は確かだ。十分に注意して調べよ　　　　　う。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 154 #f))
   (text "［コール］小便用の便器が並んでいるな・・・。まず、こんな所に　　　　　死霊がいるとは思えないな。")
   (set-reg 154 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］便器の側には死霊の姿は見えないな。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 164 #t))
   (text "［コール］変だな・・・どこにも死霊の姿が見えない・・・。死霊　　　　　が隠れているとも思えないし、一体どこにいるんだ？")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 155 #f))
   (text "［コール］今、俺が入って来たトイレの出入口が映っているな。")
   (set-reg 155 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 156 #f))
   (text
    "［コール］トイレの出入口が鏡に映っている。ここから、いきなり　　　　　死霊が飛び込んで来たら一溜まりもないな。十分に注意　　　　　しないといけないぞ。")
   (set-reg 156 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］トイレの入口には蛍光燈がついていないため、ここから　　　　　では薄暗くてハッキリとみえないな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 164 #t))
   (exec-mem 6064 2 1)
   (text "［コール］このトイレに入る所を確かに見たんだ。このまま黙って　　　　　出ていく訳にはいかないな。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］よし、一旦表に戻ろう。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "EXIT")
   (exec-mem 6064 3)
   (nop@)
   (set-reg 127 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥068.MES"))
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
        (/ (nop@) (set-reg 133 #f) (flag-save 1))
        (/ (nop@) (set-reg 133 #f) (flag-save 2))
        (/ (nop@) (set-reg 133 #f) (flag-save 3))
        (/ (nop@) (set-reg 133 #f) (flag-save 4))
        (/ (nop@) (set-reg 133 #f) (nop@) (set-reg 133 #f) (flag-save 5))
        (/ (nop@) (set-reg 133 #f) (flag-save 6))
        (/ (nop@) (set-reg 133 #f) (flag-save 7))
        (/ (nop@) (set-reg 133 #f) (flag-save 8))
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
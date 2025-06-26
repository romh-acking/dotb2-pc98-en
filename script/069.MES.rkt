(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB119.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 22 8 37 14)
  (exec-mem 3744 1 6 24 3 38 8)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB119.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 133 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (text "［コール］突き当たりだ・・・。これ以上、先に進む事はできそう　　　　　もないな。")
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 134 #f))
   (text "［コール］足場が悪いため、階段の途中で死霊に襲われないように　　　　　しないとな。下まで落ちたら大ケガするぞ。")
   (set-reg 134 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 135 #f))
   (text "［コール］辺りには何の気配も感じられないな・・・。死霊はここ　　　　　には居ないようだな。")
   (set-reg 135 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］階段を登る俺の足音だけが響いているな。この辺りには　　　　　死霊が居なさそうだ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 136 #f))
   (text "［コール］正面にシャッターが閉められているな。昨日、スティー　　　　　ブさんが、研究所のシャッターを全て閉めたと言ってい　　　　　た。")
   (wait)
   (text-reset 1)
   (text "［コール］こいつも、その時に閉められたものだろう。")
   (set-reg 136 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 137 #f))
   (text "［コール］シャッターが開かれていないという事は、この先には死　　　　　霊が入り込んでいないようだな。")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］シャッターの上部には、赤い非常燈がついている。これ　　　　　以上進む事はできないな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 138 #f))
   (exec-mem 6064 2 1)
   (text "［コール］一度、引き返すか・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ん！？")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB120.GPC")
   (image-mem 0 3)
   (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
   (exec-mem 912 "C 0 2 23 40 238 1 2 23")
   (exec-mem 912 "C 0 40 23 18 238 1 40 23")
   (exec-mem 912 "A 1")
   (image-file "B:¥GPC¥DB120A.GPC")
   (image-mem 1 3)
   (exec-mem 912 "GET 0 2 23 54 238")
   (exec-mem 912 "A 0,S 0")
   ((cmd 193) 0 "B:¥GPA¥DB120.GPA")
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (sound '|| 0)
   (sound '|se | 4)
   (sound '|| 1)
   (text "［コール］誰だ！！")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 2 23,W 0,O 0")
   (exec-mem 912 "EXIT")
   (text "［死　霊］ＢＲＡＩＮＮＮＮＮ！！！")
   (wait)
   (text-reset 1)
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_06.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_06.USO"))))
   (sound '|| 1)
   (load-mem "A:¥CLM¥DB120A.CLM" 32768)
   (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 3 2 0)
   (exec-mem 3744 1 1 80 0 0 0)
   (exec-mem 3744 1 5 30 4 33 5)
   (image-file "A:¥GPC¥COUNTER.GPC")
   (image-mem 0 0)
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
         (? (= Z 2) (= P 5))
         ((cmd 196) 0 0)
         ((cmd 196) 0 1)
         (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 0 2)
         (delay 2 0)
         ((cmd 196) 0 3)
         (delay 2 0)
         ((cmd 196) 0 4)
         (text "［コール］うおっ・・・")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text
          "［コール］危なかった・・・。あんな足場の悪い所では、やたらに　　　　　銃を撃たない方がいいな。もし１発でヒットさせてなか　　　　　ったら、バランスを崩して転げ落ちていただろう。")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         (nop@)
         (set-reg 138 #t)
         (set-reg 133 #f)
         (nop@)
         (set-reg 127 #f)
         (mes-jump "A:¥MES¥068.MES"))
        (//
         (text "［コール］チッ！　バランスが！！")
         (wait)
         (text-reset 1)
         (text "［死　霊］ＧＵＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "［コール］う、うわああああああああ！！！")
         (wait)
         (text-reset 1)
         (sound '|| 0)
         (sound '|se | 10)
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
            (mes-jump "A:¥MES¥069.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait)))))))))
 (seg (? (= P 1))
   (text "［コール］さっき俺が倒した死体の側を通らないと、フロアーには　　　　　戻れないんだよな・・・なんか嫌だなぁ。")
   (wait)
   (text-reset 1)
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
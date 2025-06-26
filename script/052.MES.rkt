(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB084.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 26 13 46 15)
  (exec-mem 3744 1 6 4 6 8 13)
  (exec-mem 3744 1 7 43 6 56 12)
  (exec-mem 3744 1 8 10 7 19 12)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB083.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB084.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 107 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_04.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_04.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 108 #f))
        (text "［コール］強烈な死臭が漂っているな・・・。これでは、あまり長　　　　　居はできないぞ。")
        (wait)
        (text-reset 1)
        (text "［コール］それにしても・・・スティーブさんの姿が見えないな。")
        (set-reg 108 #t)
        (wait)
        (text-reset 1))
       (//
        (text
         "［コール］ここは３２分署の１階だ。警官や一般人の死体がたくさ　　　　　ん転がっている。早くスティーブさんを見つけて、こん　　　　　な所は脱出したいな。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 109 #f))
   (text "［コール］死体の中には警官も混ざっているようだ。どの警官も、　　　　　銃を持っている警官が一人もいないようだな。")
   (wait)
   (text-reset 1)
   (text "［コール］きっと、突然襲って来た死霊を前に銃を抜く隙もなかっ　　　　　たのだろう。")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 110 #f))
   (text
    "［コール］これらの死体から出る死臭が、この部屋全体にこもって　　　　　いる。このままずっと放っておいたら、伝染病が起きて　　　　　しまう恐れがあるな。")
   (wait)
   (text-reset 1)
   (text
    "［コール］スティーブさんは、軍が来るまでに３日かかると言って　　　　　いたが、軍が来てからでは、きっとダニエルという男は　　　　　その騒ぎに紛れて行方をくらませてしまうだろう。")
   (wait)
   (text-reset 1)
   (text "［コール］その前に何とか奴を捜し出さないといけないな。")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 111 #f))
   (text "［コール］２年前もそうだったが、この人間の死体というものは、　　　　　いくら見ていても、さすがに見慣れるものではないな。")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text
    "［コール］死体の中には、警官の他に一般の女性のものも見える。　　　　　脳ミソを目当てに人間を襲う死霊には、相手が男だろう　　　　　が女だろうが見さかいなく食い殺すだろう。")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 113 #f))
   (text "［コール］署内に設置してある自動販売機だが、既に壊されてしま　　　　　ったのか機能していない。")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 114 #f))
   (text
    "［コール］自動販売機には、何かにぶつかったのか大きな傷跡が見　　　　　える。これを見ただけでも、警察署が死霊に襲われた時　　　　　の凄まじさが想像できるな。")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］缶ジュースの自動販売機のようだな。完全に壊れている　　　　　ようだ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 115 #f))
   (text "［コール］俺が入って来た入口が見える。ドアのガラスが大きく割　　　　　られているな。")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 116 #f))
   (text "［コール］この警察署の出入口は、あのドアしかないようだ。もし　　　　　死霊に襲われたら、あそこから脱出するしかないな。")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］外の冷たい風が、割れたガラスを通ってこのフロアーに　　　　　吹き抜けて来る。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 117 #f))
   (text "［コール］２階に通ずる階段だな。スティーブさんの居る捜査課へ　　　　　行った時も、確かあの階段を使ったんだ。")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 118 #f))
   (text
    "［コール］スティーブさんは、資料を取りにここに来ている筈だ。　　　　　たぶん、あそこの階段を登った所の捜査課でファイルを　　　　　探しているのだろう。")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］階段の上には捜査課があり、スティーブさんのデスクも　　　　　その部屋にあるんだ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 112 #t) (= 116 #t) (= 118 #t))
   (exec-mem 6064 2 1)
   (text "［コール］よし、２階に登ろう。きっとスティーブさんは捜査課に　　　　　いる筈だ。")
   (wait)
   (text-reset 1)
   (text "［コール］ん！？")
   (wait)
   (text-reset 1)
   (text "［コール］今、目の前の死体が少し動いたような気がしたが・・・　　　　　・・・気のせいか？")
   (wait)
   (text-reset 1)
   (text "［コール］うっ！！")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB083.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB085.GPC")
   (image-mem 1 3)
   ((cmd 193) 0 "B:¥GPA¥DB085A.GPA")
   ((cmd 193) 1 "B:¥GPA¥DB085B.GPA")
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_06.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_06.USO"))))
   (sound '|| 1)
   (text "［死　霊］ＧＵＵＵＵＵＲＹＡＡＡＡＡ！！！")
   (wait)
   (text-reset 1)
   (text "［コール］こいつら・・・蘇生したな！！")
   (wait)
   (text-reset 1)
   (text "［死　霊］ＧＡＡＡＡＡＵＵＵＵＵ！！！")
   (wait)
   (text-reset 1)
   (image-file "A:¥GPC¥COUNTER.GPC")
   (image-mem 0 0)
   (load-mem "A:¥CLM¥DB085.CLM" 32768)
   (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 3 2 0)
   (exec-mem 3744 1 5 11 4 14 6)
   (exec-mem 3744 1 6 21 3 24 5)
   (exec-mem 3744 1 7 34 5 37 7)
   (exec-mem 3744 1 8 47 3 50 5)
   (exec-mem 15728 0 0 0 5 0 1)
   (exec-mem 15728 1 0 0 0 0 "Z")
   (exec-mem 15728 2 1)
   (exec-mem 15456 0)
   (exec-mem 14544 2 0)
   (exec-mem 15728 3)
   (exec-mem 3744 3 "P" 32768)
   (exec-mem 15728 4)
   (if (</> (// (? (= Z 0)) (nop@) (set-var P 0))))
   (if (</> (// (? (= Z 1)) (nop@) (set-var P 0))))
   (if (</>
        (//
         (? (= P 5))
         ((cmd 196) 0 0)
         ((cmd 196) 0 1)
         (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 0 2)
         (delay 2 0)
         ((cmd 196) 0 3)
         (delay 2 0)
         ((cmd 196) 0 4)
         (delay 2 0)
         ((cmd 196) 0 5)
         (nop@)
         (set-var P 1))))
   (if (</>
        (//
         (? (= P 6))
         ((cmd 196) 1 0)
         ((cmd 196) 1 1)
         (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 1 2)
         (delay 2 0)
         ((cmd 196) 1 3)
         (delay 2 0)
         ((cmd 196) 1 4)
         (delay 2 0)
         ((cmd 196) 1 5)
         (set-var P 1))))
   (if (</>
        (//
         (? (= P 7))
         ((cmd 193) 0 "B:¥GPA¥DB085C.GPA")
         ((cmd 196) 0 0)
         ((cmd 196) 0 1)
         (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 0 2)
         (delay 2 0)
         ((cmd 196) 0 3)
         (delay 2 0)
         ((cmd 196) 0 4)
         (delay 2 0)
         ((cmd 196) 0 5)
         (nop@)
         (set-var P 1))))
   (if (</>
        (//
         (? (= P 8))
         ((cmd 193) 1 "B:¥GPA¥DB085D.GPA")
         ((cmd 196) 1 0)
         ((cmd 196) 1 1)
         (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 1 2)
         (delay 2 0)
         ((cmd 196) 1 3)
         (delay 2 0)
         ((cmd 196) 1 4)
         (delay 2 0)
         ((cmd 196) 1 5)
         (nop@)
         (set-var P 1))))
   (exec-mem 912 "EXIT")
   (image-file "A:¥GPC¥DB_FRM3.GPC")
   (image-mem 0 0)
   (if (</>
        (//
         (? (= P 1))
         (text "［コール］くそっ！！　一体倒したのはいいが弾切れだ！！")
         (wait)
         (text-reset 1)
         (text "［コール］こんな時に何てザマだ！！　とにかくこの場を脱出しな　　　　　ければ！！")
         (wait)
         (text-reset 1)
         (text "［コール］どこへ逃げる！？")
         (wait)
         (text-reset 1))
        (//
         (text "［死　霊］ＧＷＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (text "［コール］う、うわああああああっ！！")
         (wait)
         (text-reset 1)
         (exec-mem 912 "EXIT")
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
            (set-reg 183 #f)
            (mes-jump "A:¥MES¥052.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait))))))))
   (image-file "A:¥GPC¥COUNTER.GPC")
   (image-mem 0 0)
   (load-mem "A:¥CLM¥DB084.CLM" 32768)
   (exec-mem 3744 1 5 80 0 0 0)
   (exec-mem 3744 1 6 4 6 9 13)
   (exec-mem 3744 1 7 43 6 57 12)
   (exec-mem 3744 1 8 10 7 20 12)
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
         (? (= Z 2) (= P 8))
         (text "［コール］よし、ひとまず２階に上がって脱出の方法を考えよう！")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥053.MES"))
        (//
         (text "［コール］よし、こっちだ！！")
         (wait)
         (text-reset 1)
         (text "［死　霊］ＧＵＵＵＵＵＲＹＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (text "［コール］うっ、うわあああああああ！！")
         (wait)
         (text-reset 1)
         (exec-mem 912 "EXIT")
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
            (set-reg 107 #f)
            (mes-jump "A:¥MES¥052.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait)))))))))
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
        (/ (nop@) (set-reg 107 #f) (flag-save 1))
        (/ (nop@) (set-reg 107 #f) (flag-save 2))
        (/ (nop@) (set-reg 107 #f) (flag-save 3))
        (/ (nop@) (set-reg 107 #f) (flag-save 4))
        (/ (nop@) (set-reg 107 #f) (flag-save 5))
        (/ (nop@) (set-reg 107 #f) (flag-save 6))
        (/ (nop@) (set-reg 107 #f) (flag-save 7))
        (/ (nop@) (set-reg 107 #f) (flag-save 8))
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
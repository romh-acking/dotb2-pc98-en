(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB166.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 40 7 56 11)
  (exec-mem 3744 1 6 18 11 38 15)
  (exec-mem 3744 1 7 28 7 34 8)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB166.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 114 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 115 #f))
        (text "［コール］夜の墓地というのはもいつ来ても薄気味悪いものだな。")
        (set-reg 115 #t))
       (// (text "［コール］早く血清を探さないといけないな。"))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 116 #f))
   (text "［コール］道の脇には墓標がたくさん立っている。まるで俺の事を　　　　　見ているようで、どうも落ち着かないな。")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 117 #f))
   (text "［コール］この街が崩壊してから２年が経っている。さすがに、も　　　　　うこのあたりに死霊が残っているとは思えないな。")
   (wait)
   (text-reset 1)
   (text "［コール］だが、出ないと判っているのにさっきから妙な胸騒ぎが　　　　　する・・・。")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］墓標には、「")
   (branch-random
    (</>
     (/ (text "ステラ・トレシール"))
     (/ (text "シード・レリックス"))
     (/ (text "メリーニ・ナネッツ"))
     (/ (text "ロバート・ギブソン"))
     (/ (text "ジョナサン・ロング"))))
   (text "」と名前が彫られてい　　　　　る。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 118 #f))
   (text "［コール］一本道がずっと続いているな・・・。確かこの辺りは、　　　　　まだジャックから逃げている途中だったんだ。")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 119 #f))
   (text "［コール］今夜は曇っているとはいえ、まだ月が出ているから道が　　　　　見えるな。")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 120 #f))
   (text "［コール］ドクの言ってた血清が、２年経った今でも残っていてく　　　　　れればいいが・・・。")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 121 #f))
   (text
    "［コール］かなり歩いているから疲れてきたな・・・ジャックに追　　　　　いかけられた時は、ドクと二人で無我夢中で逃げていた　　　　　んだな。")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text
    "［コール］ハアハア・・・これでは血清を拾っても、今来た道を戻　　　　　るのも大変そうだな。・・・だけど、車で来ているから　　　　　やっぱり帰りは門まで戻らないといけないな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 122 #f))
   (text "［コール］この道は、ずっと先まで続いているな。奥の方までは、　　　　　暗くてハッキリと見えない。")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 123 #f))
   (text
    "［コール］ドクがつまずいたのは、まだずっと先だったな・・・。　　　　　・・・そういえば、確かあの時は裏口から脱出して俺の　　　　　アパートに向かったんだっけ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］これだったら、最初から裏口から墓地に入った方が早か　　　　　ったんじゃないか・・・失敗したな。")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］ドクのつまずいた場所は、確かもっと先だったな・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 117 #t) (= 121 #t) (= 123 #t) (= 126 #t))
   (exec-mem 6064 2 1)
   (text "［コール］あ、あれ？")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (image-file "B:¥GPC¥DB168.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB168B.GPC")
   (image-mem 1 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (text "［コール］行き止まりか・・・道を間違えたのかな・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］少し戻ってみるか・・・・ん？")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB167.GPC")
   (image-mem 0 3)
   ((cmd 193) 0 "B:¥GPA¥DB167.GPA")
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_05.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_05.USO"))))
   (sound '|| 1)
   (text "［コール］しっ、死霊だ！！")
   (wait)
   (text-reset 1)
   (text "［死　霊］ＧＵＵＵＵＵＵ・・・。")
   (wait)
   (text-reset 1)
   (image-file "A:¥GPC¥COUNTER.GPC")
   (image-mem 0 0)
   (load-mem "A:¥CLM¥DB167.CLM" 32768)
   (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 3 2 0)
   (exec-mem 3744 1 1 80 0 0 0)
   (exec-mem 3744 1 5 29 5 35 8)
   (exec-mem 15728 0 0 1 0 0 1)
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
         (delay 8 0)
         ((cmd 196) 0 4)
         (delay 4 0)
         ((cmd 196) 0 5)
         (delay 8 0)
         ((cmd 196) 0 6)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "［死　霊］ＧＡＡＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (text "［コール］こ、こいつ・・・不死身か！？")
         (wait)
         (text-reset 1)
         (text "［死　霊］ＧＵＡＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (text "［コール］うっ、うわあああああああ！！")
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
            (set-reg 114 #f)
            (mes-jump "A:¥MES¥099.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait))))))
        (//
         (? (= Z 2))
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "［死　霊］ＧＡＡＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (text "［コール］く、クソッ・・・外しちまった・・・。")
         (wait)
         (text-reset 1)
         (text "［死　霊］ＧＵＡＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (text "［コール］うっ、うわあああああああ！！")
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
            (set-reg 114 #f)
            (mes-jump "A:¥MES¥099.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait))))))
        (//
         (text "［コール］ちょっと待て・・・様子がおかしいぞ・・・。")
         (wait)
         (text-reset 1)
         (text "［死　霊］ＧＵＵＵＵＵＵ・・・　・・・　・・")
         (wait)
         (text-reset 1)
         (text "［コール］ん！？")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         (text "［死　霊］・・・・・・・・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］な、なんだ・・・こいつ・・・。")
         (wait)
         (text-reset 1)
         (sound '|| 0)
         (text "［コール］全然、襲って来る様子がないぞ・・・どういう事だ！？")
         (wait)
         (text-reset 1)
         (text "［コール］俺に気付いていないのか・・・いや、目が見えなくとも　　　　　人間の居場所は本能的に判る筈だ・・・。")
         (wait)
         (text-reset 1)
         (text "［死　霊］ＧＵＵＵ・・・　・・")
         (wait)
         (text-reset 1)
         (text "［コール］・・・どうであれ、死霊による被害をこれ以上広ませな　　　　　いためにも、この死霊は殺しておいた方がいいだろう。")
         (wait)
         (text-reset 1)
         ((cmd 196) 0 0)
         ((cmd 196) 0 1)
         (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 0 2)
         (delay 2 0)
         ((cmd 196) 0 3)
         (delay 8 0)
         ((cmd 196) 0 4)
         (delay 4 0)
         ((cmd 196) 0 5)
         (delay 8 0)
         ((cmd 196) 0 6)
         (text "［コール］さて、こんな所でモタモタしてられない。早く血清を探　　　　　さないとな。")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥100.MES")))))
 (seg (? (= P 1) (= 124 #f))
   (exec-mem 6064 2 1)
   (text "［コール］ハアハア・・・ハアハア・・・。")
   (set-reg 124 #t)
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
 (seg (? (= P 1) (= 125 #f))
   (exec-mem 6064 2 1)
   (text "［コール］かなり歩いているが、まだ着かないのか・・・。")
   (set-reg 125 #t)
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
 (seg (? (= P 1) (= 126 #f))
   (exec-mem 6064 2 1)
   (if (</> (// (? (= X 4)) (nop@) (set-reg 126 #t))))
   (text "［コール］ハアハア・・・ハアハア・・・。")
   (inc-var X 1)
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］ハアハア・・・ハアハア・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
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
        (/ (nop@) (set-reg 114 #f) (flag-save 1))
        (/ (nop@) (set-reg 114 #f) (flag-save 2))
        (/ (nop@) (set-reg 114 #f) (flag-save 3))
        (/ (nop@) (set-reg 114 #f) (flag-save 4))
        (/ (nop@) (set-reg 114 #f) (flag-save 5))
        (/ (nop@) (set-reg 114 #f) (flag-save 6))
        (/ (nop@) (set-reg 114 #f) (flag-save 7))
        (/ (nop@) (set-reg 114 #f) (flag-save 8))
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
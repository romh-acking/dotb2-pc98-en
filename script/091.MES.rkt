(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB144.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 8 2 14 15)
  (exec-mem 3744 1 6 20 5 23 12)
  (exec-mem 3744 1 7 24 7 27 11)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB144.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 158 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 169 #f))
        (text "［コール］階段を登ると、廊下に出たが・・・スティーブさんの姿　　　　　はどこにも見えないな・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］どこかの部屋に入っているかもしれないし、こうなった　　　　　ら、片っ端から部屋を調べてみた方がよさそうだな。")
        (wait)
        (text-reset 1)
        (text "［コール］さて、どの部屋を調べようかな。")
        (set-reg 169 #t)
        (wait)
        (text-reset 1))
       (//
        (? (= 170 #f))
        (sound '|| 2)
        ((cmd 209) 0 5)
        (image-file "B:¥GPC¥DB147.GPC")
        (image-mem 0 3)
        (sound '|| 0)
        (sound '|se | 5)
        ((cmd 209) 1 5)
        (text
         "［ダニエル］フフフフ・・・ノコノコ一人でやって来るとは、お前　　　　　　もとんだ大馬鹿者だな。まぁ、こちらから出向く手間　　　　　　が省けて助かったがね・・・。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］き、貴様・・・！！")
        (wait)
        (text-reset 1)
        (text
         "［ダニエル］私がピレインに送ったブラッディフォックスは、私か　　　　　　らのほんの挨拶だ。あんな男には最初から期待はして　　　　　　いない。")
        (wait)
        (text-reset 1)
        (text "［ダニエル］全てはお前をここにおびき出す作戦だったのだよ。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］！？")
        (wait)
        (text-reset 1)
        (text
         "［ダニエル］生き残った人間がピレインに居る以上、あんな死をも　　　　　　恐れぬ刺客があらわれたら、すぐにでも私を殺しに来　　　　　　ると踏んだのだ。")
        (wait)
        (text-reset 1)
        (text "［ダニエル］私の方が一枚上手だったようだな・・・。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］！？")
        (wait)
        (text-reset 1)
        (text
         "［ダニエル］この薬の事はもう知っているだろう。そう、ブラッデ　　　　　　ィフォックスの中でパープル・スカイと言われて出ま　　　　　　わっているものだ。")
        (wait)
        (text-reset 1)
        (text
         "［ダニエル］この３週間放置したこのパープル・スカイは、血管に　　　　　　注入してから２０分後には完全に死に至る。それは街　　　　　　の人間をもって既に実験済みだ。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］何の罪もない人々をお前は・・・！！")
        (wait)
        (text-reset 1)
        (text "［ダニエル］私の大切な研究を、お前のような男にとやかく言われ　　　　　　たくはない。")
        (wait)
        (text-reset 1)
        (text
         "［スティーブ］研究だと！？　蘇生薬をパープル・スカイと改良し　　　　　　　ブラッディフォックスに売りさばき、罪もない人を　　　　　　　苦しめる・・・それが研究なのか！？")
        (wait)
        (text-reset 1)
        (text
         "［ダニエル］まだまだ蘇生薬には不可解な謎が秘めてある。もっと　　　　　　研究を重ねれば、今まで以上にすばらしい成果が生ま　　　　　　れるのだ。")
        (wait)
        (text-reset 1)
        (text "［ダニエル］クーガーなど足元にも及ばぬ、神の力を超越したドラ　　　　　　ッグが私の手で蘇るのだ！！")
        (wait)
        (text-reset 1)
        (text "［スティーブ］悪魔め！！")
        (wait)
        (text-reset 1)
        (text "［ダニエル］そのためには多少の犠牲は仕方ない。お前にも、その　　　　　　サンプルとなってもらうがね。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］な、何をする！！")
        (wait)
        (text-reset 1)
        (text "［ダニエル］お前はこの薬によって残された２０分間を、恐怖に脅　　　　　　えながら死んでいくのだ。")
        (wait)
        (text-reset 1)
        (text "［ダニエル］ん！？")
        (wait)
        (text-reset 1)
        (text "［ダニエル］フッ・・・ネズミがもう一匹現れたか・・・。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］コール！！　来るな！！")
        (wait)
        (text-reset 1)
        (text "［ダニエル］お前の始末は後に廻してやる。そこでゆっくりとあの　　　　　　ガキが死ぬ所を見ているがいい。")
        (set-reg 170 #t)
        (wait)
        (text-reset 1)
        (sound '|| 2)
        ((cmd 209) 0 5)
        (image-file "B:¥GPC¥DB144.GPC")
        (image-mem 0 3)
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 3)
        ((cmd 209) 1 5))))
  (loop
   (text-frame 15 298 74 356)
   (text-reset 1)
   (text "［コール］さて、どこへ行こうかな？")
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (text-reset 1)
   (seg-call)))
 (seg (? (= P 5) (= 171 #f))
   (text "［コール］この部屋にスティーブさんはいるのかな？")
   (set-reg 171 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥092.MES"))
 (seg (? (= P 5))
   (text "［コール］ここは研究室だったな。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥092.MES"))
 (seg (? (= P 6) (= 172 #f))
   (text "［コール］ここは何の部屋だろう・・・。")
   (set-reg 172 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥093.MES"))
 (seg (? (= P 6))
   (text "［コール］この部屋は倉庫だったな。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥093.MES"))
 (seg (? (= P 7) (= 173 #f))
   (text "［コール］この部屋を調べてみるか・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］あれ？　開かないや・・・鍵がかかってるのかな。")
   (set-reg 173 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 174 #f))
   (text "［コール］この部屋には入れないようだな。中の様子はどうなって　　　　　いるんだろう・・・ドアに耳を近づけてみると・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］駄目だ、何も聞こえないや。")
   (wait)
   (text-reset 1)
   (text "［コール］仕方ない、諦めるか。")
   (set-reg 174 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text
    "［コール］奥の部屋には鍵がかかっているため、中を調べる事はで　　　　　きないな。物音もしないし、人の気配もないから調べる　　　　　必要もないだろう。")
   (wait)
   (text-reset 1))
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
        (/ (nop@) (set-reg 158 #f) (flag-save 1))
        (/ (nop@) (set-reg 158 #f) (flag-save 2))
        (/ (nop@) (set-reg 158 #f) (flag-save 3))
        (/ (nop@) (set-reg 158 #f) (flag-save 4))
        (/ (nop@) (set-reg 158 #f) (flag-save 5))
        (/ (nop@) (set-reg 158 #f) (flag-save 6))
        (/ (nop@) (set-reg 158 #f) (flag-save 7))
        (/ (nop@) (set-reg 158 #f) (flag-save 8))
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB145.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 11 29 13)
  (exec-mem 3744 1 6 47 13 55 15)
  (exec-mem 3744 1 7 7 2 26 3)
  (exec-mem 3744 1 8 28 10 43 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB145.GPC")
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
        (? (= 175 #f))
        (text "［コール］うっ・・・死臭が漂っているな・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］ここは見た所、研究室といったところか・・・。")
        (set-reg 175 #t)
        (wait)
        (text-reset 1))
       (//
        (text
         "［コール］この部屋に入ると、死臭がツンと鼻にくるな・・・・。　　　　　この匂いだけは、いくら俺でも未だに慣れる事ができな　　　　　いな。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 176 #f))
   (text
    "［コール］ベッドに掛かっているシーツから、人間の手が出ている　　　　　な・・・。全然動く気配がない所を見ると、こいつは完　　　　　全に死んでいるようだ。")
   (set-reg 176 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 177 #f))
   (text
    "［コール］ベッドの周りにはたくさんの血が飛び散っている。きっ　　　　　と、ここでダニエルはこれらの死体を使って、自らの手　　　　　で人体実験をしていたのだろう。")
   (set-reg 177 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text
    "［コール］シーツは、このまま掛けておいた方がいいだろう。ダニ　　　　　エルの手でミンチになっている死体をわざわざ眺める程　　　　　俺はゲテモノ好きではないからな。")
   (set-reg 178 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 179 #f))
   (text "［コール］ん？　こんな部屋に鉄格子があるぞ。")
   (wait)
   (text-reset 1)
   (text "［コール］中には男の死体が一体か・・・。何かとてつもなく嫌な　　　　　予感がするな・・・。")
   (set-reg 179 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 180 #f))
   (text "［コール］この鉄格子から見て、ダニエルは蘇生薬を使って生き返　　　　　らせた死霊をここで研究していたのかもしれないな。")
   (wait)
   (text-reset 1)
   (text "［コール］そしてその研究の成果がパープル・スカイに・・・。")
   (set-reg 180 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 181 #f))
   (text "［コール］あそこに倒れている死体も、ダニエルに蘇生薬を何度も　　　　　打たれていたのだろう。")
   (wait)
   (text-reset 1)
   (text "［コール］死んでは蘇生され、死んでは蘇生されていくうちに、終　　　　　いには全身が拒絶反応を起こして動けなくなるんだ。")
   (set-reg 181 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text
    "［コール］まるで奴隷を入れておく牢のようだ。あの死体を見てい　　　　　ると、ダニエルという男の蘇生薬に対する執念が感じら　　　　　れる。")
   (set-reg 182 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 183 #f))
   (text "［コール］大きなライトがベッドの真上に設置してある。電源は落　　　　　ちているようだな。")
   (set-reg 183 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］薬品の研究所にしては、かなり大掛かりなライトだな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 178 #t) (= 182 #t) (= 184 #t))
   (text "［コール］ベッドの死体にレーザーメス・・・まるでここは病院の　　　　　手術室のようだな・・・。")
   (set-reg 185 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 184 #f))
   (text "［コール］ん？　これと同じ物を前にテレビで見た事があるぞ。　　　　　　確か・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］そうだ、病院の手術に使われるレーザーメスに間違いな　　　　　い。思い出したぞ。")
   (set-reg 184 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］こんな高価なレーザーメスが、どうして薬品の研究室な　　　　　んかに置いてあるんだ？")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］一旦、廊下に戻ろう。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥091.MES"))
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
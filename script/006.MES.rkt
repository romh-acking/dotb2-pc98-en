(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB013.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 4 16 9)
  (exec-mem 3744 1 6 41 10 48 13)
  (exec-mem 3744 1 7 25 5 37 10)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB013.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 163 #f))
        (text "［コール］ベイサイド研究所の入口だ。俺は２年前、ここをアジト　　　　　にしていたグールという男と対決したんだ。")
        (wait)
        (text-reset 1)
        (text "［コール］奴は蘇生薬を使って、たくさんの死体を蘇らせてこの街　　　　　の住民を次々に殺していった・・・。")
        (wait)
        (text-reset 1)
        (text
         "［コール］俺は奴の口に手榴弾を突っ込んで殺そうとしたが、奴の　　　　　身体はここの所長の手によって、既にヒューマノイドに　　　　　されていた。")
        (wait)
        (text-reset 1)
        (text
         "［コール］最後には、ハンターの仲間であったキャッシーが自らを　　　　　犠牲にしプラスチック爆弾でグールをあの世に送ったの　　　　　だが、結局俺と知り合った奴は全てグールに殺された。")
        (wait)
        (text-reset 1)
        (text
         "［コール］当時、ここの所長は、グールの身体を蘇生薬の実験に使　　　　　っていくうちに、薬によって抵抗力がなくなって腐り落　　　　　ちてしまった部分をアンドロイドにしていった。")
        (wait)
        (text-reset 1)
        (text
         "［コール］そのうちに、グールの身体は完全なヒューマノイドにな　　　　　ってしまった。そして己の力に気付いたグールは、その　　　　　所長を殺して自ら野望を企んだのだ。")
        (wait)
        (text-reset 1)
        (text "［コール］だが、グールが居なくなった今、この研究所はただの廃　　　　　墟になっている。")
        (set-reg 163 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］ここはベイサイド研究所の入口だ。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 164 #f))
   (text "［コール］大きな木が茂っている。手入れなんてしていないから、　　　　　枝が伸び放題だな。")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 165 #f))
   (text
    "［コール］夜の木というものは無気味なんだよな。特にこんな所に　　　　　生えているのを見ると、建物を無気味に演出しているよ　　　　　うだぜ。")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［コール］ボーっと木なんて見ている時間なんかない。") (wait) (text-reset 1))
 (seg (? (= P 6) (= 166 #f))
   (text "［コール］入口の脇にドラムカンが見えるな。ちょっと調べてみる　　　　　か・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］やはり中は空洞か・・・。ドラムカンの中に蘇生薬が入　　　　　っていると思ったが、俺の思い違いだったな。")
   (set-reg 166 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］あのドラムカンの中は空洞だったな。もう調べる必要は　　　　　ないだろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 167 #f))
   (text "［コール］ガラスが割れまくっているところを見ると、この建物は　　　　　ずっと使われていないようだな。")
   (set-reg 167 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 168 #f))
   (text
    "［コール］確かこの建物は、この入口から中に入るとすぐが工場に　　　　　なっていたな。ブラッディフォックスのたまり場にして　　　　　は最適かもしれない。")
   (set-reg 168 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 169 #f))
   (text
    "［コール］中の様子は薄暗くて見えないが、ブラッディフォックス　　　　　の連中がどこに潜んでいるか分からない。十分注意して　　　　　行動しないとな。")
   (set-reg 169 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］どうせ中は電気もきていないだろう。月の光だけが頼り　　　　　だな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］どこにブラッディフォックスが潜んでいるか分からない　　　　　からな。十分注意しよう。")
   (nop@)
   (set-reg 170 #t)
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥007.MES"))
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB075.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 39 5 46 8)
  (exec-mem 3744 1 6 40 8 47 11)
  (exec-mem 3744 1 7 48 3 56 5)
  (exec-mem 3744 1 8 4 10 11 13)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB075.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 150 #f))
        (text "［コール］む、酷い・・・。これがシャッフル・フードか・・・。")
        (set-reg 150 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［コール］ここがシャッフル・フードだとは、未だに信じられない　　　　　・・・キャサリン、そうだ、キャサリンは無事なのか？")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 151 #f))
   (text "［コール］くそっ！　間に合わなかったか・・・。もっと早くキャ　　　　　サリンの事に気付いていれば・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］でも、諦めるのはまだ早い。この目で直に確認するまで　　　　　は・・・な。")
   (set-reg 151 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 152 #f))
   (text
    "［コール］酷いものだ・・・ガラスは割れまくり、中で死んでいる　　　　　人が見える。死霊を甘く見ていると、俺もいつか死体に　　　　　なるだろう。一つ一つの行動に十分注意しないとな。")
   (set-reg 152 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 153 #f))
   (text "［コール］店内は静まり返っている。動いている物は何もないよう　　　　　だ。")
   (set-reg 153 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］このまま帰る訳にもいかないな。一度、店内を調べた方　　　　　がいいだろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 154 #f))
   (text "［コール］入口のドアは完全に破壊されているな。かなりの数の死　　　　　霊があそこから中へ入って行ったんだな。")
   (set-reg 154 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 155 #f))
   (text "［コール］ドアのガラスが割れている。あれではもう、ドアとして　　　　　の役目は果たせないな。")
   (set-reg 155 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］やはり、店内に入るにはあそこの入口からの方がよさそ　　　　　うだ。店内を見通せる一番安全な侵入路だと言えるだろ　　　　　う。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 156 #f))
   (text "［コール］ここがシャッフル・フードに間違いない、この看板は昼　　　　　間見たものと同じだ。")
   (set-reg 156 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］あの看板は、夜になると電気がついて回っているのだが　　　　　店がこうなってしまっては無理な話だろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 157 #f))
   (text "［コール］あの車は、俺が研究所から借りてきたバンだ。ここに来　　　　　るまでに、２体の死霊にぶつかってしまった。")
   (set-reg 157 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 158 #f))
   (text
    "［コール］バンには、いざという時のためにキーをつけてある。　　　　　　死霊から逃げる時に、いちいちポケットからキーを探す　　　　　のは貴重な時間をロスしてしまうからだ。")
   (set-reg 158 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "［コール］俺の乗って来た研究所のバンだ。") (wait) (text-reset 1))
 (seg (? (= P 1) (= 152 #t) (= 154 #t))
   (exec-mem 6064 2 1)
   (text "［コール］銃は持ったな。よし、中に入ろう。")
   (wait)
   (text-reset 1)
   (nop@)
   (set-reg 159 #t)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥045.MES"))
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
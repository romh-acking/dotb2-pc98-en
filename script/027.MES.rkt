(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB050.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 39 5 46 8)
  (exec-mem 3744 1 6 40 8 47 11)
  (exec-mem 3744 1 7 48 3 56 5)
  (exec-mem 3744 1 15 80 0 0 0)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB050.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 184 #f))
        (text "［コール］駅の裏側に来るのは久しぶりだな・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］ここがシャッフル・フードか。")
        (set-reg 184 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［コール］ここは、シーラの友達のキャサリンが働いているシャッ　　　　　フル・フードというレストランだ。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 185 #f))
   (text "［コール］こんな所にレストランが出来たなんて知らなかったな。")
   (set-reg 185 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 186 #f))
   (text "［コール］このレストランでキャサリンが働いているんだな。彼女　　　　　に聞けば、シーラの行方が判るかもしれないな。")
   (set-reg 186 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］清潔そうなレストランだな。客が結構入っているところ　　　　　を見ると、なかなか評判のいいレストランのようだ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 187 #f))
   (text "［コール］あそこが入口のようだな。キャサリンの事を従業員の誰　　　　　かに聞いた方がいいな。")
   (set-reg 187 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］レストランの出入口はあそこしか無いみたいだな。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 188 #f))
   (text "［コール］シャッフル・フードと書いた看板がある。")
   (set-reg 188 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 189 #t))
   (text "［コール］看板を見直す必要はないな。ここにキャサリンが働いて　　　　　いる事に間違いはない。")
   (set-reg 189 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］シャッフル・フードとでかでかと書かれた看板がある。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 186 #t) (= 187 #t))
   (exec-mem 6064 2 1)
   (text "［コール］よし、キャサリンに会いに行こう。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 190 #t)
   (mes-jump "A:¥MES¥028.MES"))
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
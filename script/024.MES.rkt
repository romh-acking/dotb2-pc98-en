(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB046.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 17 5 30 10)
  (exec-mem 3744 1 6 47 5 56 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB046.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 169 #f))
        (text
         "［コール］シーラの家は、駅から１５分ほどで来れるマンションに　　　　　ある。俺よりいい所に住んでいるのはちょっと気にくわ　　　　　ないが、奴には仕送りという心強い味方がいるからな。")
        (wait)
        (text-reset 1)
        (text "［コール］それに月に一度、親が泊まりに来るという話しだ。")
        (set-reg 169 #t)
        (wait)
        (text-reset 1))
       (//
        (text
         "［コール］ここはシーラの住んでいるマンションだ。いつもシーラ　　　　　の方が俺のアパートへ来るので、俺がここに来るのは比　　　　　較的珍しいんだ。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 170 #f))
   (text
    "［コール］このマンションは、１２階建でとても見晴らしがいいん　　　　　だ。屋上は上がれないようになっているが、９階のシー　　　　　ラの部屋からでも十分眺めがいい。")
   (set-reg 170 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 171 #f))
   (text "［コール］さすがにもうシーラは帰ってきているだろう。今日は、　　　　　用がないと言っていたしな。")
   (set-reg 171 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］ライル博士も待っててくれてるし、早くシーラをピレイ　　　　　ン研究所に連れて行こうぜ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 172 #f))
   (text "［コール］ここの看板は月に一度替わるんだ。今はＬＡＲＫの宣伝　　　　　をしているな。")
   (set-reg 172 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］今の俺には、この看板は意味のないものだな。") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］シーラの部屋は９０４だ。エレベーターを使った方が早　　　　　いだろう。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 173 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥025.MES"))
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB182.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 37 10 47 11)
  (exec-mem 3744 1 6 17 5 23 11)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB182.GPC")
  (image-mem 0 3)
  ((cmd 193) 0 "B:¥GPA¥DB182.GPA")
  ((cmd 194) 0 "ｱ............ｲ...ｱ.....ｲ....ｱ...ｲ...ｱ............")
  ((cmd 197) 0 15)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 118 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 119 #f))
        (text "［女の声］アハハハハハハ！！")
        (wait)
        (text-reset 1)
        (text "［コール］！？" 'br)
        (wait)
        (text-reset 1)
        (text "［スティーブ］！？")
        (set-reg 119 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［女の声］アハハハハハハ！！" 'br)
        (wait)
        (text-reset 1)
        (text "［コール］！？")
        (wait)
        (text-reset 1)
        (text "［男の声］ペッ・・・。" 'br)
        (wait)
        (text-reset 1)
        (text "［スティーブ］！？")
        (wait)
        (text-reset 1))))
  (loop
   ((cmd 195) 0 65535)
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (text-reset 1)
   (seg-call)))
 (seg (? (= P 5) (= 120 #f))
   (text "［コール］スティ・・・" 'br)
   (text "［スティーブ］シッ・・・！")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 121 #f))
   (text "［コール］二人いますね、生き残りのブラッディフォックスでしょ　　　　　うか？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］多分な・・・。")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 122 #f))
   (text "［コール］ジルも一緒だといいが・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］いや、奴はブラッディフォックスとは行動しないだ　　　　　　　ろう。")
   (wait)
   (text-reset 1)
   (text "［コール］どこかに隠れているのかもしれませんね。")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］まだ、俺達に気付いていないみたいですね。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ああ、見つかるなよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 123 #f))
   (text "［コール］！？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］コール、出過ぎた・・・柱に隠れろ。")
   (wait)
   (text-reset 1)
   (text "［コール］あ、はい。")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 124 #f))
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］これから、どうします？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］待て・・・。")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 125 #f))
   (text "［コール］スティーブさん、どこに行くんですか？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］向こうの柱の陰だ。")
   (wait)
   (text-reset 1)
   (text "［コール］？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］挟み打ちだよ。")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［スティーブ］コール、行くぞ！")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 122 #t) (= 126 #t))
   (exec-mem 6064 2 1)
   (text "［スティーブ］今だ！！")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   ((cmd 197) 0 0)
   (mes-jump "A:¥MES¥107.MES"))
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
        (/ (nop@) (set-reg 118 #f) (flag-save 1))
        (/ (nop@) (set-reg 118 #f) (flag-save 2))
        (/ (nop@) (set-reg 118 #f) (flag-save 3))
        (/ (nop@) (set-reg 118 #f) (flag-save 4))
        (/ (nop@) (set-reg 118 #f) (flag-save 5))
        (/ (nop@) (set-reg 118 #f) (flag-save 6))
        (/ (nop@) (set-reg 118 #f) (flag-save 7))
        (/ (nop@) (set-reg 118 #f) (flag-save 8))
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
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 1))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 2))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 3))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 4))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 5))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 6))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 7))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))
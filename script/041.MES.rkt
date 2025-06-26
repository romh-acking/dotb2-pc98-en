(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (nop@)
  (set-reg 123 #t)
  (load-mem "A:¥CLM¥DB108.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 7 10 36 14)
  (exec-mem 3744 1 6 17 2 42 9)
  (exec-mem 3744 1 7 51 4 54 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB108.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 124 #f))
        (text "［コール］人がいないところを見ると、どうやらこの部屋は空室ら　　　　　しいな。")
        (set-reg 124 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］ここは空室だったな・・・。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 125 #f))
   (text "［コール］ベッドが一つ置いてあるな・・・。シーツにシワが入っ　　　　　ていない事は、最近換えたばかりのようだな。")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 126 #f))
   (text "［コール］ベッドの周りには、何も目につくようなものは見当たら　　　　　ない。清潔そのものだ。")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］このベッドは、きっと研究所の人が仮眠用に使用してい　　　　　たものだろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 127 #f))
   (text "［コール］窓の外は真っ暗だな・・・。今頃、街は死霊でごった返　　　　　しているんだろうな。")
   (set-reg 127 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 128 #f))
   (text "［コール］ここは２階だし、さすがの死霊もここまでは登って来れ　　　　　ないだろうな。")
   (set-reg 128 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］このカーテンには触れないほうがいいな。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 129 #f))
   (text "［コール］ん？　壁にカレンダーが貼ってあるぞ・・・。７月から　　　　　めくっていないようだな。")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 130 #f))
   (text "［コール］カレンダーの月が７月という事は、今から４ヶ月前には　　　　　誰かがこの部屋を使っていたという事になるな。")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 131 #f))
   (text
    "［コール］カレンダーの日付には、色々なマークが付いている。　　　　　　マルやバツ、「Ｇ１３」というメモが書いてあるが、俺　　　　　には一体何の事だか判らない。")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［コール］どこにでも売っている普通のカレンダーだ。") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］この部屋には何もないようだな・・・。一旦、廊下に戻　　　　　るか・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥039.MES"))
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
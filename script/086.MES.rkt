(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB101.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 37 5 54 10)
  (exec-mem 3744 1 6 20 3 27 13)
  (exec-mem 3744 1 7 4 12 17 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB101.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 126 #f) (= 901 #t))
        (text "［コール］墓地に行ったお陰で、身体中が汚れちまったな。")
        (wait)
        (text-reset 1)
        (text "［コール］あーあ・・折角の一張羅が台無しだ・・・。")
        (set-reg 126 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］ここはいつも静かだな・・・。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 127 #f))
   (text "［コール］俺にはロッカーなんて必要ないな。大事な物は財布以外　　　　　持ち歩かないようにしているからな。")
   (wait)
   (text-reset 1)
   (text "［コール］もっとも、財布より大事なものなんて持ってないがね。")
   (set-reg 127 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 128 #f))
   (text "［コール］何が入っているのか判らないけど、このロッカーを使用　　　　　している人が、まだ生きていると信じていたいよ。")
   (wait)
   (text-reset 1)
   (text "［コール］無理かな・・・。")
   (set-reg 128 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［コール］鍵のかかったロッカーが並んでいるな。") (wait) (text-reset 1))
 (seg (? (= P 6) (= 129 #f))
   (text "［コール］そういえばシーラの奴、さっきはかなり怒って飛び出し　　　　　て行ったっけ・・。")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 130 #f))
   (text "［コール］俺が最後にこの部屋を出た時から、誰もこの部屋に入っ　　　　　て来た様子はないようだな。")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］この部屋は、元々ドアに鍵が付いていないから出入りが　　　　　自由なんだな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 131 #f))
   (text "［コール］ん？　ホコリの積もった机の表面に１本のラインが入っ　　　　　ているぞ。")
   (wait)
   (text-reset 1)
   (text "［コール］何かの虫が通った後かな？　ラインをずっとたどって行　　　　　くと・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］こ、これは！？")
   (wait)
   (text-reset 1)
   (text "［コール］俺の指だ・・・。指先が真っ白になってるぞ。")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 132 #f))
   (text "［コール］なんだか一人で居ると、くだらない事ばかり考えちゃう　　　　　な・・・。皆に会っていた方がいいかもしれない。")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］この机は、寝返りをうつと必ず頭をぶつける邪魔な机な　　　　　んだ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］廊下に出よう。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥085.MES"))
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
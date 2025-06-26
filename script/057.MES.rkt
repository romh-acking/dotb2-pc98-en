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
        (?
         (= 113 #t)
         (= 124 #t)
         (= 125 #t)
         (= 132 #t)
         (= 135 #t)
         (= 142 #t)
         (= 146 #t))
        (text "［コール］なんだか疲れてきたな・・・。俺もそろそろ休むとする　　　　　か・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］このぶんじゃ、起きるのは夜だな。")
        (wait)
        (text-reset 1)
        (text "［コール］また昼と・・・夜が・・・逆・・・転・・・か。")
        (wait)
        (text-reset 1)
        (text "［コール］眠・・・い・・・。")
        (wait)
        (text-reset 1)
        (sound '|| 2)
        ((cmd 209) 0 10)
        (text-frame 0 0 79 399)
        (text-reset 1)
        (text-frame 15 298 74 356)
        (image-file "A:¥GPC¥DB_FRM.GPC")
        (image-mem 0 3)
        (image-file "B:¥GPC¥DB088.GPC")
        (image-mem 1 3)
        (text "［コール］ぎゃああああああああああ！！！")
        ((cmd 209) 1)
        (sound '|| 0)
        (sound '|se | 4)
        ((cmd 209) 0 5)
        (text-frame 0 0 79 399)
        (text-reset 1)
        ((cmd 209) 1)
        (text-frame 15 298 74 356)
        (sound '|| 0)
        (text "大丈夫？　コール・・・しっかりして・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］ん・・・誰だ・・・？")
        (wait)
        (text-reset 1)
        (text "しっかりして・・・。")
        (wait)
        (text-reset 1)
        ((cmd 209) 0 5)
        (image-file "A:¥GPC¥DB_FRM.GPC")
        (image-mem 0 3)
        (image-file "B:¥GPC¥DB101.GPC")
        (image-mem 0 3)
        (image-file "B:¥GPC¥DB103.GPC")
        (image-mem 1 3)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
        (sound '|| 3)
        ((cmd 209) 1 10)
        (text "［キャサリン］コール、大丈夫？")
        (wait)
        (text-reset 1)
        (text "［コール］キャサリンか・・・。")
        (wait)
        (text-reset 1)
        (text "［キャサリン］すごくうなされていたみたい・・・。汗が凄いわ。")
        (wait)
        (text-reset 1)
        (text "［コール］ああ、嫌な夢を見てね・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］それより、どうしたんだ？　こんな夜中に・・・。")
        (wait)
        (text-reset 1)
        (text "［キャサリン］なかなか寝付けなくて・・・。安定剤を飲もうと廊　　　　　　　下にでたらコールの部屋から声が聞こえたの。")
        (wait)
        (text-reset 1)
        (text "［コール］俺、そんな大きな声を出してたのか・・・。")
        (wait)
        (text-reset 1)
        (text "［キャサリン］だけど、もう大丈夫そうね。じゃあ、私・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］キャサリン、何か話があったんだろ？")
        (wait)
        (text-reset 1)
        (text "［キャサリン］・・・・・・・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］屋上に出てみないか？　この研究所の屋上は、一度行っ　　　　　てみたかったんだ。")
        (wait)
        (text-reset 1)
        (text "［キャサリン］うん、いいわ。")
        (wait)
        (text-reset 1)
        (sound '|| 2)
        (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
        (mes-jump "A:¥MES¥061.MES"))
       (// (text "［コール］今日はいろんな事があってちょっと疲れたな。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 114 #f))
   (text "［コール］鍵の掛かったロッカーが並んでいるな。きっと、この研　　　　　究所で働いている人が使用しているのだろう。")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 115 #f))
   (text
    "［コール］開かないと思うと開けてみたくなるのが人間の性という　　　　　ものだが、ロッカーというのは人のプライベートに関す　　　　　る物が入っているケースが非常に多いからな。")
   (wait)
   (text-reset 1)
   (text "［コール］さすがに俺はそこまで根暗じゃないぞ。")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［コール］研究所のロッカーだ。俺にはあまり興味がないな。") (wait) (text-reset 1))
 (seg (? (= P 6) (= 116 #f))
   (text "［コール］あのドアは、この部屋の出入口にあたるものだ。")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 117 #f))
   (text "［コール］誰か来ないかな・・・。")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］あのドアには鍵がついていない。本来、この部屋には誰　　　　　でも自由に出入りできるようだな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 118 #f))
   (text "［コール］手前に机の角が見えている。昔はよく勉強していたが、　　　　　今となっては机を使う機会がほとんどないな。")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 119 #f))
   (text "［コール］机の引き出しには何も入っていない。その他にはこれと　　　　　いって興味を引くものもないな。")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］寝返りをうった時に、この机の縁に頭をぶつけないよう　　　　　注意しないとな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］廊下に出てみようかな。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥056.MES"))
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
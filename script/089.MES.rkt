(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB142.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 20 5 36 10)
  (exec-mem 3744 1 6 29 11 34 13)
  (exec-mem 3744 1 7 38 10 49 13)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB142.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 151 #f))
        (text "［コール］ここがラゾバン製薬だな。")
        (wait)
        (text-reset 1)
        (text "［コール］スティーブさんの言った通りだ。研究所から東に１時間　　　　　で来れたな。")
        (set-reg 151 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［コール］俺はラゾバン製薬の前にいる。スティーブさんが無事だ　　　　　といいが・・・。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 152 #f))
   (text
    "［コール］建物はかなり古めかしい感じだな。スティーブさんは、　　　　　ダニエルを探しにたった一人でこの中に入って行ったの　　　　　だろう。")
   (set-reg 152 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 153 #f))
   (text "［コール］まさか、蘇生薬を使って死霊を増やし、街を崩壊させた　　　　　のがラゾバン製薬の所長だったとはな・・・。")
   (set-reg 153 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 154 #f))
   (text "［コール］スティーブさんの事だ。既に先にダニエルを仕留めてい　　　　　るかもしれないな。")
   (wait)
   (text-reset 1)
   (text "［コール］だが、やはり安心するのはダニエルの死体を確認してか　　　　　らだな。")
   (set-reg 154 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］今は、スティーブさんがまだ無事である事を祈るしかな　　　　　いな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 155 #f))
   (text "［コール］ん？　白い車が正面に停めてあるな。あの車には、誰も　　　　　乗っていないのにエンジンがかかっているぞ。")
   (set-reg 155 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 156 #f))
   (text
    "［コール］そうだ。あの車は、スティーブさんが乗ってきた研究所　　　　　のバンだ。車のエンジンをかけっぱなしにして捜査する　　　　　のは、俺かスティーブさんぐらいしかいないからな。")
   (set-reg 156 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］研究所の車が置いてあるという事は、まだスティーブさ　　　　　んは建物の中にいるのだろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 157 #f))
   (text "［コール］手前の建物には警備員はおろか、人ひとりいないようだ　　　　　な。")
   (set-reg 157 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［コール］建物の中は蛻の殻だ・・・。") (wait) (text-reset 1))
 (seg (? (= P 1) (= 154 #t) (= 156 #t))
   (exec-mem 6064 2 1)
   (text "［コール］よし、気合入れて行くぞ！！")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥090.MES"))
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
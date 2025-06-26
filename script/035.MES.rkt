(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB067.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 7 4 12 7)
  (exec-mem 3744 1 6 24 9 36 11)
  (exec-mem 3744 1 7 27 13 43 15)
  (exec-mem 3744 1 8 48 5 54 11)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB067.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_04.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_04.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 111 #f))
        (text "［コール］惨い・・・酷すぎる・・・・。")
        (set-reg 111 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［コール］これが今まで住んでいた自分の街だとは・・・信じられ　　　　　ない・・・。")
        (wait)
        (text-reset 1))))
  (loop
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (seg-call)
   (if (</>
        (//
         (? (= 126 #t) (= 118 #t) (= 121 #t) (= 125 #t))
         (text "［コール］シーラは無事なのだろうか・・・。捜さないといけない　　　　　が、一体奴はどこに居るんだ？")
         (wait)
         (text-reset 1)
         (text "［コール］少し、落ち着いて考えてみよう。")
         (wait)
         (text-reset 1)
         (loop
          (text "［コール］シーラはディスコ「ジーナ」から、どこへ向かったんだ　　　　　っけな・・・。")
          (wait)
          (text-reset 1)
          (menu1
           16
           298
           36
           298
           56
           298
           16
           317
           36
           317
           56
           317
           16
           337
           36
           337
           56
           337
           (</>
            (/ (text "シャッフル・フード"))
            (/ (text "３２分署　　　　　"))
            (/ (text "コールのアパート　"))
            (/ (text "シーラのマンション"))
            (/ (text "港の第三倉庫　　　"))
            (/ (text "ライトダンスＳ．Ｔ"))
            (/ (text "ピレイン研究所　　"))
            (/ (text "バー・リーズ　　　"))))
          (text-reset 1)
          (text "［コール］そうだ、シーラはジーナから")
          (branch-var
           S
           (</>
            (/ (text "シャッフル・フードに向か　　　　　ったんだ。"))
            (/ (text "３２分署に向かったんだ。"))
            (/ (text "俺のアパートに向かったん　　　　　だ。"))
            (/ (text "シーラのマンションに向か　　　　　ったんだ。"))
            (/ (text "倉庫に向かったんだ。"))
            (/ (text "ライトダンス・ストリート　　　　　に向かったんだ。") (set-reg 127 #t))
            (/ (text "ピレイン研究所に向かった　　　　　んだ。"))
            (/ (text "バー・リーズに向かったん　　　　　だ。"))))
          (wait)
          (text-reset 1)
          (text "［コール］そしてブラッディフォックスに捕まり、誰に助けられた　　　　　んだっけ・・・？")
          (wait)
          (text-reset 1)
          (menu1
           16
           298
           36
           298
           56
           298
           16
           317
           36
           317
           56
           317
           16
           337
           36
           337
           56
           337
           (</>
            (/ (text "スティーブ　　　　"))
            (/ (text "キャサリン　　　　"))
            (/ (text "ブライア　　　　　"))
            (/ (text "コール　　　　　　"))
            (/ (text "助けられていない　"))))
          (text-reset 1)
          (branch-var
           S
           (</>
            (/ (text "［コール］そう、シーラはスティーブさんに助けられた。") (set-reg 128 #t))
            (/ (text "［コール］そう、シーラはキャサリンに助けられた。"))
            (/ (text "［コール］そう、シーラはブライアに助けられた。"))
            (/ (text "［コール］そう、シーラは俺に助けられた。"))
            (/ (text "［コール］そう、シーラは助けられていないんだ。"))))
          (wait)
          (text-reset 1)
          (text "［コール］・・・という事は・・・。")
          (wait)
          (text-reset 1)
          (branch-var
           S
           (</>
            (/ (text "［コール］そう、シーラを捜すには、スティーブさんの行きそうな　　　　　場所をあたってみればいいんだな。"))
            (/ (text "［コール］そう、シーラを捜すには、キャサリンの行きそうな場所　　　　　をあたってみればいいんだな。"))
            (/ (text "［コール］そう、シーラを捜すには、ブライアの行きそうな場所を　　　　　あたってみればいいんだな。"))
            (/ (text "［コール］そう、シーラを捜すには、俺が行きそうな場所をあたっ　　　　　てみればいいんだな。"))
            (/ (text "［コール］そう、シーラを捜すには、彼女の家に行けばいいんだ。"))))
          (wait)
          (text-reset 1)
          (if (</>
               (//
                (? (= 127 #t) (= 128 #t))
                (text
                 "［コール］そうだ、スティーブさんの行きそうな場所といえば・・　　　　　３２分署、リーズ、もしくはピレイン研究所だな。")
                (wait)
                (text-reset 1)
                (text
                 "［コール］だが、この街は酷く壊されているため、近場に居るとは　　　　　思えない。俺だったら、なるべくこの街から離れている　　　　　安全な場所・・・そう、ピレイン研究所に避難するな。")
                (wait)
                (text-reset 1)
                (text
                 "［コール］それに、もし、研究所に居なかったらライル博士にも、　　　　　スティーブさんの居そうな場所を相談してみよう。")
                (wait)
                (text-reset 1)
                (text "［コール］よし、ピレイン研究所だ！")
                (wait)
                (text-reset 1)
                (nop@)
                (set-reg 129 #t)
                (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
                (mes-jump "A:¥MES¥036.MES"))
               (//
                (text "［コール］ん？　何か変だな・・・。もう一度、じっくり考えてみ　　　　　ようぜ。")
                (set-reg 127 #f)
                (set-reg 128 #f)
                (wait)
                (text-reset 1))))))))))
 (seg (? (= P 5) (= 112 #f))
   (text
    "［コール］車が店に突っ込んで炎上しているようだ。運転中、いき　　　　　なり死霊に襲われてしまったら、もうどうする事もでき　　　　　ない・・・。")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 113 #f))
   (text "［コール］街のあちらこちらで、大きなどす黒い煙を上げている。　　　　　また２年前のくり返しか・・・。")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text
    "［コール］俺がいない間に街がパニックに陥っていたとは・・・。　　　　　あんな短時間で、死霊によって街が壊滅されていたとは　　　　　夢にも思わなかった・・・。")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 114 #f))
   (text "［コール］死霊の姿が見える・・・。この街の人は皆、あいつらに　　　　　喰われてしまったのだろう・・・。")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 115 #f))
   (text "［コール］あの死霊達、一体どこから現れたんだろうか・・・。俺　　　　　のいない間に、街を壊滅させる事ができる死霊の数か。")
   (wait)
   (text-reset 1)
   (text "［コール］あまり考えたくないな・・・。")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 116 #f))
   (text "［コール］死霊が現れた以上、蘇生薬を使っている人間がいるのは　　　　　確かだ。一体、誰がこんな酷い事を・・・。")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 117 #f))
   (text "［コール］ドクの作った蘇生薬をパープル・スカイに使用している　　　　　奴と、この死霊を作った人物とは多分同じ人間だろう。")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text
    "［コール］死霊はゆっくりとこっちに近づいて来ているようだ。俺　　　　　がいる事に感付いたようだな。だが、奴等の足じゃ俺の　　　　　所までくるのに、かなりの時間がかかるだろう。")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 119 #f))
   (text "［コール］街の人達は、皆死霊にやられてしまったようだ・・・。　　　　　一度ならず、二度もこんな事になるなんて・・・。")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 120 #f))
   (text "［コール］２年前も街の人は全て死霊に殺られてしまったんだ。　　　　　　蘇生薬を使って死霊を蘇らせた人物は一体誰なんだ！？")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 121 #f))
   (text "［コール］どの死体を見ても、頭部から大量の出血が見える。死霊　　　　　に脳を喰われてしまったのだろう。")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 122 #f))
   (text "［コール］ドクの作った蘇生薬とは恐ろしいものだ。数時間で、街　　　　　を一つ壊滅するとは・・・。")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］見たところ、生存者は残っていないようだな。皆、奴等　　　　　に殺されてしまった・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 123 #f))
   (text "［コール］あんなにきれいだった店が、今では死霊によって破壊さ　　　　　れてしまっている・・・。")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 124 #f))
   (text "［コール］どの店を見ても、無事に残っているような所は一つもな　　　　　い。これでは、当分営業は無理のようだ。")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 125 #f))
   (text "［コール］生きている人間は、俺の他にはどこにも居ないようだ。")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "［コール］店の中にもたくさんの死体が見える。") (wait) (text-reset 1))
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
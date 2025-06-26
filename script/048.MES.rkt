(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB043A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 16 3 21 7)
  (exec-mem 3744 1 7 25 2 34 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB044.GPC")
  (image-mem 1 3)
  (if (</>
       (// (? (= 178 #f)) (image-file "B:¥GPC¥DB081.GPC") (image-mem 1 3))))
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 5)
  (if (</>
       (//
        (? (= 194 #t) (= 183 #t) (= 198 #t) (= 182 #t))
        (text "［ライル］コール、いくら待ってもスティーブが帰ってこない。　　　　　　心配だから、ちょっと様子を見に行ってくれないか？")
        (wait)
        (text-reset 1)
        (text "［コール］そうですね、途中でトラブっているのかもしれないし、　　　　　じゃあ、すぐに３２分署に行きます。")
        (wait)
        (text-reset 1)
        (text "［ライル］下の車を使ってくれ、頼んだぞ。")
        (wait)
        (text-reset 1)
        (text "［コール］はい。ライルさん、あの二人の事はお願いします。")
        (wait)
        (text-reset 1)
        ((cmd 204) 100 899)
        (sound '|| 2)
        (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
        ((cmd 206) 1 2)
        (mes-jump "A:¥MES¥051.MES"))
       (//
        (? (= 178 #f))
        (text "［ライル］おや、お客さんとは珍しいな。")
        (wait)
        (text-reset 1)
        (text "［コール］こちら、ライル博士。")
        (wait)
        (text-reset 1)
        (text "［ライル］初めまして、えーと・・・。")
        (wait)
        (text-reset 1)
        (text "［キャサリン］キャサリンです、宜しく。")
        (wait)
        (text-reset 1)
        (text "［ライル］キャサリン、キャッシーね。こちらこそ、汚い所だけど　　　　　ゆっくりしていってくれ。")
        (wait)
        (text-reset 1)
        (text "［コール］キャサリンはシーラの友達なんですよ。")
        (wait)
        (text-reset 1)
        (text "［ライル］そうだったのか・・・。キャサリン、君は廊下に出て右　　　　　の奥の部屋を使うといい。")
        (wait)
        (text-reset 1)
        (text "［キャサリン］はい、ありがとうございます。あ、それとシーラは　　　　　　　今どこに？")
        (wait)
        (text-reset 1)
        (text "［コール］左奥のドアがシーラの部屋だよ。キャッシーの丁度真向　　　　　かいだな。")
        (wait)
        (text-reset 1)
        (text "［キャサリン］ちょっと会って来ていい？")
        (wait)
        (text-reset 1)
        (text "［コール］ああ、いいよ。")
        (wait)
        (text-reset 1)
        (text "［キャサリン］じゃあ、行ってきます。")
        (wait)
        (text-reset 1)
        (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
        (image-file "B:¥GPC¥DB043.GPC")
        (image-mem 0 3)
        (image-file "B:¥GPC¥DB044.GPC")
        (image-mem 1 3)
        (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
        (text "［ライル］なかなかいい娘だな。")
        (set-reg 178 #t)
        (wait)
        (text-reset 1))
       (// (text "［ライル］コールか、今度は何の用かな？") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 179 #f))
   (text "［ライル］よくキャサリンは無事でいたな。")
   (wait)
   (text-reset 1)
   (text "［コール］ええ、レストランで隠れていたんですよ。俺が行った時　　　　　には、既に死霊はいませんでした。")
   (set-reg 179 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 180 #f))
   (text "［コール］あれ？　スティーブさんはまだ戻っていないんですか？")
   (wait)
   (text-reset 1)
   (text "［ライル］そういえば結構、時間がかかっているみたいだな。")
   (wait)
   (text-reset 1)
   (text "［コール］車で行ったんですか？")
   (wait)
   (text-reset 1)
   (text "［ライル］ああ、そうだが・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］ここからだと、シャッフル・フードより警察署の方が遥　　　　　かに近いな・・・。俺が帰って来るよりスティーブさん　　　　　の方が早く戻る筈なのに・・・。")
   (wait)
   (text-reset 1)
   (text "［ライル］もう少し待ってみよう。どこかに寄っているのかもしれ　　　　　ないしね。")
   (set-reg 180 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 181 #f))
   (text "［ライル］スティーブを捜しているという事は・・・・。コール、　　　　　何か判ったのか？")
   (wait)
   (text-reset 1)
   (text "［コール］ええ、例のラゾバン製薬の事ですが、キャサリンの義父　　　　　「ダニエル・ホワイト」が所長なんですよ。")
   (wait)
   (text-reset 1)
   (text "［ライル］ほう・・・ヘロインを蘇生薬と混合してさばいているの　　　　　は、そのダニエルという男か。")
   (wait)
   (text-reset 1)
   (text "［コール］ええ、多分そうでしょうね。そして、蘇生薬を使って死　　　　　者を蘇らせたのも・・・。")
   (wait)
   (text-reset 1)
   (text "［ライル］その男が、今頃どこかで崩壊した街を見ながら、あざ笑　　　　　っているなんて考えると頭にくるな・・・。")
   (set-reg 181 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］とにかく、ダニエル・ホワイトという男がこの事件に絡　　　　　んでいる事は間違いないんです。")
   (wait)
   (text-reset 1)
   (text "［ライル］後はスティーブが帰ってくるのを待つだけか・・・。")
   (set-reg 182 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 183 #f))
   (text "［ライル］シーラの血液検査の結果は、もう少し待って欲しい。")
   (wait)
   (text-reset 1)
   (text "［コール］ええ、お願いします。")
   (set-reg 183 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［ライル］ここで様々な薬品の研究をしているのだが、蘇生薬だけ　　　　　は未だに解明できないよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］俺ちょっと皆の様子を見てきます。")
   (wait)
   (text-reset 1)
   (text "［ライル］判った。")
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
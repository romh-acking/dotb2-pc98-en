(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB043B.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 15 7 22 12)
  (exec-mem 3744 1 6 9 8 14 12)
  (exec-mem 3744 1 7 40 9 49 11)
  (exec-mem 3744 1 8 46 11 56 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 5)
  (text "［コール］あれ、誰もいないみたいだな・・・。")
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 136 #f))
   (text "［コール］大きな装置が部屋の隅に設置されているな。一体、何に　　　　　使われるものだろう？")
   (set-reg 136 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 137 #f))
   (text "［コール］たくさんのケーブルが出ているようだが、かなり大掛か　　　　　りな物に間違いはないようだ。")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 138 #f))
   (text "［コール］ＰＲ−１００と書かれているが、プリンターでない事は　　　　　確かなようだな。")
   (set-reg 138 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］あの装置は、むやみに触らない方がいいようだな。何が　　　　　起きるかわからないよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 139 #f))
   (text "［コール］随分と頑丈そうなドアだな。それに、ドアの横にはオー　　　　　トロックのキーボードがついている。")
   (set-reg 139 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 140 #f))
   (text "［コール］確か、あの部屋にはスティーブさんも入れてもらった事　　　　　がないと言っていたな。一体、何があるんだろう？")
   (set-reg 140 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 141 #f))
   (text "［コール］多分、鍵がかかっていて開ける事はできないだろう。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］はははは、わざわざ試してみる事もなさそうだな。この　　　　　暗証入力装置があるだけで、入れないと把握できるもん　　　　　な。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］い、今の俺には、余計な体力を使うような余裕なんて無　　　　　いんだし、あの奥に何があろうと俺には一切関係ないも　　　　　んな。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ふんんんんっ！")
   (wait)
   (text-reset 1)
   (repeat 3 (<> (text "［コール］・・・・・・・・・。") (wait) (text-reset 1)))
   (text "［コール］くそっ、ダマしやがったな！")
   (set-reg 141 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］あのドアは開ける事ができないよ。暗証番号でも知って　　　　　いれば別だろうけど・・・ね。")
   (set-reg 142 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 143 #f))
   (text "［コール］机の上にパソコンが並んでいるな。電源もつけっぱなし　　　　　で、ライルさんは一体どこに行ったんだろう？")
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 144 #f))
   (text "［コール］何やらモニターには、訳の判らない数字やグラフが表示　　　　　されている。")
   (set-reg 144 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 145 #f))
   (text
    "［コール］今やいろんな事にコンピューター等の機械が使われるよ　　　　　うになったよな。昔は全て手作業だったのに、便利な世　　　　　の中になったよな。")
   (set-reg 145 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］コンピューターを使って、死霊の動きが分かればどんな　　　　　に楽になるか・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 146 #f))
   (text "［コール］普通の水道のようだな。ついでに、手を洗っておくか。")
   (wait)
   (text-reset 1)
   (text "［コール］うん、気持ちいい。ついでに一口飲んでおこう。")
   (set-reg 146 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］確か、ここの水は屋上のタンクからくるものだったな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］誰もいないみたいだし、一度廊下に戻るかな。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥056.MES"))
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
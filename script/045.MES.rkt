(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB076.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 10 14 15)
  (exec-mem 3744 1 6 44 10 49 11)
  (exec-mem 3744 1 7 15 9 26 15)
  (exec-mem 3744 1 8 22 5 39 8)
  (exec-mem 3744 1 9 31 14 44 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB076.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 159 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 160 #f))
        (text "［コール］すごい死臭だ・・・。これでは、あまり長い間居られそ　　　　　うもないな。")
        (set-reg 160 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］シャッフル・フードの店内だ。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 162 #t) (= 165 #t) (= 167 #t))
   (text "［×××］うっ・・・うっ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ん！？　死霊か！？")
   (wait)
   (text-reset 1)
   (text "［×××］シクシク・・・うっ・・・うっ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］違う・・・女の泣き声だ！！")
   (wait)
   (text-reset 1)
   (text "［コール］誰か居るのか？　おい、返事をしてくれ！！　どこだ？")
   (wait)
   (text-reset 1)
   (text "［×××］い・・・いま・・す・・・。シクシク・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］この裏だな！")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥046.MES"))
 (seg (? (= P 5) (= 161 #f))
   (text "［コール］手前はカウンターになっているようだ。これといって、　　　　　気になるものは何もないようだな。")
   (set-reg 161 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 162 #f))
   (text "［コール］カウンターの中には死体がないようだ。皆、フロアで殺　　　　　られてしまったみたいだな。")
   (set-reg 162 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］ミキサーやグラスが床に落ちている。どれも、原形を留　　　　　めているものはないな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 163 #f))
   (text "［コール］ブラッディフォックスの死体だ・・・。珍しいな・・・　　　　　連中がこんな店で食事をするなんて・・・。")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 164 #f))
   (text "［コール］ブラッディフォックスは完全に死んでいるようだ。これ　　　　　では、もう悪さもできないな。")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text
    "［コール］こんなファミリーレストランでブラッディフォックスを　　　　　見るとは思わなかったな。連中もパープル・スカイを流　　　　　して金回りが良くなったのかな。")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 166 #f))
   (text "［コール］客や店員の死体が店の至る所に転がっている。もう完全　　　　　に死んでいるものばかりだな。")
   (wait)
   (text-reset 1)
   (text "［コール］ん？　腐り果てた死体も混ざっているようだ。たぶん、　　　　　あれは死霊の残骸だろう。")
   (set-reg 166 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 167 #f))
   (text
    "［コール］死体なんてあまり見ていても、気持ちの良い物ではない　　　　　な・・・。それに、この中にはキャサリンらしい人物は　　　　　いないみたいだ。")
   (set-reg 167 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text
    "［コール］死臭はこれらの死体から出ているものだろう。生臭い血　　　　　の匂いに混じって出る独特な匂い・・・さすがの俺でも　　　　　吐き気を催してきそうだ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 168 #f))
   (text "［コール］ガラスが派手に割られている。この窓からも死霊が入っ　　　　　てきたのだろう。")
   (set-reg 168 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 169 #f))
   (text "［コール］これだけ店が破壊されているんだ。１体や２体の数じゃ　　　　　なかったようだな。")
   (set-reg 169 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］大丈夫だ、周りに死霊の姿は見えない。奴等はここを襲　　　　　った後、どこかに移動したのだろう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 163 #f))
   (text "［コール］ブラッディフォックスの死体だ・・・。珍しいな・・・　　　　　連中がこんな店で食事をするなんて・・・。")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 164 #f))
   (text "［コール］ブラッディフォックスは完全に死んでいるようだ。これ　　　　　では、もう悪さもできないな。")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (text
    "［コール］こんなファミリーレストランでブラッディフォックスを　　　　　見るとは思わなかったな。連中もパープル・スカイを流　　　　　して金回りが良くなったのかな。")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
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
        (/ (nop@) (set-reg 159 #f) (flag-save 1))
        (/ (nop@) (set-reg 159 #f) (flag-save 2))
        (/ (nop@) (set-reg 159 #f) (flag-save 3))
        (/ (nop@) (set-reg 159 #f) (flag-save 4))
        (/ (nop@) (set-reg 159 #f) (flag-save 5))
        (/ (nop@) (set-reg 159 #f) (flag-save 6))
        (/ (nop@) (set-reg 159 #f) (flag-save 7))
        (/ (nop@) (set-reg 159 #f) (flag-save 8))
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
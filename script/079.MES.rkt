(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB101A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 37 5 54 10)
  (exec-mem 3744 1 6 20 3 27 13)
  (exec-mem 3744 1 7 4 12 17 15)
  (exec-mem 3744 1 8 30 3 37 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB101.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB073.GPC")
  (image-mem 1 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 2 23 40 238 1 2 23")
  (exec-mem 912 "C 0 40 23 18 238 1 40 23")
  (exec-mem 912 "A 1")
  (exec-mem 912 "GET 0 2 23 54 238")
  (image-file "B:¥GPC¥DB132.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 1 2 23 54 238")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 15456 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_10.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_10.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 127 #f))
        (text "［コール］シ、シーラ・・・。")
        (wait)
        (text-reset 1)
        (text "［シーラ］どうだった？　ライルさんの話・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］・・・・・・・・・。")
        (set-reg 127 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］シーラ・・・。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 128 #f))
   (text "［シーラ］コール、よそ見をしないで・・・。")
   (set-reg 128 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "［シーラ］コール、ロッカーじゃなくて私を見て・・・。") (wait) (text-reset 1))
 (seg (? (= P 6) (= 129 #f))
   (text "［コール］シーラが入って来ていたとは気がつかなかったな。")
   (wait)
   (text-reset 1)
   (text "［シーラ］鍵がないみたいだから、勝手に入っちゃった・・・。")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］この部屋のドアは、鍵が付いていなかったんだよな。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 130 #f))
   (text "［シーラ］コール、どうして私の目を見てくれないの？")
   (wait)
   (text-reset 1)
   (text "［コール］いや、そんな事はないさ。ちゃんと見てるよ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］さっきからキョロキョロしているみたい・・・。")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［コール］机を見ていたら、またシーラが気にしそうだな。") (wait) (text-reset 1))
 (seg (? (= P 8) (= 131 #f))
   (text "［シーラ］ライルさん、何て言ってた？")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］ねえ、コール。答えて？")
   (wait)
   (text-reset 1)
   (text "［コール］・・・俺には難しい医学用語は判らないよ・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］どうして？　判るように説明してもらわなかったの？")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 132 #f))
   (text "［シーラ］ねえ、コール・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ちょっと一人にさせてくれないか・・・色々と考える事　　　　　があるんだ。")
   (wait)
   (text-reset 1)
   (text "［シーラ］・・・どうしたの？　何かあったの・・・？")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］コール？")
   (wait)
   (text-reset 1)
   (text "［コール］うるさいな！！　俺は今すぐにこの部屋から出ていけっ　　　　　て言ってんだよ！！")
   (wait)
   (text-reset 1)
   (text "［シーラ］・・・・・・・・・。")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 133 #f))
   (text "［シーラ］コール・・私がこんな病気になっちゃったから嫌いにな　　　　　っちゃったの？　私が死霊になっちゃうから・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］そんなんじゃないよ・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］嘘・・・急に冷たくなるなんて・・・こんな事、今まで　　　　　一度もなかったのに・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (set-reg 133 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 2 23,W 0,O 0")
   (text "［シーラ］そう・・・判ったわ！！　ライルさんが治らないって言　　　　　ったのね！？　そうなのね！？")
   (wait)
   (text-reset 1)
   (text "［コール］違う！！")
   (wait)
   (text-reset 1)
   (text
    "［シーラ］何が違うのよ！！　私が死霊になったら、コールは私を　　　　　撃つんでしょ！？　どんなに愛していたって、これ以上　　　　　の被害を予想して私を撃つんでしょ！！")
   (wait)
   (text-reset 1)
   (text "［コール］馬鹿野郎！！")
   (wait)
   (text-reset 1)
   (exec-mem 14544 2 2)
   (exec-mem 912 "PUT 0 2 23,W 0,O 0")
   (exec-mem 912 "EXIT")
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［シーラ］・・・ごめんなさい。")
   (wait)
   (text-reset 1)
   (text "［シーラ］もう、コールの邪魔しないから・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB101.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (text "［コール］なんて事だ・・・なんて・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］シーラの気持ちは痛いほど解るんだ・・・治せるものな　　　　　ら、すぐにでも治してやりたい・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］だが、そのためにはドクを蘇らせなければならない。　　　　　　ドクの意識がハッキリ蘇る確率は非常に低い・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］もし正常に蘇らなかった場合、ドクとシーラの二人に申　　　　　し訳が立たない・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］それ以前に、ドクを蘇らせるなんて残酷な事はしたくな　　　　　いんだ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］このまま放っておいたら、シーラの言った通り、俺が彼　　　　　女を撃つ事になってしまうだろう・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］俺がシーラのためにドクを蘇らせる事に対して、ドクは　　　　　きっと俺を許してくれるだろう・・・。だが、俺は一生　　　　　後悔する・・・。")
   (wait)
   (text-reset 1)
   (loop
    (text "［コール］そろそろ１時間が経つ・・・コール、答えを出すのだ。")
    (menu1
     20
     337
     44
     337
     (</> (/ (text "　ドクを生き返さない　")) (/ (text "　ドクを生き返らせる　"))))
    (text-reset 1)
    (text "［コール］俺はドクを")
    (branch-var
     S
     (</>
      (/ (text "生き返さない") (set-reg 134 #t))
      (/ (text "生き返らせる") (set-reg 135 #t))))
    (text "事に決断した。")
    (wait)
    (text-reset 1)
    (text "［コール］本当にそれで後悔しないか？")
    (menu1 25 337 37 337 (</> (/ (text "　ＹＥＳ　")) (/ (text "　ＮＯ　"))))
    (text-reset 1)
    (if (</>
         (//
          (? (= S 1))
          (nop@)
          (set-reg 134 #f)
          (set-reg 135 #f)
          (set-var S 2))))
    (if (</>
         (//
          (? (= S 0) (= 134 #t))
          (text
           "［コール］俺はドクを生き返さない事に決断した。シーラもこの先　　　　　必ず死霊になるとは言い切れない。俺はドクを生き返す　　　　　様な無神経な人間ではないんだ・・・。")
          (wait)
          (text-reset 1)
          (text "［コール］よし、この事をライルさん達に知らせて来よう。")
          (wait)
          (text-reset 1)
          (sound '|| 2)
          (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
          (nop@)
          (set-reg 901 #f)
          (mes-jump "A:¥MES¥080.MES"))
         (//
          (? (= S 0) (= 135 #t))
          (text
           "［コール］俺はドクの脳を蘇生させて、シーラを助ける事に決断し　　　　　た。ドクに対して申し訳の立たない事だが、俺は大切な　　　　　シーラを何としても助けたい・・・。")
          (wait)
          (text-reset 1)
          (text "［コール］例え、ドクの脳が正常に蘇生されなくても、やるだけや　　　　　ってみる価値はあるだろう。")
          (wait)
          (text-reset 1)
          (text "［コール］よし、この事をライルさん達に知らせて来よう。")
          (wait)
          (text-reset 1)
          (sound '|| 2)
          (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
          (nop@)
          (set-reg 901 #t)
          (mes-jump "A:¥MES¥080.MES"))
         (//
          (? (= S 2))
          (text "［コール］いや、やっぱり駄目だ。そんな事は俺にできない！！")
          (wait)
          (text-reset 1))))))
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
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 1))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 2))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 3))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 4))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 5))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 6))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 7))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))
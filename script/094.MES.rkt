(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB070.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 46 5 51 15)
  (exec-mem 3744 1 6 20 7 23 13)
  (exec-mem 3744 1 7 37 7 40 13)
  (exec-mem 3744 1 8 9 5 14 15)
  (exec-mem 3744 1 9 27 8 32 12)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB070.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB155.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 192 #f))
        (text "［コール］酷い・・・廊下が血だらけだ・・・。")
        (wait)
        (text-reset 1)
        (text
         "［コール］廊下に倒れている死体は、２体共頭を撃ち抜かれている　　　　　ようだ。きっとライルさんが、この死霊達と戦ったのだ　　　　　ろう。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］コール、私は研究室の様子を見てくるよ。後の部屋　　　　　　　はコールに任せた。")
        (wait)
        (text-reset 1)
        (text "［コール］はい、判りました。")
        (set-reg 192 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［コール］俺達の居ない間に、研究所に死霊を送り込まれてしまっ　　　　　た・・・。")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 193 #f))
   (text "［コール］俺の部屋に入ってみよう。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB101.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (text
    "［コール］この部屋には鍵がついていなかったんだっけ。さすがに　　　　　人がいなかったのか、ここには死霊が入った形跡はない　　　　　ようだな。")
   (wait)
   (text-reset 1)
   (text "［コール］別の部屋を調べてみた方がよさそうだ。")
   (set-reg 193 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB070.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB155.GPC")
   (image-mem 1 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50))
 (seg (? (= P 5))
   (text "［コール］俺の部屋には死霊が入った形跡はなかった。別の部屋を　　　　　あたってみよう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 194 #f))
   (text "［コール］シーラは無事なのか？")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB072.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (text
    "［コール］誰もいないか・・・。死霊も、人間がいなければ部屋に　　　　　入る事もないからな。荒らされた様子もないという事は　　　　　シーラはここにはいなかったのか・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］シーラはきっと他の部屋に居るに違いない。")
   (set-reg 194 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB070.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB155.GPC")
   (image-mem 1 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50))
 (seg (? (= P 6))
   (text "［コール］シーラの部屋には誰もいなかったな。シーラの奴、無事　　　　　でいてくれればいいが・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 195 #f))
   (text "［コール］キャサリンの部屋に行ってみよう。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB108.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (text "［コール］おかしいな・・・誰もいないようだ。")
   (wait)
   (text-reset 1)
   (text "［コール］死霊が現れた時、キャサリンはこの部屋にいなかったの　　　　　か・・・。一体、どこに居るんだろう・・・。")
   (set-reg 195 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB070.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB155.GPC")
   (image-mem 1 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50))
 (seg (? (= P 7))
   (text "［コール］この部屋は荒らされた様子がなかったな。別の部屋を調　　　　　べてみよう。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］あれ？　このスティーブさんの部屋にはずっと鍵がかか　　　　　ってたのに・・・。とにかく、中を調べてみよう。")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB156.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (sound '|se | 3)
   (text "［コール］キャサ・・・・・！！")
   (wait)
   (text-reset 1)
   (text "［コール］お、おい・・・キャサリン？")
   (wait)
   (text-reset 1)
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_10.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_10.USO"))))
   (sound '|| 1)
   (text "［キャサリン］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］キャッシー・・・俺だよ、コール・・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］い、息をしてな・・・そんな・・・キャサリンが・・・　　　　　・・・キャサリンが！！")
   (wait)
   (text-reset 1)
   (text
    "［コール］なぜだ！！　どうしてキャッシーが死ぬんだよ！！　　　　　　　こんなに真面目でいい娘が・・・どうして死ななきゃ　　　　　　いけないんだよ！！")
   (wait)
   (text-reset 1)
   (text "［コール］な・・・なんで・・・なんでなんだよ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］・・クリスマスには、皆でパーティやろうって約束した　　　　　じゃないかよ・・・それなのに・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］コール・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］スティーブさん、キャッシー死んじゃったよ！！")
   (wait)
   (text-reset 1)
   (text "［スティーブ］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］こんなに優しい娘が・・・こんな・・・こんな汚い場所　　　　　で・・・たった一人で冷たくなって・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］・・・ライルも・・・だ。")
   (wait)
   (text-reset 1)
   (text "［コール］ライルさん・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］す・・・すまない・・・。私は・・・刑事として、　　　　　　　一人の男として皆を守り切れなかった・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］スティーブさん・・・それは俺も同じですよ・・・・。　　　　　自分の力のなさに嫌悪して、その怒りが今にも爆発しそ　　　　　うです・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］ドクはこんな結果を望んで蘇生薬を作った訳じゃないん　　　　　ですよ！！　ガンに冒された人や、エイズで死期を待つ　　　　　人達を一人でも助けるために・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］！！")
   (wait)
   (text-reset 1)
   (text "［スティーブ］どうした？")
   (wait)
   (text-reset 1)
   (text "［コール］シーラは・・・シーラはどこに居るんですか？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］研究室には居なかったが・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］実験室は？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］まだ見ていない。")
   (wait)
   (text-reset 1)
   (text "［コール］シーラ！！")
   (wait)
   (text-reset 1)
   (text "［コール］〔頼む・・・シーラだけでも生きていてくれ！！〕")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥095.MES"))
 (seg (? (= P 9) (= 196 #f))
   (text "［コール］研究室はスティーブさんが調べると言っていたから、俺　　　　　は今のうちに他の部屋を調べておくか。")
   (set-reg 196 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9)) (text "［コール］研究室はスティーブさんに任せておいた方がいい。") (wait) (text-reset 1))
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
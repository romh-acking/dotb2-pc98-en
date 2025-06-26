(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB017.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 29 3 36 6)
  (exec-mem 3744 1 6 28 7 34 10)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB016.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB017.GPC")
  (image-mem 1 3)
  (nop@)
  (exec-mem 15456 0)
  (nop@)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 2 23 40 238 1 2 23")
  (exec-mem 912 "C 0 40 23 18 238 1 40 23")
  (exec-mem 912 "A 1")
  (image-file "B:¥GPC¥DB016.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB018.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB019.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 2 23 54 238")
  (image-file "B:¥GPC¥DB019A.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 1 2 23 55 238")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 180 #f))
        (text "［Ｂ・Ｆ］おらっ、じっとしてろ！！")
        (wait)
        (text-reset 1)
        (text "［女の人］イヤっ、やめてっ！！")
        (wait)
        (text-reset 1)
        (text "［コール］ブラッディフォックスだ！！")
        (set-reg 180 #t)
        (wait)
        (text-reset 1))
       (//
        (text "［Ｂ・Ｆ］おらっ、静かにしろ！！")
        (wait)
        (text-reset 1)
        (text "［女の人］やめてっ！！")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 181 #f))
   (text "［コール］ブラッディフォッスが女性を襲っている。取り敢えず、　　　　　こいつらにも聞いてみた方がいいな。")
   (set-reg 181 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 182 #f))
   (text "［コール］ん？　まてよ？　あの男が持っている物・・・あれは、　　　　　注射器じゃないのか！？　どういう事だ・・・・・！？")
   (wait)
   (text-reset 1)
   (text "［コール］まさか蘇生薬をブラッディフォックスが！？")
   (set-reg 182 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］おいっ、その注射器の中身は何だ！！")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ん？　なんだ、おめえは！？")
   (wait)
   (text-reset 1)
   (text "［コール］俺の事はどうだっていい、その注射器の中身を教えろ！")
   (wait)
   (text-reset 1)
   (text "［女の人］助けて！！　お願いっ！！")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ケッケッケッ・・・そんなに知りたきゃ、腕ずくで聞く　　　　　んだな。")
   (wait)
   (text-reset 1)
   (text "［コール］しょうがねぇなぁ・・・。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］あん？　なんだ？　そんな銃なんかで俺達がビビるとで　　　　　も思ってるのか！？")
   (wait)
   (text-reset 1)
   (text "［女の人］助けてー！！")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］どうする？")
   (wait)
   (text-reset 1)
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_05.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_05.USO"))))
   (sound '|| 1)
   (text "［Ｂ・Ｆ］もう、女なんてどうでもいい。この馬鹿にブラッディフ　　　　　ォックスの恐ろしさを教えてやれ！！")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ケケケケ・・・覚悟しろよ！！")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB016.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB018.GPC")
   (image-mem 1 3)
   (image-file "A:¥GPC¥COUNTER.GPC")
   (image-mem 0 0)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (load-mem "A:¥CLM¥DB018.CLM" 32768)
   (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 3 2 0)
   (exec-mem 3744 1 5 5 8 14 13)
   (exec-mem 3744 1 6 29 2 36 7)
   (exec-mem 3744 1 7 10 3 15 5)
   (exec-mem 3744 1 8 28 12 36 15)
   (exec-mem 3744 1 9 46 4 51 6)
   (exec-mem 3744 1 10 28 8 36 11)
   (exec-mem 3744 1 11 39 12 46 14)
   (exec-mem 15728 0 0 0 5 0 1)
   (exec-mem 15728 1 0 0 0 0 "Z")
   (exec-mem 15728 2 1)
   (exec-mem 17408 2)
   (exec-mem 14544 2 0)
   (exec-mem 15728 3)
   (exec-mem 3744 3 "P" 32768)
   (if (</> (// (? (= Z 1)) (nop@) (set-var P 9))))
   (exec-mem 15728 4)
   (image-file "A:¥GPC¥DB_FRM3.GPC")
   (image-mem 0 0)
   (if (</>
        (//
         (? (= P 5))
         (exec-mem 912 "PUT 0 2 23,W 0,O 0")
         (text "［コール］甘いっ！！")
         (wait)
         (text-reset 1)
         (text "［Ｂ・Ｆ］グっ・・・・・。")
         (set-reg 183 #t)
         (wait)
         (text-reset 1))
        (//
         (? (= P 6))
         (text "［Ｂ・Ｆ］甘いわ！！")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (? (= P 7))
         (text "［Ｂ・Ｆ］この状態で反撃するとは愚かな奴だ！！")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (? (= P 8))
         (text "［Ｂ・Ｆ］効かぬわ！！")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (? (= P 9))
         (text "［Ｂ・Ｆ］よそ見なんかしやがって！！")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (? (= P 10))
         (text "［Ｂ・Ｆ］鍛え方が違うぜ！！")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (? (= P 11))
         (text "［Ｂ・Ｆ］馬鹿め！！")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))))
   (if (</>
        (//
         (? (= 183 #f))
         (text "［コール］")
         (branch-random
          (</>
           (/ (text "ぐわっ！！"))
           (/ (text "うわっ！！"))
           (/ (text "うっ・・・！！"))
           (/ (text "ぐっ・・・！"))
           (/ (text "く、くそぉ・・・！"))))
         (wait)
         (text-reset 1)
         (text "［Ｂ・Ｆ］")
         (branch-random
          (</>
           (/ (text "俺達ブラッディフォックスに喧嘩を売るとは、１００年　　　　　早ぇんだ！！"))
           (/ (text "これで、少しはブラッディフォックスの恐ろしさが分か　　　　　っただろう！！"))))
         (wait)
         (text-reset 1)
         (exec-mem 17408 3)
         (exec-mem 256 3 0 11 0)
         (exec-mem 256 4 0 7 0)
         (exec-mem 912 "EXIT")
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "GAME END"))))
         (text-reset 1)
         (branch-var
          S
          (</>
           (/
            (exec-mem 9920 0 6 6 113 64 0)
            (nop@)
            (set-reg 183 #f)
            (mes-jump "A:¥MES¥008.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait))))))
        (//
         (? (= 183 #t))
         (text "［Ｂ・Ｆ］野郎！！")
         (wait)
         (text-reset 1)
         (image-file "A:¥GPC¥COUNTER.GPC")
         (image-mem 0 0)
         (exec-mem 15728 0 0 0 3 0 1)
         (exec-mem 15728 1 0 0 0 0 "Z")
         (exec-mem 15728 2 0)
         (exec-mem 14544 2 0)
         (exec-mem 17408 2)
         (exec-mem 15728 3)
         (exec-mem 3744 3 "P" 32768)
         (exec-mem 15728 4)
         (image-file "A:¥GPC¥DB_FRM3.GPC")
         (image-mem 0 0)
         (if (</> (// (? (= Z 1)) (nop@) (set-var P 9))))
         (if (</>
              (//
               (? (= P 5))
               (text "［Ｂ・Ｆ］甘いっ！！")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))
              (//
               (? (= P 6))
               (exec-mem 17408 3)
               (exec-mem 256 3 0 11 0)
               (exec-mem 256 4 0 7 0)
               (exec-mem 912 "PUT 1 2 23,W 0,O 0")
               (exec-mem 912 "EXIT")
               (sound '|se | 1)
               (text "［Ｂ・Ｆ］グェっ！！")
               (wait)
               (text-reset 1)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (image-file "B:¥GPC¥DB016.GPC")
               (image-mem 0 3)
               (image-file "B:¥GPC¥DB019B.GPC")
               (image-mem 1 3)
               (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
               (text "［Ｂ・Ｆ］なかなかヤるじゃねぇか・・・・。だが、今度はそうは　　　　　いかねぇぜ！！")
               (wait)
               (text-reset 1)
               (text "［Ｂ・Ｆ］死ねぇ！！")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2)
               (text "［コール］うわっ！！")
               (wait)
               (text-reset 1)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (text "［Ｂ・Ｆ］馬鹿な野郎だぜ。")
               (wait)
               (text-reset 1)
               (text
                "［Ｂ・Ｆ］しかし、こいつ銃なんか持ち歩いて一体何者なんだ？　　　　　　パープル・スカイの事を聞きだそうとしていたらしいが　　　　　・・・ポリスの回し者か？")
               (wait)
               (text-reset 1)
               (text
                "［Ｂ・Ｆ］知るかよ・・・。とにかく、これだけ殺られたんだ。二　　　　　度と俺達ブラッディフォックスには歯向かわないだろう　　　　　な。")
               (wait)
               (text-reset 1)
               (text "［Ｂ・Ｆ］ハハハハ・・・そりゃそうだ。")
               (wait)
               (text-reset 1)
               (text
                "［Ｂ・Ｆ］そんな事より、最後のパープル・スカイをこいつに注射　　　　　器ごと壊されちまったんだ、また仕入れに行こうぜ。")
               (wait)
               (text-reset 1)
               (text "［Ｂ・Ｆ］そうだな。")
               (wait)
               (text-reset 1)
               (sound '|| 2)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (image-file "B:¥GPC¥DB016.GPC")
               (image-mem 0 3)
               (exec-mem 912 "EXIT")
               (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
               (exec-mem 912 "C 0 40 0 40 400 1 40 0")
               (exec-mem 912 "A 1")
               (image-file "A:¥GPC¥DB_FRM2.GPC")
               (image-mem 1 0)
               (image-file "B:¥GPC¥DB020C2.GPC")
               (image-mem 1 3)
               (exec-mem 912 "GET 0 54 38 23 134")
               (exec-mem 912 "A 0")
               (exec-mem 912 "GET 1 54 38 23 172")
               (exec-mem 912 "A 0,S 0")
               (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
               (sound '|| 0)
               (if (</>
                    (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
                    (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
               (sound '|| 1)
               (text "［コール］あつつつ・・・。")
               (wait)
               (text-reset 1)
               (text "［コール］くそっ、まさか道具を使ってくるとはな・・・油断した　　　　　ぜ・・・。")
               (wait)
               (text-reset 1)
               (text
                "［コール］・・・あいつら、ヤクとか言っていたが・・・あいつら　　　　　の持っていたのは蘇生薬ではなくただの麻薬だったのか　　　　　・・・？")
               (wait)
               (text-reset 1)
               (text "［コール］パープル・スカイとかいう麻薬は、俺は聞いた事がない　　　　　な・・・。")
               (wait)
               (text-reset 1)
               (text
                "［コール］とにかく、こんな所に座っていても仕方がないな。一度　　　　　家に戻るか・・・シーラも心配してるだろうな。")
               (wait)
               (text-reset 1)
               (text "［コール］ん？")
               (wait)
               (text-reset 1)
               (exec-mem 912 "PUT 0 54 38,W 0,O 0")
               (text
                "［コール］紙マッチか・・・あいつらが落として行ったのかな。一　　　　　応、持っていよう。何かの役に立つかもしれないしな。")
               (wait)
               (text-reset 1)
               (text "［コール］いててて・・・こりゃ、またシーラに怒られそうだな。")
               (wait)
               (text-reset 1)
               (exec-mem 912 "PUT 1 54 38,W 0,O 1")
               (exec-mem 912 "EXIT")
               (sound '|| 2)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (mes-jump "A:¥MES¥009.MES"))
              (//
               (? (= P 7))
               (text "［Ｂ・Ｆ］死ねえ！！")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))
              (//
               (? (= P 8))
               (text "［Ｂ・Ｆ］効かぬわ！！")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))
              (//
               (? (= P 9))
               (text "［Ｂ・Ｆ］よそ見なんかしやがって！！")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))
              (//
               (? (= P 10))
               (text "［Ｂ・Ｆ］鍛え方が違うぜ！！")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))
              (//
               (? (= P 11))
               (text "［Ｂ・Ｆ］馬鹿め！！")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))))
         (exec-mem 17408 3)
         (exec-mem 256 3 0 11 0)
         (exec-mem 256 4 0 7 0)
         (exec-mem 912 "EXIT")
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "GAME END"))))
         (text-reset 1)
         (branch-var
          S
          (</>
           (/
            (exec-mem 9920 0 6 6 113 64 0)
            (nop@)
            (set-reg 183 #f)
            (mes-jump "A:¥MES¥008.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait)))
           (/
            (exec-mem 14544 2 2)
            (text "［コール］うわっ！！")
            (wait)
            (text-reset 1)
            (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
            (text "［Ｂ・Ｆ］ケケケケケ、馬鹿な野郎だぜ・・・。")
            (wait)
            (text-reset 1)
            (exec-mem 17408 3)
            (exec-mem 256 3 0 11 0)
            (exec-mem 256 4 0 7 0)
            (exec-mem 912 "EXIT")
            (sound '|| 0)
            (sound '|se | 10)
            (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
            (text "　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
            (menu1
             32
             337
             48
             337
             (</> (/ (str "CONTINUE")) (/ (str "GAME END"))))
            (text-reset 1)
            (branch-var
             S
             (</>
              (/
               (exec-mem 9920 0 6 6 113 64 0)
               (nop@)
               (set-reg 183 #f)
               (mes-jump "A:¥MES¥008.MES"))
              (/
               (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
               (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
               (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
               (loop (wait))))))))))))
 (seg (? (= P 6))
   (branch-random
    (</>
     (/ (text "［コール］女の人が襲われているが、逆光のため表情までは見えな　　　　　いな。") (wait) (text-reset 1))
     (/ (text "［コール］きっとこの女性も、どこかの街からさらわれてきたのだ　　　　　ろう。") (wait) (text-reset 1))
     (/
      (text "［女の人］お願い、助けて！！")
      (wait)
      (text-reset 1)
      (text "［コール］この女は俺に助けを求めているようだ。やはり、ここは　　　　　助けてやった方がいいようだな。")
      (wait)
      (text-reset 1)))))
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB108A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 7 10 25 14)
  (exec-mem 3744 1 6 17 2 24 9)
  (exec-mem 3744 1 7 51 4 54 7)
  (exec-mem 3744 1 8 27 3 36 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB108.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB103.GPC")
  (image-mem 1 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (nop@)
  (set-reg 202 #t)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 195 #f))
        (text "［キャサリン］コール・・・。さっき、コールに話した事は、全て　　　　　　　シーラにも話したわ。")
        (wait)
        (text-reset 1)
        (text "［キャサリン］今まで自分の事情を人に話す事なんて無かったんだ　　　　　　　けど・・・シーラは友達だから・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］そうか・・・それでシーラは？")
        (wait)
        (text-reset 1)
        (text "［キャサリン］私の事をとても想ってくれてる・・・。")
        (wait)
        (text-reset 1)
        (text "［コール］それは良かった・・・。")
        (set-reg 195 #t)
        (wait)
        (text-reset 1))
       (// (text "［キャサリン］コール、どうしたの？") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 8) (= 196 #f))
   (text "［コール］どうだ？　少しは落ち着いたか？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］うん、ありがとう。もう大丈夫よ。それより、私の　　　　　　　義父であるダニエルだけど・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、蘇生薬によって死者を蘇らせたのは、ダニエルに　　　　　ほぼ間違いはないだろう。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］そう・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］君のお母さんが、ダニエルを愛してしまった事は仕方が　　　　　ないよ。だけど、俺にしてみれば蘇生薬を使って罪もな　　　　　い街の人を殺したダニエルは許せないんだ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］・・・分かってる。")
   (set-reg 196 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 197 #f))
   (text "［コール］君にとって、辛い想いをしている事は良く分かってるつ　　　　　もりだよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］うん・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］だけど、俺の友達であるドクの研究を横取りした上に、　　　　　街をあんな状態にしているんだからな。")
   (set-reg 197 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 198 #f))
   (text "［コール］それで、一つ聞きたいんだが・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］何？")
   (wait)
   (text-reset 1)
   (text "［コール］ダニエルがブラッディフォックスを使って、君を誘いだ　　　　　そうとした理由だよ。")
   (wait)
   (text-reset 1)
   (text
    "［キャサリン］判らない・・・。私が家を出てから、もう１年にな　　　　　　　ろうとしているのに、今まで一度だって彼に呼ばれ　　　　　　　るような事はなかったわ。")
   (wait)
   (text-reset 1)
   (text "［コール］ダニエルは蘇生薬を使って死者を蘇らせた・・・。だが　　　　　その前に、君を助けようとしていたんじゃないかな？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］でなければ、今頃になってわざわざ呼んだりはしないだ　　　　　ろう。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］例えあの人がそういった気持ちであっても、私はダ　　　　　　　ニエルを許さない。私達を苦しめ続けてきたのよ。")
   (wait)
   (text-reset 1)
   (text
    "［キャサリン］私としては、もし本当にあの人に悪気があるのなら　　　　　　　すぐに離婚でもしてほしいわ。二度と、私達の前に　　　　　　　現れて欲しくない・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・すまない、余計な事を言ってしまったようだな。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］・・・う、ううん・・・いいのよ。")
   (set-reg 198 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］〔今のキャサリンは少し感情的になっているようだから　　　　　　しばらく一人にしてあげた方がいいな〕")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 199 #f))
   (text "［コール］シーツのシワから見て、キャサリンはずっとここに座っ　　　　　ていたのだろう。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］エッチね、あまり変な詮索はしないで。")
   (wait)
   (text-reset 1)
   (text "［コール］俺はそんな意味で言ったんじゃないよ。")
   (set-reg 199 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］少しベッドで休んだ方がいいんじゃないか？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］大丈夫、私これでも強い方だから・・・。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 200 #f))
   (text "［キャサリン］カーテンは閉めなくていいの。今日、なんだか生暖　　　　　　　かいから・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］暖房器具もないみたいだし、風邪をひかないようにして　　　　　くれよ。")
   (set-reg 200 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［キャサリン］カーテンは開けたままでいいわ。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 201 #f))
   (text "［キャサリン］このカレンダー、７月のままになってたから剥がし　　　　　　　ちゃったの。")
   (set-reg 201 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］あの街が、元の街に戻るのはいつ頃だろう・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］うん・・・そうね。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］じゃあ、これで失礼するよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］・・・うん。心配してくれてありがとう。")
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
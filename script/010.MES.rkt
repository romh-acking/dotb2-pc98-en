(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB022.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 18 4 23 6)
  (exec-mem 3744 1 6 26 5 33 15)
  (exec-mem 3744 1 7 40 10 49 15)
  (exec-mem 3744 1 8 47 3 56 6)
  (exec-mem 3744 1 9 4 10 14 13)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB022.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_03.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_03.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 195 #f))
        (text "［コール］バー・リーズだ。この辺りは、ブラッディフォックスの　　　　　連中のたまり場になっているから注意しないとな。")
        (set-reg 195 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］ここはバー・リーズの店前だ。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 196 #f))
   (text
    "［コール］ここは新聞の記事に載っていたバー・リーズに間違いな　　　　　い。昨日、ここで仲間のブラッディフォックスを７人殺　　　　　した事件が起きたんだ。")
   (wait)
   (text-reset 1)
   (text "［コール］新聞の内容としては、ベン・レイモンドという男はジャ　　　　　ンキーであったと記していた・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］だが、いくらジャンキーだからといっても、７人も殺す　　　　　までに誰かしら止めに入るのが普通だよな・・・。")
   (set-reg 196 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 197 #f))
   (text
    "［コール］ここでパープル・スカイというドラッグが出まわってい　　　　　るのは確かだ。ベン・レイモンドという男もその薬に何　　　　　か関係があるのだろう。")
   (set-reg 197 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］とにかく、中に入ってパープル・スカイという薬につい　　　　　聞いてみた方がいいだろうな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 198 #f))
   (text "［コール］バー・リーズの入口だ。階段を降りた所にドアが見える　　　　　な。")
   (set-reg 198 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 199 #f))
   (text "［コール］入口の側にブラッディフォックスの一人がいる。かなり　　　　　酔っ払っているようだな。")
   (set-reg 199 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］いかにも怪しいバーだ。ブラッディフォックスのたまり　　　　　場には、もってこいの場所だな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 200 #f))
   (text "［Ｂ・Ｆ］ヘッヘッヘッ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ちょっと聞くが、昨日ここで事件が起きたのを知ってい　　　　　るか？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］何度聞かれようが俺は昨日はここには来ていないよ。俺　　　　　は何もしらねぇよ。ヘッヘッヘッ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］誰か来たのか？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］どうせお前もポリスだろ？　何度聞かれようが、俺は何　　　　　もしらねぇよ。ヘッヘッヘッ・・・。")
   (set-reg 200 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 201 #f))
   (text "［Ｂ・Ｆ］あんたの足元、そこにベンの脳ミソが散らばっていたっ　　　　　て話しだぜ・・・ヘッヘッヘッ。")
   (wait)
   (text-reset 1)
   (text "［コール］ベンもブラッディフォックスなのか？")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］俺は何もしらねぇ。昨日は来てないんでな・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］かなり酔っ払ってるみたいだな。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ヘッヘッヘッ・・・。")
   (set-reg 201 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 202 #f))
   (text "［Ｂ・Ｆ］あんた、リーズに入るのかい？")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、そのために来たんだ。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］馬鹿だねぇ・・・半殺しにあうのがオチだぜ？")
   (wait)
   (text-reset 1)
   (text "［コール］喧嘩をしに来たんじゃないよ。昨日の事件について聞き　　　　　たい事があるんだ。")
   (wait)
   (text-reset 1)
   (text "［Ｂ・Ｆ］ヘッヘッヘッ・・・馬鹿だねぇ・・・。")
   (set-reg 202 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］この男はかなり酔っ払ってるみたいだ。あまり話し掛け　　　　　ない方がいいみたいだな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 203 #f))
   (text "［コール］すごい落書きの数だな・・・これは地下鉄の落書きに匹　　　　　敵するぜ。")
   (set-reg 203 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "［コール］何の塗装もしていないコンクリの壁だな。") (wait) (text-reset 1))
 (seg (? (= P 9) (= 204 #f))
   (text "［コール］ブラッディフォックスのバイクが数台停まっているな。　　　　　店の中にはこれらのバイクの持ち主がいるのだろう。")
   (set-reg 204 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (text "［コール］どのバイクも、至る所に泥がついているところを見ると　　　　　あまり手入れをされていないらしいな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 202 #t) (= 204 #t))
   (exec-mem 6064 2 1)
   (text "［コール］よし、早速中に入ってみよう。")
   (set-reg 205 #t)
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥011.MES"))
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
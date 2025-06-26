(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB014.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 24 9 29 11)
  (exec-mem 3744 1 6 6 3 18 6)
  (exec-mem 3744 1 7 40 14 47 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB014.GPC")
  (image-mem 1 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB015C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 170 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 171 #f))
        (text "［コール］中は静まり返っているな・・・。")
        (set-reg 171 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］ベイサイド研究所の中だ。ここは工場になっているな。") (wait) (text-reset 1))))
  (loop
   (if (</>
        (//
         (? (= 173 #t) (= 175 #t) (= 179 #t))
         (text "［女の声］いやあああ！！！")
         (wait)
         (text-reset 1)
         (text "［コール］ん！？　女の悲鳴だ！！")
         (wait)
         (text-reset 1)
         (text "［女の声］誰か助けて！！")
         (wait)
         (text-reset 1)
         (text "［コール］どこだ・・・表か！？")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥008.MES"))))
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (seg-call)))
 (seg (? (= P 5) (= 172 #f))
   (text "［コール］装置を扱う時の注意書きが壁のプレートに書いてある。　　　　　かなり錆付いているために、所々字が読めないな。")
   (set-reg 172 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 173 #f))
   (text "［コール］注意書きを読まなくても、もうここにある装置は完全に　　　　　停止している。装置に対して注意する必要はないな。")
   (set-reg 173 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text
    "［コール］ここが使われなくなってから２年は経っているんだ。少　　　　　し力を入れただけでも、このプレートは簡単に外せそう　　　　　だな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 174 #f))
   (text
    "［コール］太い鉄パイプが何本もこの装置から出ているな。何に使　　　　　われていたのかは分からないが、今となっては機能して　　　　　いないただの鉄屑だ。")
   (set-reg 174 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 175 #f))
   (text
    "［コール］天井に大きな換気口があるところを見ると、この工場が　　　　　使われていた頃はこれらの装置がフルに作動していたた　　　　　め、部屋の気温が相当上がっていたのだろう。")
   (set-reg 175 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］これらの装置には、蘇生薬と思われる液はどこにも付い　　　　　ていないようだ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 176 #f))
   (text "［コール］床には細かいゴミが散らばっている。足元に注意して歩　　　　　かないと、すぐにつまずいてしまうだろう。")
   (set-reg 176 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 177 #f))
   (text
    "［コール］２年前、ここでグールはプラスチック爆弾によって吹き　　　　　飛ばされたんだ。今となってはもうその残骸は残ってい　　　　　ない。")
   (set-reg 177 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 178 #f))
   (text "［コール］きっと警察に処理されたのだろうが、警察はあのロボッ　　　　　トが実際に動いていたとは思っていないだろう。")
   (set-reg 178 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 179 #f))
   (text "［コール］ん？　これは・・・、")
   (wait)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (text "あの時のグールのボディカラーと　　　　　同じものだ・・・。驚いたぜ・・・未だにこんな物が残　　　　　っているとはな・・・。")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (text "［コール］だが今となっては、こんな物はただの残骸でしかない。　　　　　奴は完全に破壊されたのだからな。")
   (set-reg 179 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］床には蘇生薬の液と思われる物はどこにも見当たらない　　　　　な。あの男、まさか嘘を言ったんじゃないだろうな。")
   (wait)
   (text-reset 1))
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
        (/ (nop@) (set-reg 170 #f) (flag-save 1))
        (/ (nop@) (set-reg 170 #f) (flag-save 2))
        (/ (nop@) (set-reg 170 #f) (flag-save 3))
        (/ (nop@) (set-reg 170 #f) (flag-save 4))
        (/ (nop@) (set-reg 170 #f) (flag-save 5))
        (/ (nop@) (set-reg 170 #f) (flag-save 6))
        (/ (nop@) (set-reg 170 #f) (flag-save 7))
        (/ (nop@) (set-reg 170 #f) (flag-save 8))
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
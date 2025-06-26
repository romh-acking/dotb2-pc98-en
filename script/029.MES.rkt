(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB052.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 8 9 11)
  (exec-mem 3744 1 6 27 4 33 7)
  (exec-mem 3744 1 7 20 8 40 14)
  (exec-mem 3744 1 8 21 2 40 3)
  (exec-mem 3744 1 9 51 8 56 11)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB052.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 201 #f))
        (text "［コール］そろそろ日が暮れてきたようだな。")
        (wait)
        (text-reset 1)
        (text "［コール］この赤々と目立っている看板・・・ここがキャサリンの　　　　　言ってたジーナか。")
        (set-reg 201 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］俺はディスコ「ジーナ」の前にいる。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 202 #f))
   (text "［コール］レンガ造りの結構古い建物のようだな。")
   (set-reg 202 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 203 #f))
   (text
    "［コール］ディスコか・・・俺が一番最後にディスコに行ったのは　　　　　６年位前だったな。当時、土曜になると必ずテリーを誘　　　　　って朝まで踊っていたんだ。")
   (set-reg 203 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 204 #f))
   (text
    "［コール］薬の売買が行われているという噂が立っているからな。　　　　　このディスコは、かなり物騒な所らしいから、十分注意　　　　　しないといけないぞ。")
   (set-reg 204 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］早く中に入ってみようぜ。シーラがここに居るかもしれ　　　　　ないからな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 205 #f))
   (text "［コール］大きな龍が壁から顔を出している。俺の場合龍といえば　　　　　どうしても香港をイメージしてしまうんだ。")
   (set-reg 205 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 206 #f))
   (text "［コール］なかなかリアルで迫力のある龍の模型だな。いまにも動　　　　　き出しそうな感じがするよ。")
   (set-reg 206 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 207 #f))
   (text "［コール］龍の手には水晶球がはめ込んであるな。水晶球はネオン　　　　　に反射して七色の光を発している。")
   (set-reg 207 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 208 #f))
   (text "［コール］俺のアパートのドアにも、こんな龍がいたら面白そうだ　　　　　な。")
   (set-reg 208 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［コール］なかなかリアルで迫力のある龍の模型だな。") (wait) (text-reset 1))
 (seg (? (= P 7) (= 209 #f))
   (text "［コール］入口には、カーテンが邪魔をしているため中は見えない　　　　　ようになっている。")
   (set-reg 209 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 210 #f))
   (text "［コール］奥から音楽や人の声が聞こえてくるな。そろそろ夜にな　　　　　ってきたから、お客も増えてきたのだろう。")
   (set-reg 210 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "［コール］シーラが心配だ。早く捜しに行こうぜ。") (wait) (text-reset 1))
 (seg (? (= P 8) (= 211 #f))
   (text "［コール］「ＤＩＳＣＯ　ＺＥＥＮＡ」と綴ったネオン管が赤々と　　　　　光っている。")
   (set-reg 211 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［コール］ネオンが点いているという事は、今は営業しているとい　　　　　う意味だ。早速、中に入ってみようぜ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 202 #f))
   (text "［コール］レンガ造りの結構古い建物のようだな。")
   (set-reg 202 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 203 #f))
   (text
    "［コール］ディスコか・・・俺が一番最後にディスコに行ったのは　　　　　６年位前だったな。当時、土曜になると必ずテリーを誘　　　　　って朝まで踊っていたんだ。")
   (set-reg 203 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 204 #f))
   (text
    "［コール］薬の売買が行われているという噂が立っているからな。　　　　　このディスコは、かなり物騒な所らしいから、十分注意　　　　　しないといけないぞ。")
   (set-reg 204 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (text "［コール］早く中に入ってみようぜ。シーラがここに居るかもしれ　　　　　ないからな。")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］ここにシーラが居てくれればいいが・・・。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥030.MES"))
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
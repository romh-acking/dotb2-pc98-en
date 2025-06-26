(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB041.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 3 2 10 11)
  (exec-mem 3744 1 6 4 12 20 15)
  (exec-mem 3744 1 7 31 5 38 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB041.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 134 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 135 #f))
        (text "［コール］スティーブさん。")
        (wait)
        (text-reset 1)
        (text "［スティーブ］やあ、コールじゃないか。まあそこに座りなさい。")
        (wait)
        (text-reset 1)
        (text "［コール］いえ、俺はここで・・・。")
        (set-reg 135 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］俺は３２分署の捜査課にいる。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 136 #f))
   (text "［コール］壁が一部、舗修されているようだな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］前に犯人が暴れた時に、ポッカリ穴を空けられてし　　　　　　　まってね。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］それに少し傷んできてたから、まとめて修理を頼ん　　　　　　　だのだ。")
   (wait)
   (text-reset 1)
   (text "［コール］警察署の中で暴れるとは、余程気合いの入った犯人です　　　　　ね。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ジャンキーだったからな、少しキレていたのかもし　　　　　　　れんよ。")
   (set-reg 136 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 137 #f))
   (text "［コール］壁にはビニールシートが貼ってあるな。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］まったく・・・壁を工事するのはいいが、いつまで　　　　　　　この道具を置いておくつもりなんだか・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］あ、ほんとだ・・・赤い工具箱が置いてある・・・。")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［スティーブ］はやく壁の修理が終わってほしいものだよ。工具が　　　　　　　邪魔で歩きづらいんだ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 138 #f))
   (text "［コール］ここがスティーブさんのデスクか・・・。")
   (wait)
   (text-reset 1)
   (text
    "［スティーブ］捜査課についてから、デスクワークが増えてしまっ　　　　　　　てね。自分では、捜査に行く方が性に合っていると　　　　　　　思うんだが・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］そう言えば、スティーブさんってボスだったんですね。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］誰がそう言ってたんだ？")
   (wait)
   (text-reset 1)
   (text "［コール］下の人ですよ。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］あのお喋り共め・・・。")
   (set-reg 138 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 139 #f))
   (text "［コール］ボスなら警察署で構えていた方が絵になりますよ。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ハハハ、そう言ってくれると嬉しいよ。")
   (set-reg 139 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 140 #f))
   (text "［コール］スティーブさんの机には、資料と思われる分厚いファイ　　　　　ルがたくさん並んでいる。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］見ても構わんよ。")
   (wait)
   (text-reset 1)
   (text "［コール］ブラッディフォックスの資料ばかりだ・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］それだけ資料を集めても、未だにパープル・スカイ　　　　　　　の情報はごくわずかなんだ・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］スティーブさんがこれだけ苦労しているのに、俺なんか　　　　　にパープル・スカイの情報をつかむ事ができるのだろう　　　　　か？")
   (set-reg 140 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［スティーブ］パープル・スカイの出所を突き止めるのは時間の問　　　　　　　題だよ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 137 #t) (= 140 #t) (= 141 #t) (= 142 #f))
   (text "［スティーブ］あの後も送ってやりたかったんだが、まだ調べ物が　　　　　　　残っていたんでな。")
   (wait)
   (text-reset 1)
   (text "［コール］いえ、そんな事より・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］どうした？")
   (wait)
   (text-reset 1)
   (text "［コール］シーラの事は話しましたよね。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］君のフィアンセだろ？　あの事件にも関っていると　　　　　　　いう・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ええ・・・。実は昨日、家に帰ってみると彼女の姿がな　　　　　くて・・・俺を捜しに行くとメモがあったんです。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］リーズへ！？")
   (wait)
   (text-reset 1)
   (text
    "［コール］ええ・・・慌てて俺はリーズに向かいました。ですが、　　　　　俺が着いた時には既に彼女はパープル・スカイを打たれ　　　　　てしまって・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］そうか・・・。")
   (set-reg 142 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 137 #t) (= 140 #t) (= 141 #t) (= 143 #f))
   (text
    "［コール］今日は、パープル・スカイを打たれたシーラの身体が心　　　　　配で、スティーブさんに相談したいと思いまして来たん　　　　　です。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］パープル・スカイを打たれた時のシーラの症状は？")
   (wait)
   (text-reset 1)
   (text
    "［コール］少しの間だけ気絶していたみたいです。乱暴されそうに　　　　　なっていたため、精神的なダメージを負っているようで　　　　　した。")
   (wait)
   (text-reset 1)
   (text "［コール］彼女の家まで送ったんですが、少しフラついていたみた　　　　　いです。")
   (wait)
   (text-reset 1)
   (text
    "［スティーブ］パープル・スカイの場合、葉っぱと違ってトリップ　　　　　　　する事はないが、一時的に脳への血液の流れを活発　　　　　　　にする作用があるんだ。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］きっと、シーラはそれによる軽い脳しんとうを起こ　　　　　　　したのだろうな。")
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 137 #t) (= 140 #t) (= 141 #t) (= 144 #f))
   (text "［コール］スティーブさん、パープル・スカイに使用されている成　　　　　分で、何か後遺症が残る物とかはないんですか？")
   (wait)
   (text-reset 1)
   (text
    "［スティーブ］あの薬には、昨日話してくれたクーガーという博士　　　　　　　が作った蘇生薬の細胞蘇生に関る成分は、従来の半　　　　　　　分に抑えられているようなんだ。")
   (wait)
   (text-reset 1)
   (text "［コール］蘇生薬自体の成分が５０パーセントしか使われていない　　　　　と？")
   (wait)
   (text-reset 1)
   (text "［コール］とすると、残りの５０パーは何です？")
   (wait)
   (text-reset 1)
   (text "［スティーブ］ヘロインだ。")
   (wait)
   (text-reset 1)
   (text "［コール］ヘロイン・・・。")
   (set-reg 144 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 137 #t) (= 140 #t) (= 141 #t))
   (text
    "［スティーブ］ヘロインの場合、定期的に打つ事がない限り身体へ　　　　　　　の影響は大丈夫だが、パープル・スカイの場合は血　　　　　　　液に滞在している時間が普通のヘロインより・・・")
   (wait)
   (text-reset 1)
   (text
    "［スティーブ］長いため、それが一番の問題となってくるな。滞在　　　　　　　が長いという事は、定期的に打ち続けている事と同　　　　　　　じ効果をもたらしてしまう。")
   (wait)
   (text-reset 1)
   (text
    "［スティーブ］つまり、本来なら打ち続ける事によって生じる身体　　　　　　　への影響が、最初の１回で現れる場合があるという　　　　　　　事だ。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・・・・・・・。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］まぁ、人によっては個人差があるがね・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］身体への影響というのは？")
   (wait)
   (text-reset 1)
   (text
    "［スティーブ］パープル・スカイの一番恐ろしい所だよ。丁度いい　　　　　　　これからパープル・スカイを調べてもらっているラ　　　　　　　イル博士に会いに行くんだ。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］君も一緒にどうかな？")
   (wait)
   (text-reset 1)
   (text "［コール］はい、是非。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］よし、早速行ってみよう。")
   (wait)
   (text-reset 1)
   (nop@)
   (set-reg 145 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥022.MES"))
 (seg (? (= P 7) (= 141 #f))
   (text "［コール］スティーブさんには昨日の礼を言わなければいけないと　　　　　思って・・・ありがとうございました。")
   (wait)
   (text-reset 1)
   (text "［スティーブ］いや、礼を言うのは私の方だよ。貴重な話しを聞か　　　　　　　せてもらったんだからな。")
   (set-reg 141 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［スティーブ］礼を言うのは私の方だよ。昨日は貴重な話しを聞か　　　　　　　せてもらったんだからな。")
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
        (/ (nop@) (set-reg 134 #f) (flag-save 1))
        (/ (nop@) (set-reg 134 #f) (flag-save 2))
        (/ (nop@) (set-reg 134 #f) (flag-save 3))
        (/ (nop@) (set-reg 134 #f) (flag-save 4))
        (/ (nop@) (set-reg 134 #f) (flag-save 5))
        (/ (nop@) (set-reg 134 #f) (flag-save 6))
        (/ (nop@) (set-reg 134 #f) (flag-save 7))
        (/ (nop@) (set-reg 134 #f) (flag-save 8))
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
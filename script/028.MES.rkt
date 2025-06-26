(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB051.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 39 5 46 8)
  (exec-mem 3744 1 6 40 8 47 11)
  (exec-mem 3744 1 7 48 3 56 5)
  (exec-mem 3744 1 8 27 3 35 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB050.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB051.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 190 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 191 #f))
        (text "［女の子］あの・・・何かお店にご用でしょうか？")
        (wait)
        (text-reset 1)
        (text "［コール］あ、失礼。この店に働いているキャサリンを訪ねて来た　　　　　んだけど・・・。")
        (wait)
        (text-reset 1)
        (text "［女の子］キャサリン・・・は私ですが・・・？")
        (wait)
        (text-reset 1)
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
        (sound '|| 1)
        (text "［コール］あ、あんたがキャサリンか。俺、コールって言うんだけ　　　　　ど・・・シーラの事で聞きたい事があってね。")
        (wait)
        (text-reset 1)
        (text "［キャサリン］コールさん・・・あっ！　シーラのフィアンセって　　　　　　　あなただったの？")
        (wait)
        (text-reset 1)
        (text "［コール］まあね。")
        (set-reg 191 #t)
        (wait)
        (text-reset 1))
       (// (text "［コール］シーラの友達のキャサリンがいる。") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 192 #f))
   (text
    "［キャサリン］ここは私が働いているシャッフル・フードよ。レス　　　　　　　トランは休みがないし、最近は人手不足だから、私　　　　　　　は毎日のように出ているわ。")
   (set-reg 192 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 193 #f))
   (text "［コール］店を離れて大丈夫なのか？")
   (wait)
   (text-reset 1)
   (text
    "［キャサリン］今、丁度休憩時間なのよ。暇だから表の掃除をしよ　　　　　　　うと思ってたら、店の前でキョロキョロしている人　　　　　　　がいたから声をかけたのよ。")
   (set-reg 193 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "［コール］シャッフル・フードって、いつもこんなに混んでるの？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］今日は休みだからね・・・平日はこんなにお客さん　　　　　　　は来ないわ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 194 #f))
   (text "［キャサリン］ん？　コール、何か食べてく？")
   (wait)
   (text-reset 1)
   (text "［コール］いや、今はちょっと忙しいからね。今度にするよ。")
   (set-reg 194 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "［キャサリン］コール、何か私に用があって来たんでしょ？") (wait) (text-reset 1))
 (seg (? (= P 7) (= 195 #f))
   (text "［キャサリン］あの看板は大きいから結構目立つのよね。だから、　　　　　　　車で来るお客さんなんかもかなりいるわよ。")
   (set-reg 195 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 196 #f))
   (text "［キャサリン］夜になると電気で黄色く光るのよ。")
   (wait)
   (text-reset 1)
   (text "［コール］夜中は何時までなんだ？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］州警察で、飲食店の営業は夜中２時迄って義務づけ　　　　　　　られているの。")
   (wait)
   (text-reset 1)
   (text "［コール］飲食店も大変だなぁ・・・。")
   (set-reg 196 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "［コール］シャッフル・フードと書いた大きな看板が立っている。")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 197 #f))
   (text "［コール］いつもシーラから話は聞いていたけど、キャサリンって　　　　　なかなか可愛い娘なんだな。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］コールって上手ね。シーラの時もそうやって口説い　　　　　　　たの？")
   (wait)
   (text-reset 1)
   (text "［コール］おいおい、あんまりいじめないでくれよな。")
   (set-reg 197 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 198 #f))
   (text "［キャサリン］それで、今日はどうして私の所に？")
   (wait)
   (text-reset 1)
   (text "［コール］実はシーラが居なくなってね。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］いつ頃から？")
   (wait)
   (text-reset 1)
   (text "［コール］昼過ぎ位に電話したんだけどいなかったんだ。さっき奴　　　　　のマンションに行ったけど・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］そのうち戻ってくるんじゃないかしら？")
   (wait)
   (text-reset 1)
   (text "［コール］いや、それが訳アリでさ。")
   (set-reg 198 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 199 #f))
   (text "［コール］シーラのマンションに行ったら、部屋がメチャメチャに　　　　　荒らされていたんだ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］泥棒？")
   (wait)
   (text-reset 1)
   (text "［コール］判らない・・・。シーラもいなくてね・・。それでキャ　　　　　サリンに聞けば何か判ると思って・・・。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］私の所には来てないけど・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］そうか・・・。")
   (set-reg 199 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 200 #f))
   (text "［コール］シーラの行きそうな場所に何か心当たりはないか？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］そういう事なら、私よりコールの方が知っているん　　　　　　　じゃないかしら？")
   (wait)
   (text-reset 1)
   (text "［コール］俺の心当たりはシャッフル・フードだけだよ。")
   (set-reg 200 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "［キャサリン］彼女の行きそうな場所ね・・・んーと・・・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］どんな事でもいいんだ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］あっ、そういえば・・・昔、一度だけシーラをディ　　　　　　　スコに連れて行った事があるの。")
   (wait)
   (text-reset 1)
   (text "［コール］ディスコに？　あいつ、踊れるのか・・・。")
   (wait)
   (text-reset 1)
   (text
    "［キャサリン］あの時はお酒飲んで結構ＨＩだったから・・。でも　　　　　　　それからシーラはそのディスコに行くようになった　　　　　　　みたい。")
   (wait)
   (text-reset 1)
   (text "［コール］一人で？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］ううん、私を誘ってね。だけど、前からそのディス　　　　　　　コって薬関係の売買が噂になってたのよ。")
   (wait)
   (text-reset 1)
   (text "［コール］薬・・・関係・・・？")
   (wait)
   (text-reset 1)
   (text
    "［キャサリン］ヘロイン、スピード、マリファナ、ラッシュ・・・　　　　　　　ＥＴＣ・・ＥＴＣってね。シーラの所にも売人が来　　　　　　　てたみたいだけど、その頃は軽くあしらってたわ。")
   (wait)
   (text-reset 1)
   (text "［コール］ヘロイン・・・か・・・。そのディスコってどこにある　　　　　んだ？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］ここからすぐ近くよ。ディスコ「ジーナ」っていう　　　　　　　結構若い奴に人気のある店よ。")
   (wait)
   (text-reset 1)
   (text "［コール］場所は？")
   (wait)
   (text-reset 1)
   (text "［キャサリン］そこの道をまっすぐ行った所にポストがあるわ。そ　　　　　　　のポストを左に曲がって４軒目がそうよ。")
   (wait)
   (text-reset 1)
   (text "［コール］判った・・・ありがとう。早速行ってみるよ。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］その店は、結構喧嘩っ早い奴がいるから気をつけて　　　　　　　ね。")
   (wait)
   (text-reset 1)
   (text "［コール］ああ、判った。ありがとう、キャッシー。")
   (wait)
   (text-reset 1)
   (text "［キャサリン］うふふ、あだ名で呼ぶなんてシーラの言ってた通り　　　　　　　コールって優しいのね。")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥029.MES"))
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
        (/ (nop@) (set-reg 190 #f) (flag-save 1))
        (/ (nop@) (set-reg 190 #f) (flag-save 2))
        (/ (nop@) (set-reg 190 #f) (flag-save 3))
        (/ (nop@) (set-reg 190 #f) (flag-save 4))
        (/ (nop@) (set-reg 190 #f) (flag-save 5))
        (/ (nop@) (set-reg 190 #f) (flag-save 6))
        (/ (nop@) (set-reg 190 #f) (flag-save 7))
        (/ (nop@) (set-reg 190 #f) (flag-save 8))
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
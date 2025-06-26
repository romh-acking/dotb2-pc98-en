(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_06.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_06.USO"))))
  (sound '|| 1)
  (text "［死　霊］ＧＵＲＡＡＡＡＡＡＡ！！！")
  (wait)
  (text-reset 1)
  (text "［コール］えっ・・・。")
  (wait)
  (text-reset 1)
  (image-file "B:¥GPC¥DB168.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB168A.GPC")
  (image-mem 1 0)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB169C.GPC")
  (image-mem 1 0)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (text "［コール］な、何故だ・・・確かに脳を破壊したのに！？")
  (wait)
  (text-reset 1)
  (text "［コール］ぐあっ！！")
  (wait)
  (text-reset 1)
  (exec-mem 912 "PUT 0 54 38,W 0,O 0")
  (text "［死　霊］ＧＡＡＡＡＡ・・・・！！")
  (wait)
  (text-reset 1)
  (text "［コール］く、くそ・・・このままでは崖でこいつと心中する事に　　　　　なっちまうぜ・・・どうしたらいいんだ！？")
  (wait)
  (text-reset 1)
  (exec-mem 912 "PUT 1 54 38,W 0,O 1")
  (exec-mem 912 "EXIT")
  (menu1
   27
   317
   39
   317
   51
   317
   (</> (/ (text "死霊を見る")) (/ (text "死霊を殴る")) (/ (text "死霊を蹴る"))))
  (text-reset 1)
  (branch-var
   S
   (</>
    (/ (text "［コール］こいつ、額から血を流している・・俺の撃った弾丸は、　　　　　確かにこいつの脳を破壊している。"))
    (/ (text "［コール］両手はふさがっているんだ。ここで手を離したら、次の　　　　　一瞬で間違いなくこいつは俺の頭をかじる。"))
    (/ (text "［コール］この体勢で死霊を蹴ったところで、こいつはビクともし　　　　　ない。"))))
  (wait)
  (text-reset 1)
  (text "［コール］ぐっ・・・かなり力が強い！！　このまま押され続けた　　　　　ら、俺は間違いなくこの崖から落ちる事になるだろう。")
  (wait)
  (text-reset 1)
  (menu1
   27
   317
   39
   317
   51
   317
   (</> (/ (text "銃を拾う　")) (/ (text "目を潰す　")) (/ (text "突き飛ばす")) (/)))
  (text-reset 1)
  (branch-var
   S
   (</>
    (/ (text "［コール］この体勢で、銃を拾う余裕なんて俺にはない。"))
    (/ (text "［コール］脳を撃っても死なない奴に、目を潰したところで倒せる　　　　　とは思えない。"))
    (/ (text "［コール］死霊は俺をガッチリと掴んでいるため、突き飛ばす事は　　　　　無理だ。"))))
  (wait)
  (text-reset 1)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 2 23 40 238 1 2 23")
  (exec-mem 912 "C 0 40 23 18 238 1 40 23")
  (exec-mem 912 "A 1")
  (text-frame 3 24 56 258)
  (text-reset 1)
  (image-file "B:¥GPC¥DB168_A.GPC")
  (image-mem 0 0)
  (exec-mem 912 "GET 0 2 23 55 238")
  (image-file "B:¥GPC¥DB168_B.GPC")
  (image-mem 0 0)
  (exec-mem 912 "GET 1 2 23 55 238")
  (image-file "B:¥GPC¥DB168_C.GPC")
  (image-mem 0 0)
  (exec-mem 912 "GET 2 2 23 55 238")
  (exec-mem 912 "A 0,S 0")
  (text-frame 15 298 74 356)
  (menu1
   15
   298
   46
   298
   15
   318
   46
   318
   15
   338
   46
   338
   (</>
    (/ (text "もう、何をやっても無理だ・・"))
    (/ (text "もう、俺は殺されるんだな・・"))
    (/ (text "もう、俺が出来る事はない・・"))
    (/ (text "いや、最後まで諦めないぞ・・"))
    (/ (text "いや、スティーブが来るぞ・・"))
    (/ (text "いや、落ちても死なないぞ・・"))))
  (text-reset 1)
  (branch-var
   S
   (</>
    (/ (text "［コール］もうこれ以上、何をやっても無理なんだ・・・。"))
    (/ (text "［コール］俺はここでこいつに殺されるんだな・・・。") (set-reg 127 #t))
    (/ (text "［コール］後は俺に出来る事といったら、落ちる時にこいつを道連　　　　　れにする事ぐらいだな・・・。"))
    (/ (text "［コール］いや、俺は絶対に最後まで諦めないぞ！！"))
    (/ (text "［コール］俺は、寸前の所でスティーブさんが来て助けてくれると　　　　　信じてるぞ。"))
    (/ (text "［コール］俺は例えこの崖から落ちたところで、絶対に死にはしな　　　　　いぞ！！"))))
  (wait)
  (text-reset 1)
  (text "［コール］ヤバい、もう限界だ！！")
  (wait)
  (text-reset 1)
  (image-file "A:¥GPC¥COUNTER.GPC")
  (image-mem 0 0)
  (exec-mem 15728 0 0 1 0 0 1)
  (if (</>
       (// (? (= 127 #t)) (exec-mem 15728 1 0 0 0 1 "Z"))
       (// (exec-mem 15728 1 0 0 0 0 "Z"))))
  (exec-mem 15728 2 1)
  (exec-mem 15728 3)
  (loop
   (if (</>
        (//
         (? (= Z 1) (= 127 #t))
         (exec-mem 15728 4)
         (delay 50 0)
         (image-file "A:¥GPC¥DB_FRM3.GPC")
         (image-mem 0 0)
         (text-frame 3 24 56 258)
         (text-reset 1)
         (delay 5 0)
         (exec-mem 912 "PUT 0 2 23,W 0,O 0")
         (delay 5 0)
         (exec-mem 912 "PUT 1 2 23,W 0,O 0")
         (delay 5 0)
         (exec-mem 912 "PUT 2 2 23,W 0,O 0")
         (delay 5 0)
         (text-frame 3 24 56 258)
         (text-reset 1)
         (exec-mem 912 "EXIT")
         (text-frame 15 298 74 356)
         (text "［コール］！？")
         (wait)
         (text-reset 1)
         (text "［コール］な、何だ！？　目の前が一瞬光ったような・・・。")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (image-file "B:¥GPC¥DB168.GPC")
         (image-mem 0 3)
         (image-file "B:¥GPC¥DB168B.GPC")
         (image-mem 1 0)
         (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
         (exec-mem 912 "A 1,S 0")
         (image-file "B:¥GPC¥DB168D.GPC")
         (image-mem 0 3)
         (exec-mem 912 "A 0,S 0")
         (exec-mem 912 "EXIT")
         (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
         (text "［コール］死霊が・・・今までいた死霊が崖の下に・・・。")
         (wait)
         (text-reset 1)
         (exec-mem 19216 3 25 56 258 0 1 2 117)
         (text "［コール］頭が吹き飛ばされている・・・どういう事だ！？")
         (wait)
         (text-reset 1)
         (text "［コール］いや、待て・・・。あの光・・・一瞬だったが何か懐か　　　　　しい気がした・・・。")
         (wait)
         (text-reset 1)
         (text "［コール］くそっ・・・駄目だ、思い出せない！！")
         (wait)
         (text-reset 1)
         (text "［コール］とにかく、考えるのは後だ。はやく血清を見つけないと　　　　　シーラの身体が心配だからな。")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥101.MES"))
        (//
         (? (= Z 1) (= 127 #f))
         (exec-mem 15728 4)
         (image-file "A:¥GPC¥DB_FRM3.GPC")
         (image-mem 0 0)
         (exec-mem 912 "EXIT")
         (text "［コール］どうやら考えが・・・あ、甘かったようだな・・・。")
         (wait)
         (text-reset 1)
         (text "［死　霊］ＧＷＡＡＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "GAME END"))))
         (text-reset 1)
         (branch-var
          S
          (</>
           (/ (exec-mem 9920 0 6 6 113 64 0) (mes-jump "A:¥MES¥100.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait))))))))))
 (seg*))
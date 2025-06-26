(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_06.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_06.USO"))))
  (sound '|| 1)
  (text "Zombie: GURAAAAAAA!!!")
  (wait)
  (text-reset 1)
  (text "Cole: Whaaa?")
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
  (text "Cole: Why is this happening? I shot him in the head and" 'br)
(text "destroyed his brain, didn't I?")
  (wait)
  (text-reset 1)
  (text "Cole: Ah, shit!")
  (wait)
  (text-reset 1)
  (exec-mem 912 "PUT 0 54 38,W 0,O 0")
  (text "Zombie: GAAAAAAA...!!!")
  (wait)
  (text-reset 1)
  (text "Cole: Shit! At this rate I'm gonna do a lover's leap with" 'br)
(text "this thing... How do I escape!?")
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
   (</> (/ (text "Examine Zombie / Punch Zombie / Kick Zombie")) (/ (text "Examine Zombie / Punch Zombie / Kick Zombie")) (/ (text "Examine Zombie / Punch Zombie / Kick Zombie"))))
  (text-reset 1)
  (branch-var
   S
   (</>
    (/ (text "Cole: It's bleeding from the forehead. I definitely shot it" 'br)
(text "in the brain."))
    (/ (text "Cole: Both my hands are full. By the time I drop what I'm" 'br)
(text "carrying, that thing will bite my head off."))
    (/ (text "Cole: Even if I kick it, it won't flinch."))))
  (wait)
  (text-reset 1)
  (text "Cole: Damn, it's super strong! If it keeps pushing me, I'm" 'br)
(text "going off this cliff!")
  (wait)
  (text-reset 1)
  (menu1
   27
   317
   39
   317
   51
   317
   (</> (/ (text "Grab the gun / Gouge its eyes / Push it away")) (/ (text "Grab the gun / Gouge its eyes / Push it away")) (/ (text "Grab the gun / Gouge its eyes / Push it away")) (/)))
  (text-reset 1)
  (branch-var
   S
   (</>
    (/ (text "Cole: I don't have the space to grab my gun!"))
    (/ (text "Cole: Blinding it's no good if I already shot it in the" 'br)
(text "brain!"))
    (/ (text "Cole: He's got a death grip on me, so I can't push him away!"))))
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
    (/ (text "It's hopeless..."))
    (/ (text "I'm doomed..."))
    (/ (text "I can't do anything..."))
    (/ (text "I won't give up..."))
    (/ (text "Steve will save me..."))
    (/ (text "I can survive the fall..."))))
  (text-reset 1)
  (branch-var
   S
   (</>
    (/ (text "Cole: No matter what I do, it's impossible!"))
    (/ (text "Cole: This thing's about to kill me!") (set-reg 127 #t))
    (/ (text "Cole: All I can do is drag this bastard down with me!"))
    (/ (text "Cole: No, I'm not dying here, goddammit!"))
    (/ (text "Cole: Steve's gonna save my ass at the last minute! It's" 'br)
(text "fine!"))
    (/ (text "Cole: I'm tough enough to survive a fall off a cliff!"))))
  (wait)
  (text-reset 1)
  (text "Cole: This is bad! I'm at my limit!")
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
         (text "Cole: !?")
         (wait)
         (text-reset 1)
         (text "Cole: What the hell was that? There was a bright flash...")
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
         (text "Cole: The zombie... That zombie fell off the cliff...")
         (wait)
         (text-reset 1)
         (exec-mem 19216 3 25 56 258 0 1 2 117)
         (text "Cole: Shit, its head has been obliterated! What the hell" 'br)
(text "happened?")
         (wait)
         (text-reset 1)
         (text "Cole: Wait, that flash I saw... I got the weirdest sense of" 'br)
(text "deja vu...")
         (wait)
         (text-reset 1)
         (text "Cole: Dammit. It's no use, I can't remember!")
         (wait)
         (text-reset 1)
         (text "Cole: Anyway, I can worry about this later. I've gotta find" 'br)
(text "the cure, Sheila doesn't have much time left.")
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
         (text "Cole: My best-laid plans... Fuck!!!")
         (wait)
         (text-reset 1)
         (text "Zombie: GWAAAAA!!!")
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
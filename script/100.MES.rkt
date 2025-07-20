; Dead of the Brain 2 (PC-98) - 100.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; -----Scene:-----
; Cole wrestles with an unkillable zombie on the edge of a cliff.
; -----Quiz:------
; The only choice that matters is picking "I'm doomed..." (???)
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_06.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_06.USO"))))
  (sound '|| 1)
  (str "Zombie: ")(text "ＧＵＲＡＡＡＡＡＡＡ！！！")
  (wait)
  (text-reset 1)
  (str "Cole: Whaaa?")
  (wait)
  (text-reset 1)
  (image-file "B:¥GPC¥DB168.GPC") (image-mem 0 3)
  (image-file "B:¥GPC¥DB168A.GPC") (image-mem 1 0)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC") (image-mem 1 0)
  (image-file "B:¥GPC¥DB169C.GPC") (image-mem 1 0)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (str "Cole: Why is this happening? I shot him in the head and" 'br)
  (str "destroyed his brain, didn't I?")
  (wait)
  (text-reset 1)
  (str "Cole: Ah, shit!")
  (wait)
  (text-reset 1)
  (exec-mem 912 "PUT 0 54 38,W 0,O 0")
  (str "Zombie: ")(text "ＧＡＡＡＡＡ")(str ". . . . ")(text "！！")
  (wait)
  (text-reset 1)
  (str "Cole: Shit! At this rate I'm gonna do a lover's leap with" 'br)
  (str "this thing... How do I escape!?")
  (wait)
  (text-reset 1)								; First quiz
  (exec-mem 912 "PUT 1 54 38,W 0,O 1")
  (exec-mem 912 "EXIT")
  (menu1  27 317  39 317  51 317
   (</> (/ (str " Examine  ")) (/ (str " Punch    ")) (/ (str " Kick     "))))
  (text-reset 1)
  (branch-var
   S
   (</>
    (/
     (str "Cole: It's bleeding from the forehead. I definitely shot it" 'br)
     (str "in the brain."))
    (/
     (str "Cole: Both my hands are full. By the time I drop what I'm" 'br)
     (str "carrying, that thing will bite my head off."))
    (/
     (str "Cole: Even if I kick it, it won't flinch."))))
  (wait)
  (text-reset 1)
  (str "Cole: Damn, it's super strong! If it keeps pushing me, I'm" 'br)
  (str "going off this cliff!")
  (wait)
  (text-reset 1)								; Second quiz
  (menu1  27 317  39 317  51 317
   (</> (/ (str "Grab gun  ")) (/ (str "Gouge eyes")) (/ (str "Push away ")) (/)))
  (text-reset 1)
  (branch-var
   S
   (</>
    (/
     (str "Cole: I don't have the space to grab my gun!"))
    (/
     (str "Cole: Blinding it's no good if I already shot it in the" 'br)
     (str "brain!"))
    (/
     (str "Cole: He's got a death grip on me, so I can't push him away!"))))
  (wait)
  (text-reset 1)								; Third quiz (the choice in this one matters)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 2 23 40 238 1 2 23")
  (exec-mem 912 "C 0 40 23 18 238 1 40 23")
  (exec-mem 912 "A 1")
  (text-frame 3 24 56 258)
  (text-reset 1)
  (image-file "B:¥GPC¥DB168_A.GPC") (image-mem 0 0)
  (exec-mem 912 "GET 0 2 23 55 238")
  (image-file "B:¥GPC¥DB168_B.GPC") (image-mem 0 0)
  (exec-mem 912 "GET 1 2 23 55 238")
  (image-file "B:¥GPC¥DB168_C.GPC") (image-mem 0 0)
  (exec-mem 912 "GET 2 2 23 55 238")
  (exec-mem 912 "A 0,S 0")
  (text-frame 15 298 74 356)
  (menu1
   15 298  46 298
   15 318  46 318
   15 338  46 338
   (</>
    (/ (str " It's hopeless...           "))
    (/ (str " I'm doomed...              "))
    (/ (str " I can't do anything...     "))
    (/ (str " I won't give up...         "))
    (/ (str " Steve will save me...      "))
    (/ (str " I can survive the fall...  "))))
  (text-reset 1)
  (branch-var
   S
   (</>
    (/
     (str "Cole: No matter what I do, it's impossible!"))
    (/
     (str "Cole: This thing's about to kill me!") (set-reg 127 #t))
    (/
     (str "Cole: All I can do is drag this bastard down with me!"))
    (/
     (str "Cole: No, I'm not dying here, goddammit!"))
    (/
     (str "Cole: Steve's gonna save my ass at the last minute! It's" 'br)
     (str "fine!"))
    (/
     (str "Cole: I'm tough enough to survive a fall off a cliff!"))))
  (wait)
  (text-reset 1)
  (str "Cole: This is bad! I'm at my limit!")
  (wait)
  (text-reset 1)
  (image-file "A:¥GPC¥COUNTER.GPC") (image-mem 0 0)
  (exec-mem 15728 0 0 1 0 0 1)
  (if (</>
       (// (? (= 127 #t)) (exec-mem 15728 1 0 0 0 1 "Z"))
       (// (exec-mem 15728 1 0 0 0 0 "Z"))))
  (exec-mem 15728 2 1)
  (exec-mem 15728 3)
  (loop
   (if (</>
        (//
         (? (= Z 1) (= 127 #t))							; Success
         (exec-mem 15728 4) (delay 50 0)
         (image-file "A:¥GPC¥DB_FRM3.GPC") (image-mem 0 0)
         (text-frame 3 24 56 258)
         (text-reset 1) (delay 5 0)
         (exec-mem 912 "PUT 0 2 23,W 0,O 0") (delay 5 0)
         (exec-mem 912 "PUT 1 2 23,W 0,O 0") (delay 5 0)
         (exec-mem 912 "PUT 2 2 23,W 0,O 0") (delay 5 0)
         (text-frame 3 24 56 258)
         (text-reset 1)
         (exec-mem 912 "EXIT")
         (text-frame 15 298 74 356)
         (str "Cole: !?")
         (wait)
         (text-reset 1)
         (str "Cole: What the hell was that? There was a bright flash...")
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
         (str "Cole: The zombie... That zombie fell off the cliff...")
         (wait)
         (text-reset 1)
         (exec-mem 19216 3 25 56 258 0 1 2 117)
         (str "Cole: Shit, its head has been obliterated! What the hell" 'br)
         (str "happened?")
         (wait)
         (text-reset 1)
         (str "Cole: Wait, that flash I saw... I got the weirdest sense of" 'br)
         (str "deja vu...")
         (wait)
         (text-reset 1)
         (str "Cole: Dammit. It's no use, I can't remember!")
         (wait)
         (text-reset 1)
         (str "Cole: Anyway, I can worry about this later. I've gotta find" 'br)
         (str "the cure, Sheila doesn't have much time left.")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥101.MES"))
        (//
         (? (= Z 1) (= 127 #f))							; Failure
         (exec-mem 15728 4)
         (image-file "A:¥GPC¥DB_FRM3.GPC")
         (image-mem 0 0)
         (exec-mem 912 "EXIT")
         (str "Cole: My best-laid plans... Fuck!!!")
         (wait)
         (text-reset 1)
         (str "Zombie: ")(text "ＧＷＡＡＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "END GAME"))))
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
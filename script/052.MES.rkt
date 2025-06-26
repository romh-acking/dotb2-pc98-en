(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB084.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 26 13 46 15)
  (exec-mem 3744 1 6 4 6 8 13)
  (exec-mem 3744 1 7 43 6 56 12)
  (exec-mem 3744 1 8 10 7 19 12)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB083.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB084.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 107 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_04.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_04.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 108 #f))
        (text "Cole: The stench of death is thick in here. I need to do" 'br)
(text "what I came to do and get out.")
        (wait)
        (text-reset 1)
        (text "Cole: That said... I'm not seeing any sign of Steve.")
        (set-reg 108 #t)
        (wait)
        (text-reset 1))
       (//
        (text
         "Cole: This is the ground floor of the 32nd Precinct. There's" 'br)
"bodies of cops and civilians everywhere. I gotta find Steve" 'br)
"and bounce.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 109 #f))
   (text "Cole: It looks like some of the bodies were cops. Not one of" 'br)
(text "'em is holding a gun.")
   (wait)
   (text-reset 1)
   (text "Cole: They probably didn't even have a chance to draw their" 'br)
(text "weapons once the zombies attacked.")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 110 #f))
   (text
    "Cole: The horrific funk from these bodies is steaming up the" 'br)
"room. If it stays like this, we're risking an epidemic.")
   (wait)
   (text-reset 1)
   (text
    "Cole: Steve said it'd be three days until the military" 'br)
"arrived, but by then, that bastard Daniel will be long gone.")
   (wait)
   (text-reset 1)
   (text "Cole: I've gotta track him down before he vanishes.")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 111 #f))
   (text "Cole: Just like two years ago, no matter how many bodies I" 'br)
(text "see, I can't get used to it.")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text
    "Cole: Among the bodies, there are some women... Those" 'br)
"zombies want brains, and they'll attack anyone regardless of" 'br)
"sex.")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 113 #f))
   (text "Cole: There's a drink vending machine on the left. It won't" 'br)
(text "be vending again.")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 114 #f))
   (text
    "Cole: There's a big gash on the vending machine, like it was" 'br)
"hit by something. Makes you wonder what went down when the" 'br)
"zombies attacked.")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: It's a drink vending machine. It's broken.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 115 #f))
   (text "Cole: The entrance I came through. The glass door's been" 'br)
(text "shattered.")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 116 #f))
   (text "Cole: That door's the only way in and out. If the zombies" 'br)
(text "attack, there's no other exit.")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: A cold wind is blowing through the broken door.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 117 #f))
   (text "Cole: These are the stairs to the second floor. I went up" 'br)
(text "these when I visited Steve's Investigation Division.")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 118 #f))
   (text
    "Cole: Steve must have come here to grab the relevant files." 'br)
"He's probably upstairs in the Investigation Division," 'br)
"searching for them now.")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Cole: The Investigation Division is up the stairs. Steve's" 'br)
(text "desk is there too.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 112 #t) (= 116 #t) (= 118 #t))
   (exec-mem 6064 2 1)
   (text "Cole: Okay, let's head up to the second floor. Steve should" 'br)
(text "be in the Investigation Division.")
   (wait)
   (text-reset 1)
   (text "Cole: Wha?")
   (wait)
   (text-reset 1)
   (text "Cole: Just now, it looked like that corpse shifted" 'br)
(text "slightly... Or was that just my imagination?")
   (wait)
   (text-reset 1)
   (text "Cole: Oh shit--")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB083.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB085.GPC")
   (image-mem 1 3)
   ((cmd 193) 0 "B:¥GPA¥DB085A.GPA")
   ((cmd 193) 1 "B:¥GPA¥DB085B.GPA")
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_06.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_06.USO"))))
   (sound '|| 1)
   (text "Zombie: GUUUUURYAAAA!")
   (wait)
   (text-reset 1)
   (text "Cole: Fuck me! They've reanimated!")
   (wait)
   (text-reset 1)
   (text "Zombie: GAAAAAUUUUU!")
   (wait)
   (text-reset 1)
   (image-file "A:¥GPC¥COUNTER.GPC")
   (image-mem 0 0)
   (load-mem "A:¥CLM¥DB085.CLM" 32768)
   (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 3 2 0)
   (exec-mem 3744 1 5 11 4 14 6)
   (exec-mem 3744 1 6 21 3 24 5)
   (exec-mem 3744 1 7 34 5 37 7)
   (exec-mem 3744 1 8 47 3 50 5)
   (exec-mem 15728 0 0 0 5 0 1)
   (exec-mem 15728 1 0 0 0 0 "Z")
   (exec-mem 15728 2 1)
   (exec-mem 15456 0)
   (exec-mem 14544 2 0)
   (exec-mem 15728 3)
   (exec-mem 3744 3 "P" 32768)
   (exec-mem 15728 4)
   (if (</> (// (? (= Z 0)) (nop@) (set-var P 0))))
   (if (</> (// (? (= Z 1)) (nop@) (set-var P 0))))
   (if (</>
        (//
         (? (= P 5))
         ((cmd 196) 0 0)
         ((cmd 196) 0 1)
         (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 0 2)
         (delay 2 0)
         ((cmd 196) 0 3)
         (delay 2 0)
         ((cmd 196) 0 4)
         (delay 2 0)
         ((cmd 196) 0 5)
         (nop@)
         (set-var P 1))))
   (if (</>
        (//
         (? (= P 6))
         ((cmd 196) 1 0)
         ((cmd 196) 1 1)
         (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 1 2)
         (delay 2 0)
         ((cmd 196) 1 3)
         (delay 2 0)
         ((cmd 196) 1 4)
         (delay 2 0)
         ((cmd 196) 1 5)
         (set-var P 1))))
   (if (</>
        (//
         (? (= P 7))
         ((cmd 193) 0 "B:¥GPA¥DB085C.GPA")
         ((cmd 196) 0 0)
         ((cmd 196) 0 1)
         (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 0 2)
         (delay 2 0)
         ((cmd 196) 0 3)
         (delay 2 0)
         ((cmd 196) 0 4)
         (delay 2 0)
         ((cmd 196) 0 5)
         (nop@)
         (set-var P 1))))
   (if (</>
        (//
         (? (= P 8))
         ((cmd 193) 1 "B:¥GPA¥DB085D.GPA")
         ((cmd 196) 1 0)
         ((cmd 196) 1 1)
         (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 1 2)
         (delay 2 0)
         ((cmd 196) 1 3)
         (delay 2 0)
         ((cmd 196) 1 4)
         (delay 2 0)
         ((cmd 196) 1 5)
         (nop@)
         (set-var P 1))))
   (exec-mem 912 "EXIT")
   (image-file "A:¥GPC¥DB_FRM3.GPC")
   (image-mem 0 0)
   (if (</>
        (//
         (? (= P 1))
         (text "Cole: Shit! I managed to take some down, but I'm out of" 'br)
(text "bullets!")
         (wait)
         (text-reset 1)
         (text "Cole: How do I get into these situations? I gotta run!")
         (wait)
         (text-reset 1)
         (text "Cole: But where do I run to?")
         (wait)
         (text-reset 1))
        (//
         (text "Zombie: GWAAAAA!")
         (wait)
         (text-reset 1)
         (text "Cole: Shit! Shit! SHIIIIIIIT!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "EXIT")
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "GAME OVER")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "GAME END"))))
         (text-reset 1)
         (branch-var
          S
          (</>
           (/
            (exec-mem 9920 0 6 6 113 64 0)
            (nop@)
            (set-reg 183 #f)
            (mes-jump "A:¥MES¥052.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait))))))))
   (image-file "A:¥GPC¥COUNTER.GPC")
   (image-mem 0 0)
   (load-mem "A:¥CLM¥DB084.CLM" 32768)
   (exec-mem 3744 1 5 80 0 0 0)
   (exec-mem 3744 1 6 4 6 9 13)
   (exec-mem 3744 1 7 43 6 57 12)
   (exec-mem 3744 1 8 10 7 20 12)
   (exec-mem 15728 0 0 0 5 0 1)
   (exec-mem 15728 1 0 0 0 0 "Z")
   (exec-mem 15728 2 1)
   (exec-mem 15456 0)
   (exec-mem 14544 2 0)
   (exec-mem 15728 3)
   (exec-mem 3744 3 "P" 32768)
   (exec-mem 15728 4)
   (image-file "A:¥GPC¥DB_FRM3.GPC")
   (image-mem 0 0)
   (if (</>
        (//
         (? (= Z 2) (= P 8))
         (text "Cole: Okay, let's head upstairs and try to figure this out!")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥053.MES"))
        (//
         (text "Cole: Over here!")
         (wait)
         (text-reset 1)
         (text "Zombie: GUUUUURYAAAA!")
         (wait)
         (text-reset 1)
         (text "Cole: Shit! Oh, fucking shit!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "EXIT")
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "GAME OVER")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "GAME END"))))
         (text-reset 1)
         (branch-var
          S
          (</>
           (/
            (exec-mem 9920 0 6 6 113 64 0)
            (nop@)
            (set-reg 107 #f)
            (mes-jump "A:¥MES¥052.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait)))))))))
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
        (/ (nop@) (set-reg 107 #f) (flag-save 1))
        (/ (nop@) (set-reg 107 #f) (flag-save 2))
        (/ (nop@) (set-reg 107 #f) (flag-save 3))
        (/ (nop@) (set-reg 107 #f) (flag-save 4))
        (/ (nop@) (set-reg 107 #f) (flag-save 5))
        (/ (nop@) (set-reg 107 #f) (flag-save 6))
        (/ (nop@) (set-reg 107 #f) (flag-save 7))
        (/ (nop@) (set-reg 107 #f) (flag-save 8))
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
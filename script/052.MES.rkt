; Dead of the Brain 2 (PC-98) - 052.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; Inside the wrecked 32nd Precinct.
; --Progression:--
; Inspect everything, then MOVE.
; ----Battle:-----
; 1. Shoot any zombie.
; 2. Move to the stairs.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB084.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 26 13 46 15)						; 	Bodies
  (exec-mem 3744 1 6 4 6 8 13)							; 	Vending Machine
  (exec-mem 3744 1 7 43 6 56 12)						; 	Entrance
  (exec-mem 3744 1 8 10 7 19 12)						; 	Stairs
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB083.GPC") (image-mem 0 3)
  (image-file "B:¥GPC¥DB084.GPC") (image-mem 1 3)
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
        (? (= 108 #f))								; Lead-in from previous MES script
        (str "Cole: The stench of death is thick in here. I need to do" 'br)
        (str "what I came to do and get out.")
        (wait)
        (text-reset 1)
        (str "Cole: That said... I'm not seeing any sign of Steve.")
        (set-reg 108 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: This is the ground floor of the 32nd Precinct." 'br)	; Lead-in from loading game
        (str "There's bodies of cops and civilians everywhere. I gotta" 'br)
        (str "find Steve and bounce.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 109 #f))							; Bodies #1
   (str "Cole: It looks like some of the bodies were cops. Not one" 'br)
   (str "of 'em is holding a gun.")
   (wait)
   (text-reset 1)
   (str "Cole: They probably didn't even have a chance to draw their" 'br)
   (str "weapons once the zombies attacked.")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 110 #f))							; Bodies #2
   (str "Cole: The horrific funk from these bodies is steaming up" 'br)
   (str "the room. If it stays like this, we're risking an epidemic.")
   (wait)
   (text-reset 1)
   (str "Cole: Steve said it'd be three days until the military" 'br)
   (str "arrives, but by then, that bastard Daniel will be long gone.")
   (wait)
   (text-reset 1)
   (str "Cole: I've gotta track him down before he vanishes.")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 111 #f))							; Bodies #3
   (str "Cole: Just like two years ago, no matter how many bodies I" 'br)
   (str "see, I can't get used to it.")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Bodies #4 (repeat line)
   (str "Cole: Among the bodies, there are some women... Those" 'br)
   (str "zombies want brains, and they'll attack anyone regardless" 'br)
   (str "of sex.")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 113 #f))							; Vending Machine #1
   (str "Cole: There's a drink vending machine on the left. It won't" 'br)
   (str "be vending again.")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 114 #f))							; Vending Machine #2
   (str "Cole: There's a big gash on the vending machine, like it" 'br)
   (str "was hit by something. Makes you wonder what went down when" 'br)
   (str "the zombies attacked.")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Vending Machine #3 (repeat line)
   (str "Cole: It's a drink vending machine. It's broken.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 115 #f))							; Entrance #1
   (str "Cole: The entrance I came through. The glass door's been" 'br)
   (str "shattered.")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 116 #f))							; Entrance #2
   (str "Cole: That door's the only way in and out. If the zombies" 'br)
   (str "attack, there's no other exit.")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Entrance #3 (repeat line)
   (str "Cole: A cold wind is blowing through the broken door.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 117 #f))							; Stairs #1
   (str "Cole: These are the stairs to the second floor. I went up" 'br)
   (str "these when I visited Steve's Investigation Division.")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 118 #f))							; Stairs #2
   (str "Cole: Steve must have come here to grab the relevant files." 'br)
   (str "He's probably upstairs in the Investigation Division," 'br)
   (str "searching for them now.")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Stairs #3 (repeat line)
   (str "Cole: The Investigation Division is up the stairs. Steve's" 'br)
   (str "desk is there too.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 112 #t) (= 116 #t) (= 118 #t))				; MOVE (after inspecting everything)
   (exec-mem 6064 2 1)
   (str "Cole: Okay, let's head up to the second floor. Steve should" 'br)
   (str "be in the Investigation Division.")
   (wait)
   (text-reset 1)
   (str "Cole: Wha?")
   (wait)
   (text-reset 1)
   (str "Cole: Just now, it looked like that corpse shifted" 'br)
   (str "slightly... Or was that just my imagination?")
   (wait)
   (text-reset 1)
   (str "Cole: Oh shit−")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB083.GPC") (image-mem 0 3)
   (image-file "B:¥GPC¥DB085.GPC") (image-mem 1 3)
   ((cmd 193) 0 "B:¥GPA¥DB085A.GPA")
   ((cmd 193) 1 "B:¥GPA¥DB085B.GPA")
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_06.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_06.USO"))))
   (sound '|| 1)
   (str "Zombies: ")(text "ＧＵＵＵＵＵＲＹＡＡＡＡＡ！！！")			; 	These zombie cries were originally in full-width romanised characters.
   (wait)
   (text-reset 1)
   (str "Cole: Fuck me! They've reanimated!")
   (wait)
   (text-reset 1)
   (str "Zombies: ")(text "ＧＡＡＡＡＡＵＵＵＵＵ！！！")				; 	I (trentsignia) have decided to retain the full-width, because I think it adds texture to the script
   (wait)
   (text-reset 1)
   (image-file "A:¥GPC¥COUNTER.GPC")						; Battle begins here... (image-mem 0 0)
   (load-mem "A:¥CLM¥DB085.CLM" 32768)
   (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 3 2 0)			; Zombie hotspots defined here
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
   (if (</> (// (? (= Z 0)) (nop@) (set-var P 0))))				; MOVE and SYSTEM buttons disabled
   (if (</> (// (? (= Z 1)) (nop@) (set-var P 0))))
   (if (</>
        (//
         (? (= P 5))
         ((cmd 196) 0 0)
         ((cmd 196) 0 1) (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 0 2) (delay 2 0)
         ((cmd 196) 0 3) (delay 2 0)
         ((cmd 196) 0 4) (delay 2 0)
         ((cmd 196) 0 5)
         (nop@)
         (set-var P 1))))
   (if (</>
        (//
         (? (= P 6))
         ((cmd 196) 1 0)
         ((cmd 196) 1 1) (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 1 2) (delay 2 0)
         ((cmd 196) 1 3) (delay 2 0)
         ((cmd 196) 1 4) (delay 2 0)
         ((cmd 196) 1 5)
         (set-var P 1))))
   (if (</>
        (//
         (? (= P 7))
         ((cmd 193) 0 "B:¥GPA¥DB085C.GPA")
         ((cmd 196) 0 0)
         ((cmd 196) 0 1) (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 0 2) (delay 2 0)
         ((cmd 196) 0 3) (delay 2 0)
         ((cmd 196) 0 4) (delay 2 0)
         ((cmd 196) 0 5)
         (nop@)
         (set-var P 1))))
   (if (</>
        (//
         (? (= P 8))
         ((cmd 193) 1 "B:¥GPA¥DB085D.GPA")
         ((cmd 196) 1 0)
         ((cmd 196) 1 1) (delay 2 0)
         (sound '|se | 13)
         ((cmd 196) 1 2) (delay 2 0)
         ((cmd 196) 1 3) (delay 2 0)
         ((cmd 196) 1 4) (delay 2 0)
         ((cmd 196) 1 5)
         (nop@)
         (set-var P 1))))
   (exec-mem 912 "EXIT")
   (image-file "A:¥GPC¥DB_FRM3.GPC") (image-mem 0 0)
   (if (</>
        (//
         (? (= P 1))								; Success
         (str "Cole: Shit! I managed to take some down, but I'm out of" 'br)
         (str "bullets!")
         (wait)
         (text-reset 1)
         (str "Cole: How do I get into these situations? I gotta run!")
         (wait)
         (text-reset 1)
         (str "Cole: But where do I run to?")
         (wait)
         (text-reset 1))
        (//
         (str "Zombies: ")(text "ＧＷＡＡＡＡＡ！！！")				; Failure
         (wait)
         (text-reset 1)
         (str "Cole: Shit! Shit! SHIIIIIIIT!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "EXIT")
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "　　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "END GAME"))))
         (text-reset 1)
         (branch-var S
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
   (image-file "A:¥GPC¥COUNTER.GPC") (image-mem 0 0)
   (load-mem "A:¥CLM¥DB084.CLM" 32768)						; Hotspots reset to the same four while exploring, more or less
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
   (image-file "A:¥GPC¥DB_FRM3.GPC") (image-mem 0 0)
   (if (</>
        (//
         (? (= Z 2) (= P 8))							; Success
         (str "Cole: Okay, let's head upstairs and try to figure this out!")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥053.MES"))
        (//
         (str "Cole: Over here!")						; Failure
         (wait)
         (text-reset 1)
         (str "Zombies: ")(text "ＧＵＵＵＵＵＲＹＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (str "Cole: Shiiiiiiit!")
         (wait)
         (text-reset 1)
         (exec-mem 912 "EXIT")
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (str "GAME OVER")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "END GAME"))))
         (text-reset 1)
         (branch-var S
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
 (seg (? (= P 2))								; SYSTEM
   (text-reset 1)
   (exec-mem 6064 2 2)
   (menu1
    25 317  39 317  53 317
    (</> (/ (str "  SAVE  ")) (/ (str "  LOAD  ")) (/ (str " CANCEL "))))
   (text-reset 1)
   (if (</> (// (? (= S 255)) (nop@) (set-var S 2))))
   (branch-var S
    (</>
     (/
      (str "Select Save Number.")
      (menu1
       18 317  32 317  46 317  60 317
       18 337  32 337  46 337  60 337  66 298
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
      (branch-var S
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
       18 317  32 317  46 317  60 317
       18 337  32 337  46 337  60 337  66 298
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
      (branch-var S
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
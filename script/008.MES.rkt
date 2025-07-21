; Dead of the Brain 2 (PC-98) - 008.MES
; Translated by Geometrizer
; Edited by trentsignia
; -----Scene:-----
; It's sexual harassment again. I think it's time to start a counter: 2
; --Progression:--
; Inspect the Bloody Fox member fully.
; ----Battle:-----
; 1. Block Fist.
; 2. Punch Face.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB017.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 29 3 36 6)							; 	Bloody Fox
  (exec-mem 3744 1 6 28 7 34 10)						; 	Woman
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB016.GPC") (image-mem 0 3)
  (image-file "B:¥GPC¥DB017.GPC") (image-mem 1 3)
  (nop@)
  (exec-mem 15456 0)
  (nop@)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 2 23 40 238 1 2 23")
  (exec-mem 912 "C 0 40 23 18 238 1 40 23")
  (exec-mem 912 "A 1")
  (image-file "B:¥GPC¥DB016.GPC") (image-mem 0 3)
  (image-file "B:¥GPC¥DB018.GPC") (image-mem 1 3)
  (image-file "B:¥GPC¥DB019.GPC") (image-mem 1 3)
  (exec-mem 912 "GET 0 2 23 54 238")
  (image-file "B:¥GPC¥DB019A.GPC") (image-mem 1 3)
  (exec-mem 912 "GET 1 2 23 55 238")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 180 #f))								; Lead-in from previous MES script
        (str "B.F.: Hold still, bitch!")
        (wait)
        (text-reset 1)
        (str "Woman: No, stop!")
        (wait)
        (text-reset 1)
        (str "Cole: It's Bloody Fox!")
        (set-reg 180 #t)
        (wait)
        (text-reset 1))
       (//
        (str "B.F.: Shut the fuck up!")						; Lead-in from loading game
        (wait)
        (text-reset 1)
        (str "Woman: No!!!")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 181 #f))							; Bloody Fox #1
   (str "Cole: The Bloody Fox members are assaulting that woman..." 'br)
   (str "And I've gotta get answers out of them.")
   (set-reg 181 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 182 #f))							; Bloody Fox #2
   (str "Cole: Wait, is that guy holding a syringe? What's going on" 'br)
   (str "here?")
   (wait)
   (text-reset 1)
   (str "Cole: The Bloody Fox members are assaulting that woman..." 'br)
   (str "And I've gotta get answers out of them.")
   (set-reg 182 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Bloody Fox #3 (repeat line)
   (str "Cole: Hey! What's in that syringe!?")
   (wait)
   (text-reset 1)
   (str "B.F.: Huh? Who the fuck are you?")
   (wait)
   (text-reset 1)
   (str "Cole: Who I am doesn't matter! Tell me what's in there!")
   (wait)
   (text-reset 1)
   (str "Woman: Help me! Please!!!")
   (wait)
   (text-reset 1)
   (str "B.F.: Heh heh heh... You wanna know, you come and get it!")
   (wait)
   (text-reset 1)
   (str "Cole: I guess it's come to this, then...freeze, punks!")
   (wait)
   (text-reset 1)
   (str "B.F.: Whu? You think a little pea-shooter like that's gonna" 'br)
   (str "spook us?")
   (wait)
   (text-reset 1)
   (str "Woman: Help me!!!")
   (wait)
   (text-reset 1)
   (str "B.F.: Whatcha gonna do?")
   (wait)
   (text-reset 1)
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_05.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_05.USO"))))
   (sound '|| 1)
   (str "B.F.: Forget about the girl for now, let's show this" 'br)
   (str "shitfucker how the Bloody Wolves deal with uninvited guests!")
   (wait)
   (text-reset 1)
   (str "B.F.: Heh heh heh... You're fuckin' dead!")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)				; Battle starts here...
   (image-file "B:¥GPC¥DB016.GPC") (image-mem 0 3)
   (image-file "B:¥GPC¥DB018.GPC") (image-mem 1 3)
   (image-file "A:¥GPC¥COUNTER.GPC") (image-mem 0 0)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (load-mem "A:¥CLM¥DB018.CLM" 32768)
   (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 3 2 0)			; Battle's hotspots defined here
   (exec-mem 3744 1 5 5 8 14 13)						; 	Punching fist
   (exec-mem 3744 1 6 29 2 36 7)						; 	Face
   (exec-mem 3744 1 7 10 3 15 5)						; 	Left Bloody Fox
   (exec-mem 3744 1 8 28 12 36 15)						; 	Stomach
   (exec-mem 3744 1 9 46 4 51 6)						; 	Right Bloody Fox
   (exec-mem 3744 1 10 28 8 36 11)						; 	Chest
   (exec-mem 3744 1 11 39 12 46 14)						; 	Other fist
   (exec-mem 15728 0 0 0 5 0 1)
   (exec-mem 15728 1 0 0 0 0 "Z")
   (exec-mem 15728 2 1)
   (exec-mem 17408 2)
   (exec-mem 14544 2 0)
   (exec-mem 15728 3)
   (exec-mem 3744 3 "P" 32768)
   (if (</> (// (? (= Z 1)) (nop@) (set-var P 9))))
   (exec-mem 15728 4)
   (image-file "A:¥GPC¥DB_FRM3.GPC") (image-mem 0 0)
   (if (</>
        (//
         (? (= P 5))								; Punching fist (winning move)
         (exec-mem 912 "PUT 0 2 23,W 0,O 0")
         (str "Cole: Too fast for ya!")
         (wait)
         (text-reset 1)
         (str "B.F.: Shit!")
         (set-reg 183 #t)
         (wait)
         (text-reset 1))
        (//
         (? (= P 6))								; Face
         (str "B.F.: Watch it!")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (? (= P 7))								; Left Bloody Fox
         (str "B.F.: Accept your ass-kickin'!")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (? (= P 8))								; Stomach
         (str "B.F.: You're fucked now!")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (? (= P 9))								; Right Bloody Fox
         (str "B.F.: Look at me when I'm kicking your ass!")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (? (= P 10))								; Chest
         (str "B.F.: Who taught you how to fight?")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))
        (//
         (? (= P 11))								; Other fist
         (str "B.F.: Shithead!")
         (wait)
         (text-reset 1)
         (exec-mem 14544 2 2))))
   (if (</>
        (//
         (? (= 183 #f))								; Game Over sequence for first move
         (str "Cole: ")
         (branch-random
          (</>
           (/ (str "Urgghh!"))
           (/ (str "Pfwaaa!"))
           (/ (str "Uughh!"))
           (/ (str "Oooof!"))
           (/ (str "Sh-shit!"))))
         (wait)
         (text-reset 1)
         (str "B.F.: ")
         (branch-random
          (</>
           (/
             (str "You're a hundred years too early to be pickin' a" 'br)
             (str "fight with Bloody Fox!"))
           (/
             (str "Tell your friends about how tough Bloody Fox is..." 'br)
             (str "Tell them IN HELL!"))))
         (wait)
         (text-reset 1)
         (exec-mem 17408 3)
         (exec-mem 256 3 0 11 0)
         (exec-mem 256 4 0 7 0)
         (exec-mem 912 "EXIT")
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "　　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "END GAME"))))
         (text-reset 1)
         (branch-var
          S
          (</>
           (/
            (exec-mem 9920 0 6 6 113 64 0)					; CONTINUE (reload script)
            (nop@)
            (set-reg 183 #f)
            (mes-jump "A:¥MES¥008.MES"))
           (/
            (text "　　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)	; END GAME (softlock)
            (text "　　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait))))))
        (//
         (? (= 183 #t))
         (str "B.F.: Asshole!")
         (wait)
         (text-reset 1)								; Second move sequence starts here
         (image-file "A:¥GPC¥COUNTER.GPC") (image-mem 0 0)
         (exec-mem 15728 0 0 0 3 0 1)
         (exec-mem 15728 1 0 0 0 0 "Z")
         (exec-mem 15728 2 0)
         (exec-mem 14544 2 0)
         (exec-mem 17408 2)
         (exec-mem 15728 3)
         (exec-mem 3744 3 "P" 32768)
         (exec-mem 15728 4)
         (image-file "A:¥GPC¥DB_FRM3.GPC") (image-mem 0 0)
         (if (</> (// (? (= Z 1)) (nop@) (set-var P 9))))
         (if (</>
              (//
               (? (= P 5))							; Punching fist
               (str "B.F.: Stick and move!")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))
              (//
               (? (= P 6))							; Face (winning move)
               (exec-mem 17408 3)
               (exec-mem 256 3 0 11 0)
               (exec-mem 256 4 0 7 0)
               (exec-mem 912 "PUT 1 2 23,W 0,O 0")
               (exec-mem 912 "EXIT")
               (sound '|se | 1)
               (str "B.F.: Unghhhhhh!")
               (wait)
               (text-reset 1)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (image-file "B:¥GPC¥DB016.GPC") (image-mem 0 3)
               (image-file "B:¥GPC¥DB019B.GPC") (image-mem 1 3)
               (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
               (str "B.F.: You're quick, I'll give you that... But now it's time" 'br)
               (str "for you to join the CLUB!")
               (wait)
               (text-reset 1)
               (str "B.F.: Die, fuckwit!")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2)
               (str "Cole: Urghhh!")
               (wait)
               (text-reset 1)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (str "B.F.: Eat it, you bastard!")
               (wait)
               (text-reset 1)
               (str "B.F.: So who was that dude packing heat? He was asking" 'br)
               (str "about Purple Sky...you figure he's a pig?")
               (wait)
               (text-reset 1)
               (str "B.F.: How should I know? After we beat the shit out of him," 'br)
               (str "he won't cross Bloody Fox again.")
               (wait)
               (text-reset 1)
               (str "B.F.: Ha ha ha...ain't that the truth!")
               (wait)
               (text-reset 1)
               (str "B.F.: But that fucker just wasted our last dose of Purple" 'br)
               (str "Sky. We gotta go restock.")
               (wait)
               (text-reset 1)
               (str "B.F.: Yeah, for sure.")
               (wait)
               (text-reset 1)
               (sound '|| 2)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (image-file "B:¥GPC¥DB016.GPC") (image-mem 0 3)
               (exec-mem 912 "EXIT")
               (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
               (exec-mem 912 "C 0 40 0 40 400 1 40 0")
               (exec-mem 912 "A 1")
               (image-file "A:¥GPC¥DB_FRM2.GPC") (image-mem 1 0)
               (image-file "B:¥GPC¥DB020C2.GPC") (image-mem 1 3)
               (exec-mem 912 "GET 0 54 38 23 134")
               (exec-mem 912 "A 0")
               (exec-mem 912 "GET 1 54 38 23 172")
               (exec-mem 912 "A 0,S 0")
               (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
               (sound '|| 0)
               (if (</>
                    (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
                    (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
               (sound '|| 1)
               (str "Cole: Oof...")
               (wait)
               (text-reset 1)
               (str "Cole: Damn, I didn't expect to get clubbed like that... I" 'br)
               (str "guess that's what happens when you get cocky.")
               (wait)
               (text-reset 1)
               (str "Cole: But they were talking about drugs, right? So the" 'br)
               (str "stuff they had wasn't the reanimation serum, it was just" 'br)
               (str "typical street junk, right...?")
               (wait)
               (text-reset 1)
               (str "Cole: I've never heard of a drug called Purple Sky.")
               (wait)
               (text-reset 1)
               (str "Cole: Anyway, no point sitting around. I should head" 'br)
               (str "home... Sheila's probably worried sick.")
               (wait)
               (text-reset 1)
               (str "Cole: Huh?")
               (wait)
               (text-reset 1)
               (exec-mem 912 "PUT 0 54 38,W 0,O 0")
               (str "Cole: A matchbook... one of them must have dropped it." 'br)
               (str "Might come in handy later.")
               (wait)
               (text-reset 1)
               (str "Cole: Yeowch... Sheila's gonna chew me out for this one.")
               (wait)
               (text-reset 1)
               (exec-mem 912 "PUT 1 54 38,W 0,O 1")
               (exec-mem 912 "EXIT")
               (sound '|| 2)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (mes-jump "A:¥MES¥009.MES"))
              (//
               (? (= P 7))							; Left Bloody Fox
               (str "B.F.: Die!")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))
              (//
               (? (= P 8))							; Stomach
               (str "B.F.: You're fucked now!")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))
              (//
               (? (= P 9))							; Right Bloody Fox
               (str "B.F.: Look at me when I'm kicking your ass!")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))
              (//
               (? (= P 10))							; Chest
               (str "B.F.: Who taught you how to fight?")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))
              (//
               (? (= P 11))							; Other fist
               (str "B.F.: Shithead!")
               (wait)
               (text-reset 1)
               (exec-mem 14544 2 2))))
         (exec-mem 17408 3)							; Game Over sequence for second move
         (exec-mem 256 3 0 11 0)
         (exec-mem 256 4 0 7 0)
         (exec-mem 912 "EXIT")
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "　　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "END GAME"))))
         (text-reset 1)
         (branch-var
          S
          (</>
           (/
            (exec-mem 9920 0 6 6 113 64 0)					; CONTINUE (reload script)
            (nop@)
            (set-reg 183 #f)
            (mes-jump "A:¥MES¥008.MES"))
           (/
            (text "　　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)	; END GAME (softlock)
            (text "　　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait)))
           (/
            (exec-mem 14544 2 2)						; ???
            (str "Cole: Urghhh!")
            (wait)
            (text-reset 1)
            (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
            (str "B.F.: You sack of shit!")
            (wait)
            (text-reset 1)
            (exec-mem 17408 3)
            (exec-mem 256 3 0 11 0)
            (exec-mem 256 4 0 7 0)
            (exec-mem 912 "EXIT")
            (sound '|| 0)
            (sound '|se | 10)
            (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
            (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "END GAME"))))
            (text-reset 1)
            (branch-var
             S
             (</>
              (/
               (exec-mem 9920 0 6 6 113 64 0)					; CONTINUE (reload script)
               (nop@)
               (set-reg 183 #f)
               (mes-jump "A:¥MES¥008.MES"))
              (/
               (text "　　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)	; END GAME (softlock)
               (text "　　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
               (text "　　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
               (loop (wait))))))))))))
 (seg (? (= P 6))								; Woman
   (branch-random
    (</>
     (/
      (str "Cole: They're attacking that woman, but it's too dark to" 'br)
      (str "make out who she is...")
      (wait)
      (text-reset 1))
     (/
      (str "Cole: They must have kidnapped her from another town...")
      (wait)
      (text-reset 1))
     (/
      (str "Woman: Please, help me!")
      (wait)
      (text-reset 1)
      (str "Cole: Poor girl's pleading for help. I better intervene...")
      (wait)
      (text-reset 1)))))
 (seg (? (= P 2))								; SYSTEM
   (exec-mem 6064 2 2)
   (menu1
    25 317  39 317  53 317
    (</> (/ (str "  SAVE  ")) (/ (str "  LOAD  ")) (/ (str " CANCEL "))))
   (text-reset 1)
   (if (</> (// (? (= S 255)) (nop@) (set-var S 2))))
   (branch-var
    S
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
      (text "　　　　　　　　　　　　　　")
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
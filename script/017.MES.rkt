; Dead of the Brain 2 (PC-98) - 017.MES
; Translated by Geometrizer
; Edited by trentsignia
; --Description:--
; Outside Bar Rease again.
; --Progression:--
; MOVE
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB022.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 18 4 23 6)							; 	Sign
  (exec-mem 3744 1 6 26 5 33 15)						; 	Doorway
  (exec-mem 3744 1 7 40 10 49 15)						; 	Bloody Fox
  (exec-mem 3744 1 8 47 3 56 6)							; 	Graffiti
  (exec-mem 3744 1 9 4 10 14 13)						; 	Bikes
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB022.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_03.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_03.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 109 #f))								; Lead-in from previous MES script
        (str "Cole: I made it to Bar Rease. Sheila's got to be in here.")
        (set-reg 109 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: I need to go rescue Sheila!")				; Lead-in from loading game
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 110 #f))							; Sign #1
   (str "Cole: Sheila knew I was going to Bar Rease...she must have" 'br)
   (str "come here to look for me.")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 111 #f))							; Sign #2
   (str "Cole: The sign's lit, so they're still open for business.")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Sign #3 (repeat line)
   (str "Cole: I don't have time to sit here and contemplate a" 'br)
   (str "goddamn sign. I need to hurry and help Sheila!")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 112 #f))							; Doorway #1
   (str "Cole: With the music blasting, I can't hear any individual" 'br)
   (str "voices inside.")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Doorway #2 (repeat line)
   (str "Cole: Those guys from last night might still be creeping" 'br)
   (str "around, so I need to watch my back.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥018.MES"))
 (seg (? (= P 7) (= 113 #f))							; Bloody Fox #1
   (str "B.F.: Yo!")
   (wait)
   (text-reset 1)
   (str "Cole: Who, me?")
   (wait)
   (text-reset 1)
   (str "B.F.: You were here with Steve a little while back," 'br)
   (str "weren'tcha?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah...what about it?")
   (wait)
   (text-reset 1)
   (str "B.F.: I can't fuckin' stand Steve. Even though he ain't a" 'br)
   (str "cop, he keeps bitching about us like he's our boss.")
   (wait)
   (text-reset 1)
   (str "Cole: (These dummies don't even realize he's a legitimate" 'br)
   (str "detective.)")
   (wait)
   (text-reset 1)
   (str "B.F.: I'm gonna beat his ass half to death one day. You" 'br)
   (str "tell him that!")
   (wait)
   (text-reset 1)
   (str "Cole: Why don't you tell him yourself and spare the" 'br)
   (str "middleman?")
   (wait)
   (text-reset 1)
   (str "B.F.: Ahh, it's just that he's such an asshole... Always" 'br)
   (str "getting on my nerves, and he's strong as hell.")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 113 #f))							; Bloody Fox #2
   (str "Cole: Hey, I need to ask you...")
   (wait)
   (text-reset 1)
   (str "B.F.: Spit it out already.")
   (wait)
   (text-reset 1)
   (str "Cole: Did a woman in her mid-20s go in?")
   (wait)
   (text-reset 1)
   (str "B.F.: Yeah, about 15 minutes ago. Headed inside.")
   (wait)
   (text-reset 1)
   (str "Cole: So Sheila is here...")
   (wait)
   (text-reset 1)
   (str "B.F.: What a dumb broad, comin' here all alone.")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Bloody Fox #3 (repeat line)
   (str "B.F.: I drank too much and now I'm payin' the price. Let's" 'br)
   (str "keep the interactions to a minimum.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Graffiti #1
   (str "Cole: As usual, questionable graffiti on the wall.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 114 #f))							; Graffiti #2 (repeat line)
   (str "Cole: Bikes parked outside mean Bloody Fox thugs in the" 'br)
   (str "bar. If Sheila went in there, there's no way they'll let" 'br)
   (str "her out...")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 115 #f))							; Bikes #1
   (str "Cole: If any of those bastards lays a hand on Sheila, they" 'br)
   (str "aren't getting away with it! I don't know what I'm capable" 'br)
   (str "of once I snap.")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))								; Bikes #2 (repeat line)
   (str "Cole: A few bikes parked outside. The mark of Bloody Fox on" 'br)
   (str "the premises.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: Those guys from last night might still be creeping" 'br)
   (str "around, so I need to watch my back.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥018.MES"))
 (seg (? (= P 2))								; SYSTEM
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
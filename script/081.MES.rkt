; Dead of the Brain 2 (PC-98) - 0.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; Cole and Steve arrive at Disbell Cemetery to dig up Doc Cooger.
; -----Notes:-----
; This script is only in use during the "Revive Doc" path.
; --Progression:--
; 
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB133.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 24 3 37 5)							; 	Sign
  (exec-mem 3744 1 6 23 6 37 11)						; 	Gate
  (exec-mem 3744 1 7 4 12 27 15)						; 	Headlights
  (exec-mem 3744 1 8 38 7 56 10)						; 	
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB133.GPC") (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 100 #f))								; Lead-in from previous MES file
        (str "Steve: This is Disbell Cemetery. All the bodies from the" 'br)
        (str "incident in the neighboring town were buried here.")
        (wait)
        (text-reset 1)
        (str "Cole: They said Doc's body exhibited brainwaves, so any" 'br)
        (str "corpse with the reanimation serum in it should be" 'br)
        (str "revivable.")
        (wait)
        (text-reset 1)
        (str "Steve: Probably... But without our help, it's not like the" 'br)
        (str "corpses are going to start crawling out of their graves.")
        (set-reg 100 #t)
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 101 #f))							; Sign #1
   (str "Cole:“Disbell Cemetery”is written over the gate. Last" 'br)
   (str "night, Steve and Lisle came here to exhume Doc's body...")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 102 #f))							; Sign #2
   (str "Steve: Don't worry, there weren't any zombies lurking" 'br)
   (str "around here last night.")
   (wait)
   (text-reset 1)
   (str "Cole: It looks like Daniel's meddling hasn't extended to" 'br)
   (str "the cemetery...")
   (wait)
   (text-reset 1)
   (str "Steve: Daniel is reviving the undead from Calizenne" 'br)
   (str "Cemetery... The one closest to town. This is a much smaller" 'br)
   (str "one.")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Sign #3 (repeat line)
   (str "Cole: Is Doc really resting here in Disbell?")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 103 #f))							; Gate #1
   (str "Steve: Anyone can just open the gate. There's no guards" 'br)
   (str "here, so thieves are free to enter.")
   (wait)
   (text-reset 1)
   (str "Cole: Grave robbers?")
   (wait)
   (text-reset 1)
   (str "Steve: Well, only if their targets are dead. How's it" 'br)
   (str "classified if you steal from a zombie, I wonder...?")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Gate #2 (repeat line)
   (str "Cole: The gate isn't locked.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 104 #f))							; Headlights #1
   (str "Cole: Can we drive the car in?")
   (wait)
   (text-reset 1)
   (str "Steve: The grounds are large, but the gate's too narrow..." 'br)
   (str "The cemetery wasn't originally designed for vehicles to" 'br)
   (str "enter.")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 105 #f))							; Headlights #2
   (str "Cole: The car's headlights are illuminating the grounds.")
   (wait)
   (text-reset 1)
   (str "Steve: My bad, I forgot to kill the engine.")
   (wait)
   (text-reset 1)
   (str "Cole: No, better to keep the engine running. If something" 'br)
   (str "goes down, we can get out of here ASAP.")
   (wait)
   (text-reset 1)
   (str "Steve: Fair enough.")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Headlights #3 (repeat line)
   (str "Steve: From here on, we're on foot, so let's bring a" 'br)
   (str "flashlight.")
   (wait)
   (text-reset 1)
   (str "Cole: Okay.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 106 #f))							; Graves #1
   (str "Cole: The cemetery is dim... It's hard to see anything.")
   (wait)
   (text-reset 1)
   (str "Steve: We have one flashlight.")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 107 #f))							; Graves #2
   (str "Steve: You can make things out under the moonlight...")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Graves #3 (repeat line)
   (str "Cole: The weeds are overgrown... Maybe you can blame the" 'br)
   (str "poor upkeep. If any zombies are lurking, we won't stand a" 'br)
   (str "chance.")
   (wait)
   (text-reset 1)
   (str "Steve: Let's finish this up as quickly as possible and get" 'br)
   (str "back to the lab.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (str "Steve: I'll take the light... Cole, you take the shovel.")
   (wait)
   (text-reset 1)
   (str "Cole: Got it.")
   (wait)
   (text-reset 1)
   (str "Steve: Cooger's grave is a ten-minute walk from here... Be" 'br)
   (str "careful.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 108 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥082.MES"))
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
      (branch-var S
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
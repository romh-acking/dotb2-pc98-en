; Dead of the Brain 2 (PC-98) - 050.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; -----Scene:-----
; Cole visits Catherine in her room after her rescue.
; --Progression:--
; Talk to Catherine.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB108A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 7 10 25 14)						; 	Bed
  (exec-mem 3744 1 6 17 2 24 9)							; 	Window
  (exec-mem 3744 1 7 51 4 54 7)							; 	Calendar
  (exec-mem 3744 1 8 27 3 36 7)							; 	Catherine
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB108.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB103.GPC")
  (image-mem 1 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (nop@)
  (set-reg 202 #t)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 195 #f))								; Lead-in for first visit
        (str "Catherine: Cole... Everything I told you before... I also" 'br)
        (str "told Sheila.")
        (wait)
        (text-reset 1)
        (str "Catherine: I've never told anyone else about my..." 'br)
        (str "situation. But Sheila is a close friend.")
        (wait)
        (text-reset 1)
        (str "Cole: I see.")
        (wait)
        (text-reset 1)
        (str "Catherine: And she cares about me very much...")
        (wait)
        (text-reset 1)
        (str "Cole: It's good to have that kind of support.")
        (set-reg 195 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Catherine: Cole, what's wrong?")					; Lead-in from second visit onwards
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 8) (= 196 #f))							; Catherine #1
   (str "Cole: How's it going? Have you managed to calm down a bit" 'br)
   (str "since the action earlier?")
   (wait)
   (text-reset 1)
   (str "Catherine: Yeah, I'm okay now. But aside from that, about" 'br)
   (str "my stepfather, Daniel...")
   (wait)
   (text-reset 1)
   (str "Cole: There's no doubt about it. Daniel resurrected the" 'br)
   (str "dead with the reanimation serum.")
   (wait)
   (text-reset 1)
   (str "Catherine: So that's the case...")
   (wait)
   (text-reset 1)
   (str "Cole: It's inevitable your mother wound up falling for" 'br)
   (str "Daniel. But I can't forgive him for using the reanimation" 'br)
   (str "serum to kill innocents.")
   (wait)
   (text-reset 1)
   (str "Catherine: I understand.")
   (set-reg 196 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 197 #f))							; Catherine #2
   (str "Cole: I feel like I understand how painful this has been" 'br)
   (str "for you...")
   (wait)
   (text-reset 1)
   (str "Catherine: ...Yeah...")
   (wait)
   (text-reset 1)
   (str "Cole: But after he stole my friend Doc's work and destroyed" 'br)
   (str "our town...")
   (set-reg 197 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 198 #f))							; Catherine #3
   (str "Cole: There's one thing I want to ask.")
   (wait)
   (text-reset 1)
   (str "Catherine: What is it?")
   (wait)
   (text-reset 1)
   (str "Cole: Why did Daniel use Bloody Fox to come get you?")
   (wait)
   (text-reset 1)
   (str "Catherine: I don't know. It's been almost a year since I" 'br)
   (str "left home, and he hasn't called me once.")
   (wait)
   (text-reset 1)
   (str "Cole: Daniel brought back the dead, but was he trying to" 'br)
   (str "keep you safe?")
   (wait)
   (text-reset 1)
   (str "Catherine: ...")
   (wait)
   (text-reset 1)
   (str "Cole: Otherwise, he wouldn't have taken the trouble to get" 'br)
   (str "you to safety.")
   (wait)
   (text-reset 1)
   (str "Catherine: Even if he wanted to protect me, I can't forgive" 'br)
   (str "Daniel. He's caused too much pain.")
   (wait)
   (text-reset 1)
   (str "Catherine: If he's as bad as we think he is, Mom should cut" 'br)
   (str "ties immediately. Neither of us should ever have to see his" 'br)
   (str "face again...")
   (wait)
   (text-reset 1)
   (str "Cole: ...I'm sorry. I shouldn't have said that.")
   (wait)
   (text-reset 1)
   (str "Catherine: N-no... It's okay.")
   (set-reg 198 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Catherine #4 (repeat line)
   (str "Cole: Catherine's a little emotional now, so I should leave" 'br)
   (str "her be for a while.")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 199 #f))							; Bed #1
   (str "Cole: Judging by how the sheets have been moved, Catherine" 'br)
   (str "has been sitting here for quite some time.")
   (wait)
   (text-reset 1)
   (str "Catherine: Don't be a pervert, Cole.")
   (wait)
   (text-reset 1)
   (str "Cole: Ah, I didn't mean to come across that way.")
   (set-reg 199 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Bed #2 (repeat line)
   (str "Cole: Shouldn't you rest on the bed for a bit?")
   (wait)
   (text-reset 1)
   (str "Catherine: It's all right, I can make it through worse.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 200 #f))							; Window #1
   (str "Catherine: You don't have to close the curtains. It's kind" 'br)
   (str "of warm today.")
   (wait)
   (text-reset 1)
   (str "Cole: It doesn't look like there's a heater in here, so" 'br)
   (str "don't catch a cold.")
   (set-reg 200 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Window #2 (repeat line)
   (str "Catherine: The curtains can stay open.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 201 #f))							; Calendar #1
   (str "Catherine: I finally changed the calendar since it was" 'br)
   (str "still on July.")
   (set-reg 201 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Calendar #2 (repeat line)
   (str "Cole: I wonder when the city can return to the way it once" 'br)
   (str "was...")
   (wait)
   (text-reset 1)
   (str "Catherine: Soon, I hope.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: Well then, I'll be going.")
   (wait)
   (text-reset 1)
   (str "Catherine: Thanks for your concern, Cole.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥039.MES"))
 (seg (? (= P 2))								; SYSTEM
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
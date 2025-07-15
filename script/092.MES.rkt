; Dead of the Brain 2 (PC-98) - 092.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; In Razovan's lab.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB145.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 4 11 29 13)						; 	Bed
  (exec-mem 3744 1 6 47 13 55 15)						; 	Bars
  (exec-mem 3744 1 7 7 2 26 3)							; 	Lights
  (exec-mem 3744 1 8 28 10 43 15)						; 	Scalpel
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB145.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 158 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 175 #f))								; Lead-in for first visit
        (str "Cole: Oof... The stench of death is in the air.")
        (wait)
        (text-reset 1)
        (str "Cole: From what I can tell, this is basically a lab...")
        (set-reg 175 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: As soon as I came in here, I could smell the dead..." 'br)	; Lead-in from second visit
        (str "You don't get used to that.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 176 #f))							; Bed #1
   (str "Cole: There's a human hand sticking out from the bedsheet." 'br)
   (str "It's not moving, so its owner is likely no longer with us.")
   (set-reg 176 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 177 #f))							; Bed #2
   (str "Cole: Blood's splattered all around the bed. Daniel must" 'br)
   (str "have been conducting human experiments on these corpses.")
   (set-reg 177 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Bed #3 (repeat line)
   (str "Cole: Better leave it be. I'm not such a freak that I want" 'br)
   (str "to look at a body that's been chopped up by Daniel.")
   (set-reg 178 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 179 #f))							; Bars #1
   (str "Cole: Huh? There are iron bars here.")
   (wait)
   (text-reset 1)
   (str "Cole: A man's corpse is inside... I have a bad feeling" 'br)
   (str "about this.")
   (set-reg 179 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 180 #f))							; Bars #2
   (str "Cole: Judging by the bars, Daniel might have been studying" 'br)
   (str "the zombies he revived with the reanimation serum.")
   (wait)
   (text-reset 1)
   (str "Cole: And the outcome of that research was Purple Sky...")
   (set-reg 180 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 181 #f))							; Bars #3
   (str "Cole: That corpse was injected repeatedly with the" 'br)
   (str "reanimation serum.")
   (wait)
   (text-reset 1)
   (str "Cole: When they're repeatedly killed and reanimated, their" 'br)
   (str "bodies develop a rejection that renders them totally" 'br)
   (str "immobile.")
   (set-reg 181 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Bars #4 (repeat line)
   (str "Cole: A prison for Daniel's zombie slaves. Looking at that" 'br)
   (str "corpse, I can sense Daniel's obsession with the reanimation" 'br)
   (str "serum.")
   (set-reg 182 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 183 #f))							; Lights #1
   (str "Cole: A large light fixture is mounted above the bed. It's" 'br)
   (str "powered off.")
   (set-reg 183 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Lights #2 (repeat line)
   (str "Cole: That's a pretty impressive overhead light for a drug" 'br)
   (str "lab.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 178 #t) (= 182 #t) (= 184 #t))				; Scalpel (after looking at bed and bars)
   (str "Cole: A laser scalpel has been placed on top of the" 'br)
   (str "corpse... It's like a hospital operating room from hell.")
   (set-reg 185 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 184 #f))							; Scalpel #1
   (str "Cole: I feel like I've seen something like this before on" 'br)
   (str "TV...")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, that's absolutely a laser scalpel they use in" 'br)
   (str "surgeries.")
   (set-reg 184 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Scalpel #2 (repeat line)
   (str "Cole: Why would a pharma lab need an expensive laser" 'br)
   (str "scalpel?")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: I guess I'll head back to the hallway for now.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥091.MES"))
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
        (/ (nop@) (set-reg 158 #f) (flag-save 1))
        (/ (nop@) (set-reg 158 #f) (flag-save 2))
        (/ (nop@) (set-reg 158 #f) (flag-save 3))
        (/ (nop@) (set-reg 158 #f) (flag-save 4))
        (/ (nop@) (set-reg 158 #f) (flag-save 5))
        (/ (nop@) (set-reg 158 #f) (flag-save 6))
        (/ (nop@) (set-reg 158 #f) (flag-save 7))
        (/ (nop@) (set-reg 158 #f) (flag-save 8))
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
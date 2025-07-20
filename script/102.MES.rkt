; Dead of the Brain 2 (PC-98) - 102.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; -----Scene:-----
; Cole finds Doc's satchel containing his reanimation serum research and cure.
; --Progression:--
; 
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB173.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 38 12 47 13)						; 	
  (exec-mem 3744 1 6 17 8 31 12)						; 	
  (exec-mem 3744 1 7 30 4 40 7)							; 	
  (exec-mem 3744 1 8 4 7 12 10)							; 	
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB173.GPC")
  (image-mem 0 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB174C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 138 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
        (sound '|| 1))))
  (if (</>
       (// (? (= 139 #f))							; Lead-in from previous MES file
        (str "Cole: There it is! I finally found the bag!")
        (set-reg 139 #t))
       (//
        (str "Cole: This is definitely Doc's bag."))))				; Lead-in from loading game
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 140 #f))							; 
   (str "Cole: Doc had tripped over something and dropped the bag" 'br)
   (str "here, and the impact broke the reanimation serum's flask.")
   (set-reg 140 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 141 #f))							; 
   (str "Cole: If nobody cleaned up the shards, then no one's been" 'br)
   (str "here for the last two years...")
   (set-reg 141 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; 
   (str "Cole: This is a glass shard from the vial that contained" 'br)
   (str "the reanimation serum.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 142 #f))							; 
   (str "Cole: No doubt about it, that's Doc's bag. Amazing it's" 'br)
   (str "still here.")
   (set-reg 142 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 143 #f))							; 
   (str "Cole: The cure's supposed to be in that bag. But I hope the" 'br)
   (str "container wasn't broken...")
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; 
   (str "Cole: Okay, no time to lose, let's check it out.")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (str "Cole: It's here! The cure Doc was talking about!")
   (wait)
   (text-reset 1)
   (str "Cole: Huh, there's a notebook in here too... I'll take it" 'br)
   (str "with me, just in case.")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (str "Cole: Now I can save Sheila! Okay, I gotta get back to the" 'br)
   (str "lab!")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   ((cmd 209) 0 5)
   (dec-var T M)
   (exec-mem 9920 0 6 6 113 64 0)
   ((cmd 209) 1 5)
   (sound '|| 0)
   (image-file "B:¥GPC¥DB070.GPC") (image-mem 0 3)
   (image-file "B:¥GPC¥DB155.GPC") (image-mem 1 3)
   (image-file "B:¥GPC¥DB071.GPC") (image-mem 1 3)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (sound '|| 1)
   (str "Steve: Cole, are you okay?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah! I got jumped by a zombie, but it's dead now.")
   (wait)
   (text-reset 1)
   (str "Cole: Is Sheila still okay?")
   (wait)
   (text-reset 1)
   (str "Steve: She's fine, still resting in bed. The cure?")
   (wait)
   (text-reset 1)
   (str "Cole: I've got it right here. But before that, one thing...")
   (wait)
   (text-reset 1)
   (str "Steve: What's wrong?")
   (wait)
   (text-reset 1)
   (str "Cole: Please... Come to my room for a second.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥103.MES"))
 (seg (? (= P 7) (= 144 #f))							; 
   (str "Cole: The upkeep here's dismal. The graves are in a filthy" 'br)
   (str "state.")
   (set-reg 144 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 145 #f))							; 
   (str "Cole: The rear of a tombstone. The name must be carved on" 'br)
   (str "the other side.")
   (set-reg 145 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; 
   (str "Cole: If I remember correctly, when Doc and I were running" 'br)
   (str "away, the flask with the serum hit this tombstone and" 'br)
   (str "shattered...")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 146 #f))							; 
   (str "Cole: Huh?")
   (wait)
   (text-reset 1)
   (str "Cole: Something's moving in the bushes...")
   (wait)
   (text-reset 1)
   (str "Cole: Maybe it's just the wind...")
   (set-reg 146 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 147 #f))							; 
   (str "Cole: Something's still moving!")
   (wait)
   (text-reset 1)
   (str "Cole: Who's there?")
   (wait)
   (text-reset 1)
   (str "Cat: Meow...")
   (wait)
   (text-reset 1)
   (str "Cole: Ah, just a cat. Damn, I'm on edge.")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; 
   (str "Cole: The cat left, so the bushes are still again.")
   (wait)
   (text-reset 1))
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
        (/ (nop@) (set-reg 138 #f) (flag-save 1))
        (/ (nop@) (set-reg 138 #f) (flag-save 2))
        (/ (nop@) (set-reg 138 #f) (flag-save 3))
        (/ (nop@) (set-reg 138 #f) (flag-save 4))
        (/ (nop@) (set-reg 138 #f) (flag-save 5))
        (/ (nop@) (set-reg 138 #f) (flag-save 6))
        (/ (nop@) (set-reg 138 #f) (flag-save 7))
        (/ (nop@) (set-reg 138 #f) (flag-save 8))
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
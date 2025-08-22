; Dead of the Brain 2 (PC-98) - 070.MES
; Translated by Geometrizer
; Edited by trentsignia
; --Description:--
; The front office on the first floor of the institute.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB123.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 33 13 40 15)						; 	
  (exec-mem 3744 1 6 41 10 50 12)						; 	
  (exec-mem 3744 1 7 12 7 26 9)							; 	
  (exec-mem 3744 1 8 9 11 29 15)						; 	
  (exec-mem 3744 1 9 4 6 9 11)							; 	
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB123.GPC") (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 133 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 139 #f))
        (str "Cole: Aw man... So nasty...")
        (set-reg 139 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: I really don't want to be here...")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 140 #f))
   (str "Cole: This is the zombie that Steve had to execute. His" 'br)
   (str "brain's been totally scrambled, so it's all over for him.")
   (set-reg 140 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 141 #f))
   (str "Cole: Steve's a master marksman... He drilled that bullet" 'br)
   (str "straight through the zombie's melon.")
   (set-reg 141 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (str "Cole: That zombie's brains are all over the place. The" 'br)
   (str "distinctive smell of gray matter has been assaulting my" 'br)
   (str "nose for a while now.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 142 #f))
   (str "Cole: A female corpse is lying prone. I guess she was also" 'br)
   (str "a zombie.")
   (set-reg 142 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 143 #f))
   (str "Cole: I can't show any mercy on lady zombies. They'll" 'br)
   (str "attack anyone indiscriminately, just like male zombies.")
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 144 #f))
   (str "Cole: This zombie must have gotten in too... I never" 'br)
   (str "expected them to make it all the way from the city.")
   (set-reg 144 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (str "Cole: Her brain's been destroyed. She ain't getting up" 'br)
   (str "again.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 145 #f))
   (str "Cole: There's a whiteboard stained with blood.")
   (set-reg 145 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (str "Cole: I don't see any more zombies near the whiteboard. I" 'br)
   (str "wonder if any are left.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 146 #f))
   (str "Cole: There are tons of documents scattered over the desk.")
   (set-reg 146 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 147 #f))
   (str "Cole: Nothing under the desk. Probably a good thing.")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (str "Cole: It looks like there aren't any zombies near the desk.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 148 #f))
   (str "Cole: I can't imagine there's a zombie lurking inside the" 'br)
   (str "locker...?")
   (set-reg 148 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 149 #f))
   (str "Cole: Confirming it... No zombies in the lockers.")
   (set-reg 149 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (str "Cole: I really don't need to poke around the locker" 'br)
   (str "anymore. We've established the no-zombie thing.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: Okay, let's head outside.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 127 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥068.MES"))
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
        (/ (nop@) (set-reg 133 #f) (flag-save 1))
        (/ (nop@) (set-reg 133 #f) (flag-save 2))
        (/ (nop@) (set-reg 133 #f) (flag-save 3))
        (/ (nop@) (set-reg 133 #f) (flag-save 4))
        (/ (nop@) (set-reg 133 #f) (nop@) (set-reg 133 #f) (flag-save 5))
        (/ (nop@) (set-reg 133 #f) (flag-save 6))
        (/ (nop@) (set-reg 133 #f) (flag-save 7))
        (/ (nop@) (set-reg 133 #f) (flag-save 8))
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
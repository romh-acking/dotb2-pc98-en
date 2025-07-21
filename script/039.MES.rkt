; Dead of the Brain 2 (PC-98) - 039.MES
; Translated by Geometrizer
; Edited by trentsignia
; -----Scene:-----
; Cole looks around the Perain Research Institute.
; -----Notes:-----
; This is a "hub" script that Cole first enters after escaping the town, then later returns to after he's rescued Catherine.
; -----Progression:-----
; 1. Go to Sheila's room.
; 2. Go to the lab.
; 3. Go to Sheila's room again.
; [...]
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB070.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 46 5 51 15)						; 	Cole's Room		(Far Right)
  (exec-mem 3744 1 6 20 7 23 13)						; 	Sheila's Room		(Second from Left)
  (exec-mem 3744 1 7 37 7 40 13)						; 	Catherine's Room	(Second from Right)
  (exec-mem 3744 1 8 9 5 14 15)							; 	Locked Room		(Far Left)	
  (exec-mem 3744 1 9 27 8 32 12)						; 	Lab			(Middle)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB070.GPC") (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
  (sound '|| 1)
  (loop
   (text-frame 15 298 74 356)
   (text-reset 1)
   (str "Cole: So where to next?")
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (seg-call)))
 (seg (? (= P 5) (= 146 #t))							; Cole's Room (After talking to Lisle)
   (text-reset 1)
   (str "Cole: This was the room they're letting me use. Maybe it's" 'br)
   (str "time for a break.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥040.MES"))
 (seg (? (= P 5))								; Cole's Room (Before talking to Lisle)
   (text-reset 1)
   (str "Cole: What room is this, I wonder?")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥040.MES"))
 (seg (? (= P 6) (= 178 #t))							; Sheila's Room (After rescuing Catherine)
   (text-reset 1)
   (str "Cole: I'll head to Sheila's room.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥049.MES"))
 (seg (? (= P 6) (= 146 #t))							; Sheila's Room (After talking to Lisle)
   (text-reset 1)
   (str "Cole: I'll head to Sheila's room.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥043.MES"))
 (seg (? (= P 6))								; Sheila's Room (First visit)
   (text-reset 1)
   (str "Cole: The room at the far left is the one Sheila's using.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥038.MES"))
 (seg (? (= P 7) (= 178 #t))							; Catherine's Room (After rescuing her)
   (text-reset 1)
   (str "Cole: This is Catherine's room.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥050.MES"))
 (seg (? (= P 7))								; Catherine's Room (Vacant)
   (text-reset 1)
   (if (</>
        (//
         (? (= 123 #t))
	 (str "Cole: This room's vacant..."))
        (//
         (str "Cole: Is this room vacant?"))))					; (First visit)
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥041.MES"))
 (seg (? (= P 8) (= 100 #f))							; Locked Room #1
   (text-reset 1)
   (str "Cole: Whose room is this?")
   (wait)
   (text-reset 1)
   (str "Cole: Huh? Locked and won't open.")
   (set-reg 100 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 101 #f))							; Locked Room #2
   (text-reset 1)
   (str "Cole: Door's locked and I'm not getting in.")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Locked Room #3 (repeat line)
   (text-reset 1)
   (str "Cole: Locked. Can't get in.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 178 #t))							; Lab (After rescuing Catherine)
   (text-reset 1)
   (str "Cole: Let's head back to the lab.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥048.MES"))
 (seg (? (= P 9) (= 110 #f))							; Lab (Before seeing Sheila)
   (text-reset 1)
   (str "Cole: I should meet up with Sheila before going to the lab." 'br)
   (str "I've been trying to find her all day, I've got a lot of" 'br)
   (str "questions.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9))								; Lab (After seeing Sheila)
   (text-reset 1)
   (str "Cole: Okay, off to Lisle's lab.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥042.MES"))
 (seg (? (= P 2))								; SYSTEM
   (text-reset 1)
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
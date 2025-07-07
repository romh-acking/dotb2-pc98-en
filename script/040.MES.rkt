; Dead of the Brain 2 (PC-98) - 040.MES
; Translated by Geometrizer
; Edited by trentsignia
; --Description:--
; Cole's room, although he doesn't know this at first.
; --Progression:--
; MOVE.
; -----Notes:-----
; This room is described as vacant until Cole talks to Lisle in script 042.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB101.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 37 5 54 10)						; 	Lockers
  (exec-mem 3744 1 6 20 3 27 13)						; 	Door
  (exec-mem 3744 1 7 4 12 17 15)						; 	Desk
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB101.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 117 #f) (= 146 #t))						; Lead-in for first visit (after talking to Lisle)
        (str "Cole: This is the room Dr. Lisle said I could use.")
        (set-reg 117 #t)
        (wait)
        (text-reset 1))
       (//
        (? (= 146 #t))								; Lead-in from second visit onwards (after talking to Lisle)
        (str "Cole: This is my room at the Perain Institute.")
        (wait)
        (text-reset 1))
       (//
        (? (= 116 #f))								; Lead-in for first visit (before talking to Lisle)
        (str "Cole: Huh? This room is...")
        (set-reg 116 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: This room was vacant...")					; Lead-in from second visit onwards (before talking to Lisle)
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 118 #f))							; Lockers #1
   (str "Cole: Judging by the lockers, this must be the lab's" 'br)
   (str "waiting room.")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 119 #f))							; Lockers #2
   (str "Cole: All these lockers are locked. I'm not getting into" 'br)
   (str "any of them. That's how lockers work.")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Lockers #3 (repeat line)
   (str "Cole: It's a row of locked lockers.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 120 #f))							; Door #1
   (str "Cole: I came in through this door. It leads to the corridor.")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Door #2 (repeat line)
   (str "Cole: A plain door with no lock.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 121 #f))							; Desk #1
   (str "Cole: There's a desk on the left, and the pipe-frame bed" 'br)
   (str "I'm sitting on.")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 122 #f))							; Desk #2
   (str "Cole: There's drawers in this desk, but nothing inside 'em.")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Desk #3 (repeat line)
   (str "Cole: There's a thick layer of dust on this desk. It hasn't" 'br)
   (str "been used lately.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: Enough excitement, back to the hallway.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥039.MES"))
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
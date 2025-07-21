; Dead of the Brain 2 (PC-98) - 022.MES
; Translated by Geometrizer
; Edited by trentsignia
; -----Scene:-----
; Cole and Steve head to the Perain Research Institute on the outskirts of town.
; --Progression:--
; MOVE.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB042.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 22 2 37 9)							; 	Building
  (exec-mem 3744 1 6 5 9 17 14)							; 	Entrance
  (exec-mem 3744 1 7 52 6 56 12)						; 	Stairs
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB042.GPC") (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 145 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 146 #f))								; Lead-in from previous MES script
        (str "Steve: We're here. This is the Perain Research Institute.")
        (wait)
        (text-reset 1)
        (str "Cole: I wouldn't expect there to be a research institute" 'br)
        (str "all the way out here... What kind of research are they" 'br)
        (str "doing?")
        (wait)
        (text-reset 1)
        (str "Steve: They help us out with IDing various substances and" 'br)
        (str "other tests on drugs.")
        (set-reg 146 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: So someone at Perain is researching Purple Sky...")		; Lead-in from loading game
        (wait)
        (text-reset 1)
        (str "Steve: Come on, let's head in.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 147 #f))							; Building #1
   (str "Cole: It's a three-story lab. Just looking at the garden," 'br)
   (str "it seems pretty spacious.")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 148 #f))							; Building #2
   (str "Cole: This lab's far out from town. It's quiet and has a" 'br)
   (str "welcoming environment.")
   (set-reg 148 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Building #3 (repeat line)
   (str "Cole: It sounds like Steve is pretty close with the doctor" 'br)
   (str "in charge here.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 150 #f))							; Entrance #1
   (str "Cole: The entrance is marked 'Perain Lab.' That's a name" 'br)
   (str "you don't hear every day.")
   (wait)
   (text-reset 1)
   (str "Cole: Since we're here to investigate Purple Sky, we should" 'br)
   (str "have lots of questions ready for the doctor.")
   (set-reg 150 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Entrance #2 (repeat line)
   (str "Cole: Since we're here to investigate Purple Sky, we should" 'br)
   (str "have lots of questions ready for the doctor.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 151 #f))							; Stairs #1
   (str "Cole: There's an emergency staircase to the right of the" 'br)
   (str "building.")
   (set-reg 151 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 152 #f))							; Stairs #2
   (str "Cole: The emergency staircase leads up to the second floor.")
   (set-reg 152 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Stairs #3 (repeat line)
   (str "Steve: Cole, the main entrance is right ahead. Why are you" 'br)
   (str "looking like you're gonna run up the emergency stairs?")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Steve: Come on, let's go.")
   (wait)
   (text-reset 1)
   (str "Cole: Ah, right.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (sound '|| 2)
   (mes-jump "A:¥MES¥023.MES"))
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
      (text "　　　　　　　　　　　　　")
      (str "WAIT....")
      (branch-var
       S
       (</>
        (/ (nop@) (set-reg 145 #f) (flag-save 1))
        (/ (nop@) (set-reg 145 #f) (flag-save 2))
        (/ (nop@) (set-reg 145 #f) (flag-save 3))
        (/ (nop@) (set-reg 145 #f) (flag-save 4))
        (/ (nop@) (set-reg 145 #f) (flag-save 5))
        (/ (nop@) (set-reg 145 #f) (flag-save 6))
        (/ (nop@) (set-reg 145 #f) (flag-save 7))
        (/ (nop@) (set-reg 145 #f) (flag-save 8))
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
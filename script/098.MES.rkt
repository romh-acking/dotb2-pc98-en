; Dead of the Brain 2 (PC-98) - 098.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; Cole returns to the cemetery where it all started.
; --Progression:--
; Inspect everything, then MOVE.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB165.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 4 6 23 10)							; 	Wall
  (exec-mem 3744 1 6 23 6 38 12)						; 	Gate
  (exec-mem 3744 1 7 46 5 56 7)							; 	Sky
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB165.GPC") (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 108 #f))								; Lead-in from previous MES file	
        (str "Cole: This is the cemetery... Two years ago, Doc and I were" 'br)
        (str "running through here while getting chased by a cop named" 'br)
        (str "Jack...")
        (set-reg 108 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: This cemetery is located right behind Doc's house.")	; Lead-in from loading game
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 109 #f))							; Wall #1
   (str "Cole: Tall brick walls enclose the cemetery. Even if you" 'br)
   (str "managed to run away from an undead horde, scaling the" 'br)
   (str "wall's impossible. The gate's the only way in and out.")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 110 #f))							; Wall #2
   (str "Cole: Being here reminds me of the incident from two years" 'br)
   (str "ago... If only I could go back and not make the same" 'br)
   (str "mistakes.")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Wall #3 (repeat line)
   (str "Cole: The brick walls are spraypainted with graffiti." 'br)
   (str "Nothing's changed from before.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 111 #f))							; Gate #1
   (str "Cole: The gate's unlocked. Anyone can just stroll in.")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 112 #f))							; Gate #2
   (str "Cole: Aside from the front gate, there's a back entrance as" 'br)
   (str "well.")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Gate #3 (repeat line)
   (str "Cole: The gate's rusty from neglect.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 113 #f))							; Sky #1
   (str "Cole: The clouds are gathering... I'd better find the cure" 'br)
   (str "and get back to the lab before it starts raining.")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Sky #2 (repeat line)
   (str "Cole: It's suddenly getting cold...")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 112 #t) (= 113 #t))						; MOVE (after inspecting everything)
   (exec-mem 6064 2 1)
   (str "Cole: Let's find the serum and get back before the rain" 'br)
   (str "hits.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 114 #t)
   (mes-jump "A:¥MES¥099.MES"))
 (seg (? (= P 2))								; SYSTEM
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
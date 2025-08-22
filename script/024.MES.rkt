; Dead of the Brain 2 (PC-98) - 024.MES
; Translated by Geometrizer
; Edited by trentsignia
; --Description:--
; Outside Sheila's apartment.
; --Progression:--
; MOVE.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB046.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 17 5 30 10)						; 	Building
  (exec-mem 3744 1 6 47 5 56 9)							; 	Billboard
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB046.GPC") (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 169 #f))								; Lead-in from previous MES script
        (str "Cole: Sheila's apartment is 15 minutes from the station." 'br)
        (str "I'm jealous of her place, but her parents help out with the rent.")
        (wait)
        (text-reset 1)
        (str "Cole: And on top of that, her parents come over to stay" 'br)
        (str "once a month.")
        (set-reg 169 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: This is the apartment where Sheila lives. She's" 'br)	; Lead-in from loading game
        (str "usually visiting me, so it's rare I go to her place.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 170 #f))							; Building #1
   (str "Cole: This apartment building is 12 stories tall and has a" 'br)
   (str "great view. You can't get onto the roof, but the view from" 'br)
   (str "Sheila's on the 9th floor's more than enough.")
   (set-reg 170 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 171 #f))							; Building #2
   (str "Cole: Surely, Sheila's come back by now. She said she" 'br)
   (str "didn't have any errands to run today.")
   (set-reg 171 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Building #3 (repeat line)
   (str "Cole: Dr. Lisle is waiting too, so let's grab Sheila and" 'br)
   (str "take her back to the Perain Institute.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 172 #f))							; Billboard #1
   (str "Cole: The billboard gets changed every month. Right now," 'br)
   (str "it's advertising LARK.")
   (set-reg 172 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Billboard #2 (repeat line)
   (str "Cole: I don't need to spend any more time looking at this" 'br)
   (str "billboard, it's already left its mark on my psyche.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: Sheila is in room 904. It'd be quicker to take the" 'br)
   (str "elevator.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 173 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥025.MES"))
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
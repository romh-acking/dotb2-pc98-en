; Dead of the Brain 2 (PC-98) - 027.MES
; Translated by Geometrizer
; Edited by trentsignia
; -----Scene:-----
; Cole is outside Shuffle Food to look for Catherine.
; --Progression:--
; MOVE.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB050.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 39 5 46 8)							;  	Restaurant
  (exec-mem 3744 1 6 40 8 47 11)						; 	Entrance
  (exec-mem 3744 1 7 48 3 56 5)							; 	Sign
  (exec-mem 3744 1 15 80 0 0 0)							; 	(This appears to be Catherine's hotspot, but dummied out)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB050.GPC") (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 184 #f))								; Lead-in from previous MES script
        (str "Cole: It's been a while since I headed to the other side of" 'br)
        (str "the station...")
        (wait)
        (text-reset 1)
        (str "Cole: This is Shuffle Food, I guess.")
        (set-reg 184 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: This is the Shuffle Food restaurant, where Sheila's" 'br)	; Lead-in from loading game
        (str "friend Catherine works.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 185 #f))							; Restaurant #1
   (str "Cole: I had no idea they opened a restaurant here. And that" 'br)
   (str "sure is an interesting name.")
   (set-reg 185 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 186 #f))							; Restaurant #2
   (str "Cole: Catherine works here. Maybe she knows where Sheila is.")
   (set-reg 186 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Restaurant #3 (repeat line)
   (str "Cole: The restaurant looks pretty clean. Judging by the" 'br)
   (str "number of customers inside, it's probably got a good" 'br)
   (str "reputation.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 187 #f))							; Entrance #1
   (str "Cole: That's the entrance over there. I should ask one of" 'br)
   (str "the employees about Catherine.")
   (set-reg 187 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Entrance #2 (repeat line)
  (str "Cole: Looks like that's the only entrance to the restaurant.")
  (wait)
  (text-reset 1))
 (seg (? (= P 7) (= 188 #f))							; Sign #1
   (str "Cole: There's a big sign that says“Shuffle Food.”")
   (set-reg 188 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 189 #t))							; Sign #2
   (str "Cole: Yeah, this is the place, Catherine works here.")
   (set-reg 189 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Sign #3 (repeat line)
   (str "Cole: It's a big sign that says“Shuffle Food.”")
   (branch-random
    (</>
     (/
      (str "(I wonder" 'br)							; 	This was a joke Geo silently slipped into the script.
      (str "what's getting shuffled...?)"))					; 	I've decided to keep it, albeit with only a random chance of appearing.
     (/ (str " "))
     (/ (str " "))))
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 186 #t) (= 187 #t))						; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: All right, let's go meet Catherine.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 190 #t)
   (mes-jump "A:¥MES¥028.MES"))
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
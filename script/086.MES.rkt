; Dead of the Brain 2 (PC-98) - 086.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; Cole's room.
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
        (? (= 126 #f) (= 901 #t))						; Lead-in for first visit
        (str "Cole: I got pretty grimy since my trip to the graveyard.")
        (wait)
        (text-reset 1)
        (str "Cole: Man, my one good outfit is totally ruined.")
        (set-reg 126 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: It's always quiet in here...")				; Lead-in from second visit
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 127 #f))							; Lockers #1
   (str "Cole: I don't need a locker. Only valuable thing I carry is" 'br)
   (str "my wallet.")
   (wait)
   (text-reset 1)
   (str "Cole: Don't have anything more important than that.")
   (set-reg 127 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 128 #f))							; Lockers #2
   (str "Cole: I don't know what's inside it, but I want to believe" 'br)
   (str "this locker's owner is still alive somewhere.")
   (wait)
   (text-reset 1)
   (str "Cole: But maybe that's impossible...")
   (set-reg 128 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Lockers #3 (repeat line)
   (str "Cole: A row of locked lockers.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 129 #f))							; Door #1
   (str "Cole: Oh yeah, Sheila really stormed out of here a while" 'br)
   (str "ago...")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 130 #f))							; Door #2
   (str "Cole: It doesn't look like anyone entered the room since I" 'br)
   (str "last left it.")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Door #3 (repeat line)
   (str "Cole: This room doesn't have a locked door, so anyone can" 'br)
   (str "come and go.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 131 #f))							; Desk #1
   (str "Cole: Huh? There's a single line on the surface of this" 'br)
   (str "dusty desk...")
   (wait)
   (text-reset 1)
   (str "Cole: Maybe it's left behind by an insect? If I follow it" 'br)
   (str "all the way...")
   (wait)
   (text-reset 1)
   (str "Cole: What... What's this?")
   (wait)
   (text-reset 1)
   (str "Cole: My finger... The fingertip has turned completely" 'br)
   (str "white! My god.")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 132 #f))							; Desk #2
   (str "Cole: I start thinking about trivial things when I'm all" 'br)
   (str "alone. Maybe I should go be with everyone instead.")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Desk #3 (repeat line)
   (str "Cole: This stupid desk. Whenever I roll over in bed, I bonk" 'br)
   (str "my head against it.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: Let's go into the hallway.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥085.MES"))
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
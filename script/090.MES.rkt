; Dead of the Brain 2 (PC-98) - 090.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; Inside Razovan.
; --Progression:--
; Look at the reception and stairs, then MOVE.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB143.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 4 2 22 5)							; 	Reception
  (exec-mem 3744 1 6 4 10 19 12)						; 	Sofa
  (exec-mem 3744 1 7 28 11 33 13)						; 	Ashtray
  (exec-mem 3744 1 8 48 4 56 9)							; 	Stairs
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB143.GPC") (image-mem 0 3)
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
        (? (= 159 #f))								; Lead-in from previous MES file
        (str "Cole: I've entered the building. It looks like this is the" 'br)
        (str "reception area.")
        (set-reg 159 #t))
       (// 
        (str "Cole: This is the first-floor area of Razovan" 'br)		; Lead-in from loading game
        (str "Pharmaceuticals."))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 160 #f))							; Reception #1
   (str "Cole: That's the reception area, but there's no human" 'br)
   (str "presence.")
   (set-reg 160 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 161 #f))							; Reception #2
   (str "Cole: The reception area's covered by a curtain, so I can't" 'br)
   (str "see inside. If anyone were there, they would have noticed" 'br)
   (str "me when I opened the door.")
   (set-reg 161 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 162 #f))							; Reception #3
   (str "Cole: The reception desk is covered in dust. Nobody's been" 'br)
   (str "here for a while.")
   (set-reg 162 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Reception #4 (repeat line)
   (str "Cole: There's nobody in the reception area. Well, I didn't" 'br)
   (str "expect to find anyone this soon, anyway...")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 163 #f))							; Sofa #1
   (str "Cole: There's a large sofa here. The leather's all cracked." 'br)
   (str "Nobody's been keeping an eye on the furniture.")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Sofa #2 (repeat line)
   (str "Cole: This sofa's filthy... If you sat down on it, your" 'br)
   (str "butt would turn white from the dust.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 164 #f))							; Ashtray #1
   (str "Cole: There's a cheap ashtray on the table.")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 165 #f))							; Ashtray #2
   (str "Cole: At least it's covered in dust, and not cigarette" 'br)
   (str "butts.")
   (wait)
   (text-reset 1)
   (str "Cole: My fingertips turn white when I touch it.")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Ashtray #3 (repeat line)
   (str "Cole: There's a ton of dust on this table and ashtray.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 166 #f))							; Stairs #1
   (str "Cole: This must be the staircase that leads to the second" 'br)
   (str "floor. This building appears to be old and doesn't have an" 'br)
   (str "elevator, so it's the stairs or nothing.")
   (set-reg 166 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 167 #f))							; Stairs #2
   (str "Cole: Huh? There are several footprints left on the stairs.")
   (wait)
   (text-reset 1)
   (str "Cole: There are two sets of footprints, a larger and" 'br)
   (str "smaller pair. The larger ones are probably Steve's.")
   (set-reg 167 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Stairs #3 (repeat line)
   (str "Cole: It looks like Steve climbed these stairs... And the" 'br)
   (str "smaller pair is probably Daniel's.")
   (set-reg 168 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 161 #t) (= 168 #t))						; MOVE (after looking at reception and stairs)
   (exec-mem 6064 2 1)
   (str "Cole: I've gotta find Steve, stat.")
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
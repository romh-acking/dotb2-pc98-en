; Dead of the Brain 2 (PC-98) - 106.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; On the second floor of Lasnew.
; --Progression:--
; Inspect everything, then MOVE.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB182.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 37 10 47 11)						; 	Shadows
  (exec-mem 3744 1 6 17 5 23 11)						; 	Pillar
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB182.GPC") (image-mem 0 3)
  ((cmd 193) 0 "B:¥GPA¥DB182.GPA")
  ((cmd 194) 0 "ｱ............ｲ...ｱ.....ｲ....ｱ...ｲ...ｱ............")
  ((cmd 197) 0 15)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 118 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 119 #f))								; Lead-in from previous MES file
        (str "Woman's Voice: Ha ha ha ha ha!")
        (wait)
        (text-reset 1)
        (str "Cole: !?" 'br)
        (wait)
        (text-reset 1)
        (str "Steve: !?")
        (set-reg 119 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Woman's Voice: Ha ha ha ha haaaa!" 'br)				; Lead-in from loading game
        (wait)
        (text-reset 1)
        (str "Cole: !?")
        (wait)
        (text-reset 1)
        (str "Man's Voice: *Spit*" 'br)
        (wait)
        (text-reset 1)
        (str "Steve: !?")
        (wait)
        (text-reset 1))))
  (loop ((cmd 195) 0 65535) (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 120 #f))							; Shadows #1
   (str "Cole: Steve...!" 'br)
   (str "Steve: Shh!")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 121 #f))							; Shadows #2
   (str "Cole: There's two of them. The last survivors of Bloody Fox?")
   (wait)
   (text-reset 1)
   (str "Steve: Maybe...")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 122 #f))							; Shadows #3
   (str "Cole: I hope Jill's with them...")
   (wait)
   (text-reset 1)
   (str "Steve: Unlikely he'd be hanging out with Bloody Fox.")
   (wait)
   (text-reset 1)
   (str "Cole: Maybe he's hiding somewhere. ")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Shadows #4 (repeat line)
   (str "Cole: They haven't noticed us yet.")
   (wait)
   (text-reset 1)
   (str "Steve: Don't get spotted.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 123 #f))							; Pillar #1
   (str "Cole: !?")
   (wait)
   (text-reset 1)
   (str "Steve: Cole, you're going too far... Hide behind a pillar.")
   (wait)
   (text-reset 1)
   (str "Cole: Okay, okay.")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 124 #f))							; Pillar #2
   (str "Cole: ...")
   (wait)
   (text-reset 1)
   (str "Steve: ...")
   (wait)
   (text-reset 1)
   (str "Cole: What now?")
   (wait)
   (text-reset 1)
   (str "Steve: Hold on...")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 125 #f))							; Pillar #3
   (str "Cole: Steve, where are you going?")
   (wait)
   (text-reset 1)
   (str "Steve: Behind that pillar over there.")
   (wait)
   (text-reset 1)
   (str "Cole: ?")
   (wait)
   (text-reset 1)
   (str "Steve: We'll corner them.")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Pillar #4 (repeat line)
   (str "Steve: Cole, go!")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 122 #t) (= 126 #t))						; MOVE (after inspecting everything)
   (exec-mem 6064 2 1)
   (str "Steve: Now!")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   ((cmd 197) 0 0)
   (mes-jump "A:¥MES¥107.MES"))
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
        (/ (nop@) (set-reg 118 #f) (flag-save 1))
        (/ (nop@) (set-reg 118 #f) (flag-save 2))
        (/ (nop@) (set-reg 118 #f) (flag-save 3))
        (/ (nop@) (set-reg 118 #f) (flag-save 4))
        (/ (nop@) (set-reg 118 #f) (flag-save 5))
        (/ (nop@) (set-reg 118 #f) (flag-save 6))
        (/ (nop@) (set-reg 118 #f) (flag-save 7))
        (/ (nop@) (set-reg 118 #f) (flag-save 8))
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
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 1))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 2))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 3))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 4))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 5))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 6))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 7))
        (/ (exec-mem 9920 0 6 6 113 64 0) ((cmd 197) 0 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))
; Dead of the Brain 2 (PC-98) - 060.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; The empty lab.
; --Progression:--
; Attempt to get into the door, and use the sink.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB043B.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 15 7 22 12)						; 	Equipment
  (exec-mem 3744 1 6 9 8 14 12)							; 	Door
  (exec-mem 3744 1 7 40 9 49 11)						; 	Computers
  (exec-mem 3744 1 8 46 11 56 15)						; 	Sinks
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC") (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 5)
  (str "Cole: Huh, nobody's here in the lab.")
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 136 #f))							; Equipment #1
   (str "Cole: There's a large apparatus in the corner of the room." 'br)
   (str "I wonder what it's used for.")
   (set-reg 136 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 137 #f))							; Equipment #2
   (str "Cole: There's lots of cables coming out of it, so it must" 'br)
   (str "be an elaborate piece of equipment.")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 138 #f))							; Equipment #3
   (str "Cole: It says PR-100, but I don't think this is a printer.")
   (set-reg 138 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Equipment #4 (repeat line)
   (str "Cole: Best not to monkey with this stuff, you never know" 'br)
   (str "what might happen.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 139 #f))							; Door #1
   (str "Cole: Now that's one sturdy door. And an auto-lock keypad" 'br)
   (str "next to it.")
   (set-reg 139 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 140 #f))							; Door #2
   (str "Cole: Steve had mentioned he wasn't allowed in there. I" 'br)
   (str "wonder what's inside...")
   (set-reg 140 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 141 #f))							; Door #3
   (str "Cole: It's most likely locked, and I haven't got the means" 'br)
   (str "to open it.")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1)
   (str "Cole: Hahaha, not even worth trying. Just seeing that" 'br)
   (str "keypad means I'm not getting in.")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1)
   (str "Cole: I mean, right now I don't have the energy to spare." 'br)
   (str "Whatever is behind that door is none of my business," 'br)
   (str "anyway.")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1)
   (str "Cole: Hnnngh!")
   (wait)
   (text-reset 1)
   (str "Cole: ")								; 	The original scripting repeated the same dialog three times, but I changed it to instead add three dots each time
   (repeat 3 (<> (str "...") (wait)))
   (text-reset 1)
;  (repeat 3 (<> (str "Cole: ...") (wait) (text-reset 1)))				(This is the original script)
   (str "Cole: Dammit, you tricked me!")
   (set-reg 141 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Door #4 (repeat line)
   (str "Cole: That door just won't open. Unless I know the code," 'br)
   (str "there's no way...right?")
   (set-reg 142 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 143 #f))							; Computers #1
   (str "Cole: There are computers lined up on the desk. They're" 'br)
   (str "still powered on... So where did Doctor Lisle go?")
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 144 #f))							; Computers #2
   (str "Cole: There are weird numbers and graphs on the monitor.")
   (set-reg 144 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 145 #f))							; Computers #3
   (str "Cole: Back in the day, people used to do stuff by hand, but" 'br)
   (str "nowadays, computers handle so much work. Everything's" 'br)
   (str "gotten so much more convenient.")
   (set-reg 145 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Computers #4 (repeat line)
   (str "Cole: If only we could use computers to track the location" 'br)
   (str "of zombies, my life would be a lot easier...")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 146 #f))							; Sinks #1
   (str "Cole: This looks like a regular sink. Might as well wash my" 'br)
   (str "hands. Best not to think of where they've been lately.")
   (wait)
   (text-reset 1)
   (str "Cole: Ah, that feels good. Might as well take a drink of" 'br)
   (str "water too.")
   (set-reg 146 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Sinks #2 (repeat line)
   (str "Cole: I'm pretty sure the water here comes from the rooftop" 'br)
   (str "tank.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: Nobody's around, so I might as well head back into" 'br)
   (str "the hallway.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥056.MES"))
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
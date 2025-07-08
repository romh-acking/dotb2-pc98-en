; Dead of the Brain 2 (PC-98) - 046.MES
; Translated by Geometrizer
; Edited by trentsignia
; -----Scene:-----
; Cole finds Catherine under the counter at Shuffle Food.
; --Progression:--
; Talk to Catherine, then MOVE.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB077.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 25 3 33 7)							; 	Catherine
  (exec-mem 3744 1 6 43 5 54 11)						; 	Counter
  (exec-mem 3744 1 7 4 8 13 15)							; 	Juice
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB077.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (str "Cole: Catherine!")
  (wait)
  (text-reset 1)
  (str "Catherine: C-Cole... Ugh... Urrrrrgh...")
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 170 #f))							; Catherine #1
   (str "Cole: Is that really you, Catherine? You made it. Are you" 'br)
   (str "hurt?")
   (wait)
   (text-reset 1)
   (str "Catherine: Yes...")
   (set-reg 170 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 171 #f))							; Catherine #2
   (str "Catherine: I...I...")
   (wait)
   (text-reset 1)
   (str "Cole: It's okay, just calm down.")
   (wait)
   (text-reset 1)
   (str "Catherine: I was so scared... The glass windows broke and" 'br)
   (str "all those undead monsters started swarming in...")
   (wait)
   (text-reset 1)
   (str "Cole: I know, I can imagine. But you're safe now.")
   (set-reg 171 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 172 #f))							; Catherine #3
   (str "Cole: They've taken over the city. But we're sheltering in" 'br)
   (str "a safe place now.")
   (wait)
   (text-reset 1)
   (str "Catherine: A safe...place?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, it's the Perain Institute. We've got a police" 'br)
   (str "detective from the 32nd Precinct and a lab guy named Lisle" 'br)
   (str "backing us up.")
   (wait)
   (text-reset 1)
   (str "Catherine: Sheila...?")
   (wait)
   (text-reset 1)
   (str "Cole: She's with us.")
   (wait)
   (text-reset 1)
   (str "Catherine: Oh, thank god... I can't believe you found me.")
   (set-reg 172 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Catherine #4 (repeat line)
   (str "Cole: Can you stand up?")
   (wait)
   (text-reset 1)
   (str "Catherine: I can't... I don't have the strength.")
   (wait)
   (text-reset 1)
   (str "Cole: Let's get you up. There's a lab station wagon parked" 'br)
   (str "out front.")
   (wait)
   (text-reset 1)
   (str "Catherine: Thank you, Cole.")
   (set-reg 173 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 174 #f))							; Counter #1
   (str "Cole: So you were hiding behind the counter? That's why I" 'br)
   (str "couldn't see you.")
   (set-reg 174 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 175 #f))							; Counter #2
   (str "Cole: Have you been hiding there this whole time?")
   (wait)
   (text-reset 1)
   (str "Catherine: Yes... I kept hearing people screaming...")
   (wait)
   (text-reset 1)
   (str "Cole: I can't imagine.")
   (set-reg 175 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Counter #3 (repeat line)
   (str "Cole: It's amazing you hid there without the zombies" 'br)
   (str "finding you. I figured they could track down their victims" 'br)
   (str "even without sight...")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 176 #f))							; Juice #1
   (str "Cole: Hey, there's a case filled with bottled juice.")
   (set-reg 176 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 177 #f))							; Juice #2
   (str "Cole: I'm relieved... but I'm kinda thirsty.")
   (wait)
   (text-reset 1)
   (str "Catherine: Take them. It's not like any customers will be" 'br)
   (str "ordering them soon...")
   (wait)
   (text-reset 1)
   (str "Cole: Ahh, never mind.")
   (set-reg 177 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Juice #3 (repeat line)
   (str "Catherine: Cole, you keep looking around all nervously... I" 'br)
   (str "was so scared...")
   (wait)
   (text-reset 1)
   (str "Cole: Right...")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 173 #t))							; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: Okay, let's get moving.")
   (wait)
   (text-reset 1)
   (str "Catherine: Okay.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 174 #t)
   (mes-jump "A:¥MES¥047.MES"))
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
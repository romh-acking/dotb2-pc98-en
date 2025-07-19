; Dead of the Brain 2 (PC-98) - 094.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; Cole steps in the Perain hallways for the last time, now ravaged by the zombies beyond recognition.
; --Progression:--
; Go to Steve's Room.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB070.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 46 5 51 15)						; 	Cole's Room		(Far Right)
  (exec-mem 3744 1 6 20 7 23 13)						; 	Sheila's Room		(Second from Left)
  (exec-mem 3744 1 7 37 7 40 13)						; 	Catherine's Room	(Second from Right)
  (exec-mem 3744 1 8 9 5 14 15)							; 	Steve's Room		(Far Left)	
  (exec-mem 3744 1 9 27 8 32 12)						; 	Lab			(Middle)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB070.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB155.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 192 #f))								; Lead-in from previous MES file
        (str "Cole: Shit! There's blood everywhere!")
        (wait)
        (text-reset 1)
        (str "Cole: Both corpses in the hallway were shot in the head..." 'br)
        (str "Lisle must have taken them out.")
        (wait)
        (text-reset 1)
        (str "Steve: Cole, I'm going to check out the lab. You clear the" 'br)
        (str "other rooms.")
        (wait)
        (text-reset 1)
        (str "Cole: On it.")
        (set-reg 192 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: While we were gone, someone sent zombies to overrun" 'br)	; Lead-in from loading game
        (str "the institute...")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 193 #f))							; Cole's Room #1
   (str "Cole: Let me check my room.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB101.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (str "Cole: This room wasn't locked, but nobody was inside, so" 'br)
   (str "the zombies didn't go in.")
   (wait)
   (text-reset 1)
   (str "Cole: I should check another room.")
   (set-reg 193 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB070.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB155.GPC")
   (image-mem 1 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50))
 (seg (? (= P 5))								; Cole's Room #2 (repeat line)
   (str "Cole: It looks like zombies didn't get into my room. Let's" 'br)
   (str "try another.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 194 #f))							; Sheila's Room #1
   (str "Cole: Is Sheila okay?")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB072.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (str "Cole: Nobody here. And the zombies didn't go into empty" 'br)
   (str "rooms, so if everything's in order, then Sheila wasn't" 'br)
   (str "here...")
   (wait)
   (text-reset 1)
   (str "Cole: Sheila must be in another room.")
   (set-reg 194 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB070.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB155.GPC")
   (image-mem 1 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50))
 (seg (? (= P 6))								; Sheila's Room #2 (repeat line)
   (str "Cole: There wasn't anyone in Sheila's room. I just hope" 'br)
   (str "she's okay...")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 195 #f))							; Catherine's Room #1
   (str "Cole: Let's go to Catherine's room.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB108.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (str "Cole: This is odd... It's completely empty.")
   (wait)
   (text-reset 1)
   (str "Cole: When the zombies appeared, wasn't Catherine in here?" 'br)
   (str "Where the hell is she?")
   (set-reg 195 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB070.GPC")
   (image-mem 0 3)
   (image-file "B:¥GPC¥DB155.GPC")
   (image-mem 1 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50))
 (seg (? (= P 7))								; Catherine's Room #2 (repeat line)
   (str "Cole: No signs of intrusion here. I should check another" 'br)
   (str "room.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Steve's Room
   (str "Cole: Huh? Steve's room has been locked all along... Let's" 'br)
   (str "check it out regardless.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB156.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (sound '|se | 3)
   (str "Cole: Cathy...")
   (wait)
   (text-reset 1)
   (str "Cole: Hey... Hey!!! Catherine!")
   (wait)
   (text-reset 1)
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_10.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_10.USO"))))
   (sound '|| 1)
   (str "Catherine: ...")
   (wait)
   (text-reset 1)
   (str "Cole: Catherine... It's me, Cole...")
   (wait)
   (text-reset 1)
   (str "Catherine: ...")
   (wait)
   (text-reset 1)
   (str "Cole: She's still breathing... No... Catherine..." 'br)
   (str "Catherine!!!")
   (wait)
   (text-reset 1)
   (str "Cole: Why!!! Why is she dying!? Such a sincere, sweet" 'br)
   (str "girl... Why does she have to die!?")
   (wait)
   (text-reset 1)
   (str "Cole: Why is this happening...")
   (wait)
   (text-reset 1)
   (str "Cole: I promised you we'd have a Christmas party... But" 'br)
   (str "now...")
   (wait)
   (text-reset 1)
   (str "Steve: Cole...")
   (wait)
   (text-reset 1)
   (str "Cole: Steve... Cathy is dead!")
   (wait)
   (text-reset 1)
   (str "Steve: ...")
   (wait)
   (text-reset 1)
   (str "Cole: Such a kind-hearted girl... To die in a filthy place" 'br)
   (str "like this... Left alone, cold and lifeless...")
   (wait)
   (text-reset 1)
   (str "Steve: Cole, it's not just her who left us. Doctor Lisle...")
   (wait)
   (text-reset 1)
   (str "Cole: Lisle...!?")
   (wait)
   (text-reset 1)
   (str "Steve: I... I'm sorry. As a detective...as a man... I" 'br)
   (str "couldn't protect everyone.")
   (wait)
   (text-reset 1)
   (str "Cole: Steve... I feel the same... My own weakness got" 'br)
   (str "everyone killed... I feel like I'm about to explode...")
   (wait)
   (text-reset 1)
   (str "Cole: Doc never meant for the reanimation serum to do" 'br)
   (str "this... He made it to save that one person suffering from" 'br)
   (str "cancer, or facing a death sentence from AIDS...")
   (wait)
   (text-reset 1)
   (str "Cole: !!")
   (wait)
   (text-reset 1)
   (str "Steve: What's wrong?")
   (wait)
   (text-reset 1)
   (str "Cole: Sheila! Where's Sheila!?")
   (wait)
   (text-reset 1)
   (str "Steve: I couldn't find her in the lab...")
   (wait)
   (text-reset 1)
   (str "Cole: What about Lisle's side room in the lab?")
   (wait)
   (text-reset 1)
   (str "Steve: I haven't checked it yet.")
   (wait)
   (text-reset 1)
   (str "Cole: Sheila! Where's Sheila!?")
   (wait)
   (text-reset 1)
   (str "Cole: Please... Sheila, please be alive!")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥095.MES"))
 (seg (? (= P 9) (= 196 #f))							; Lab #1
   (str "Cole: Steve said he'd check the lab, so I'll check the" 'br)
   (str "other rooms for now.")
   (set-reg 196 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))								; Lab #2 (repeat line)
   (str "Cole: It's best to leave the lab to Steve.")
   (wait)
   (text-reset 1))
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
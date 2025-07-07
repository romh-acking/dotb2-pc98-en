; Dead of the Brain 2 (PC-98) - 026.MES
; Translated by Geometrizer
; Edited by trentsignia
; -----Scene:-----
; Cole enters Sheila's apartment to find it empty and roughed up.
; --Progression:--
; Inspect everything, use the phone, then MOVE.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB049.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 29 14 43 15)						; 	Phone
  (exec-mem 3744 1 6 18 9 29 12)						; 	Bed
  (exec-mem 3744 1 7 46 3 56 12)						; 	Closet
  (exec-mem 3744 1 8 10 10 19 12)						; 	Desk Drawer
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB049.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 174 #f))								; Lead-in from previous MES script
        (sound '|| 0)
        (sound '|se | 4)
        (str "Cole: !?")
        (wait)
        (text-reset 1)
        (str "Cole: The hell is this!?")
        (wait)
        (text-reset 1)
        (str "Cole: Sheila! Where are you!?")
        (set-reg 174 #t)
        (wait)
        (text-reset 1)
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))
       (//
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1)
        (str "Cole: This is Sheila's room, but there's no sign of her" 'br)	; Lead-in from loading game
        (str "anywhere.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 183 #t))							; Floor (after calling Steve)
   (branch-random
    (</>
     (/ (str "Cole: I should check on Catherine."))
     (/ (str "Cole: I'll head over to Shuffle Food."))))
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 176 #t) (= 178 #t) (= 180 #t) (= 182 #t) (= 183 #f))	; Floor (after inspecting everything)
   (str "Cole: I can't waste any more time here, I've got to tell" 'br)
   (str "Steve ASAP!")
   (wait)
   (text-reset 1)
   (str "Cole: I gotta call the 32nd Precinct.")
   (wait)
   (text-reset 1)
   (str "Cole: Damn, the receiver's been cut off!")
   (wait)
   (text-reset 1)
   (str "Cole: No way, I gotta use the cordless phone." 'br)
   (str "      (Ring, ring...)")
   (wait)
   (text-reset 1)
   (str "Police: Hello, 32nd Precinct.")
   (wait)
   (text-reset 1)
   (str "Cole: This is Cole. Can I talk with Detective Steve Gris" 'br)
   (str "from the Investigation Division?")
   (wait)
   (text-reset 1)
   (str "Police: One moment, please.")
   (wait)
   (text-reset 1)
   (str "Steve: Cole? What's wrong?")
   (wait)
   (text-reset 1)
   (str "Cole: Steve! I went to Sheila's apartment, but...")
   (wait)
   (text-reset 1)
   (str "Steve: What happened?")
   (wait)
   (text-reset 1)
   (str "Cole: The room's been ransacked.")
   (wait)
   (text-reset 1)
   (str "Steve: What do you mean?")
   (wait)
   (text-reset 1)
   (str "Cole: I don't know. It was all torn up when I got here.")
   (wait)
   (text-reset 1)
   (str "Steve: Did you see anyone suspicious?")
   (wait)
   (text-reset 1)
   (str "Cole: Suspicious? I didn't see anyone, but...")
   (wait)
   (text-reset 1)
   (str "Cole: ...Wait, I did pass someone near the elevator who had" 'br)
   (str "a weird disinfectant smell. Probably one of the residents.")
   (wait)
   (text-reset 1)
   (str "Steve: And Sheila?")
   (wait)
   (text-reset 1)
   (str "Cole: She's gone.")
   (wait)
   (text-reset 1)
   (str "Steve: Is there anywhere she might have gone?")
   (wait)
   (text-reset 1)
   (str "Cole: She's off work today...")
   (wait)
   (text-reset 1)
   (str "Steve: Can you try one of her friends?")
   (wait)
   (text-reset 1)
   (str "Cole: Well, Catherine is the only one who comes to mind...")
   (wait)
   (text-reset 1)
   (str "Steve: Got it. I'll head over ASAP. In the meantime, you go" 'br)
   (str "check on that friend of hers.")
   (wait)
   (text-reset 1)
   (str "Cole: Understood.")
   (wait)
   (text-reset 1)
   (str "Steve: Be careful, Cole. Do you have your gun?")
   (wait)
   (text-reset 1)
   (str "Cole: I do. Oh, and I need to know the address for a" 'br)
   (str "restaurant called Shuffle Food.")
   (wait)
   (text-reset 1)
   (str "Steve: Shuffle Food?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, I'm pretty sure Catherine works there part-time.")
   (wait)
   (text-reset 1)
   (str "Steve: One sec.")
   (wait)
   (text-reset 1)
   (str "Cole: Okay.")
   (wait)
   (text-reset 1)
   (str "Cole: .......")							; 	This was originally (repeat 3 (<> (str "Cole: ....................") (wait) (text-reset 1))), but...
   (wait)									; 	I didn't like how there is no visible feedback between each repeat, hence the tweak.
   (text-reset 1)
   (str "Cole: .............")
   (wait)
   (text-reset 1)
   (str "Cole: ....................")
   (wait)
   (text-reset 1)
   (str "Steve: Got the location. It's right behind the station.")
   (wait)
   (text-reset 1)
   (str "Cole: OK, I'm on my way.")
   (wait)
   (text-reset 1)
   (str "Steve: Let me know if you find anything. *Click*")
   (wait)
   (text-reset 1)
   (str "Cole: Shuffle Food... I've only heard about Catherine from" 'br)
   (str "Sheila, but I've never actually met her.")
   (wait)
   (text-reset 1)
   (str "Cole: All I can do is hope Sheila is safe.")
   (set-reg 183 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 175 #f))							; Floor #1
   (str "Cole: The floor is a mess. It looks like the room's been" 'br)
   (str "utterly ransacked.")
   (set-reg 175 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 176 #f))							; Floor #2
   (str "Cole: There's no sign of Sheila anywhere...could she have" 'br)
   (str "been kidnapped?")
   (wait)
   (text-reset 1)
   (str "Cole: That's impossible, she doesn't have any enemies.")
   (set-reg 176 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Floor #3 (repeat line)
  (str "Cole: Who would do something like this?")
  (wait)
  (text-reset 1))
 (seg (? (= P 6) (= 183 #t))							; Bed (after calling Steve)
   (str "Cole: There's no reason to stay around. I need to find" 'br)
   (str "Sheila immediately.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 177 #f))							; Bed #1
   (str "Cole: The bed is cold. It's been a while since Sheila was" 'br)
   (str "here.")
   (set-reg 177 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 178 #f))							; Bed #2
   (str "Cole: Yesterday I put Sheila to bed here and left. And I'd" 'br)
   (str "locked the door with the spare key she gave me.")
   (wait)
   (text-reset 1)
   (str "Cole: She was supposed to sleep the night...she's not the" 'br)
   (str "type to wake up in the middle of the night and head out.")
   (set-reg 178 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Bed #3 (repeat line)
   (str "Cole: So where did Sheila go? I've got a feeling about" 'br)
   (str "this, and it isn't good.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 183 #t))							; Closet (after calling Steve)
   (str "Cole: Sheila's not here. I need to find Catherine at" 'br)
   (str "Shuffle Food.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 179 #f))							; Closet #1
   (str "Cole: Even the closet's been ransacked. Why would anyone do" 'br)
   (str "this?")
   (set-reg 179 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 180 #f))							; Closet #2
   (str "Cole: Was the culprit searching for something in Sheila's" 'br)
   (str "room? No way... She couldn't have gotten pulled into" 'br)
   (str "anything shady.")
   (wait)
   (text-reset 1)
   (str "Cole: And besides, she would let me know about it from the" 'br)
   (str "second something went wrong.")
   (set-reg 180 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Closet #3
   (str "Cole: Anyway, I can't just leave the room like this.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 183 #t))							; Desk Drawer (after calling Steve)
   (str "Cole: Steve will be here soon... I'd better hurry over to" 'br)
   (str "Shuffle Food to look for Sheila.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 181 #f))							; Desk Drawer #1
   (str "Cole: The desk drawer is open.")
   (set-reg 181 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 182 #f))							; Desk Drawer #2
   (str "Cole: It doesn't look like anything expensive was taken." 'br)
   (str "The culprit wasn't just an ordinary thief...they must have" 'br)
   (str "had a particular target in mind.")
   (set-reg 182 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Desk Drawer #3 (repeat line)
   (str "Cole: What was the culprit looking for in here?")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 183 #t))							; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: I just hope that Sheila's at Shuffle Food when I get" 'br)
   (str "there...")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥027.MES"))
 (seg (? (= P 2))								; SYSTEM
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
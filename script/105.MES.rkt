; Dead of the Brain 2 (PC-98) - 105.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; On the first floor of Lasnew.
; --Progression:--
; Inspect everything, then MOVE. (Second visit: Inspect stairs then MOVE)
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB181.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 17 5 23 12)						; 	
  (exec-mem 3744 1 6 7 8 14 10)							; 	
  (exec-mem 3744 1 7 46 14 54 15)						; 	
  (exec-mem 3744 1 8 33 3 44 4)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB181.GPC")
  (image-mem 0 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB191C.GPC")
  (image-mem 1 0)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 134 #t))								; Lead-in for second visit
        (str "Cole: Like Briar said, it looks like most of Bloody Fox was" 'br)
        (str "killed by the zombies.")
        (wait)
        (text-reset 1))
       (//
        (? (= 108 #f))								; Lead-in from previous MES file
        (str "Cole: Gasp, gasp... What a sprint. This is the first floor.")
        (wait)
        (text-reset 1)
        (str "Steve: Be careful... We don't know where the enemy's hiding.")
        (set-reg 108 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Steve: Be careful... We don't know where the enemy's hiding.")	; Lead-in from loading game
        (wait)
        (text-reset 1)
        (str "Cole: Copy that.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 109 #f))							; Pillar #1
   (str "Cole: There's an exposed concrete pillar standing there.")
   (wait)
   (text-reset 1)
   (str "Steve: It doesn't look like any enemies are standing in its" 'br)
   (str "shadow.")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 110 #f))							; Pillar #2
   (str "Steve: This pillar supports the whole building. It looks" 'br)
   (str "damaged but sturdy.")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 111 #f))							; Pillar #3
   (str "Cole: There's graffiti on the pillar.")
   (wait)
   (text-reset 1)
   (str "Steve: Bloody Fox, marking their territory.")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Pillar #4 (repeat line)
   (str "Steve: You still eyeing up that pillar?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah... I've been paranoid since we got here.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 134 #t))							; Stairs (Second visit)
   (str "Cole: We only found Briar's corpse on the second floor, and" 'br)
   (str "nothing else.")
   (wait)
   (text-reset 1)
   (str "Steve: Jill must be hiding somewhere inside here.")
   (set-reg 135 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 112 #f))							; Stairs #1
   (str "Cole: Those are the stairs.")
   (wait)
   (text-reset 1)
   (str "Steve: It's safer to take the stairs than the elevator.")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 113 #f))							; Stairs #2
   (str "Cole: We can use those stairs to reach the second floor.")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 114 #f))							; Stairs #3
   (str "Steve: Better to run up the stairs in one go. If we get" 'br)
   (str "pincered on the stairs, it's game over.")
   (wait)
   (text-reset 1)
   (str "Cole: Thinking like a real detective, aren't you.")
   (wait)
   (text-reset 1)
   (str "Steve: Just the basics.")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Stairs #4 (repeat line)
   (str "Cole: It doesn't look like anyone's coming down the stairs.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 115 #f))							; Pipe #1
   (str "Cole: There's an iron pipe on the floor.")
   (wait)
   (text-reset 1)
   (str "Steve: Compared to a gun, this is a child's toy.")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 116 #f))							; Pipe #2
   (str "Cole: Some Bloody Fox punk must have dropped this pipe. I" 'br)
   (str "have a gun, and I'm not trading it for this.")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Pipe #3 (repeat line)
   (str "Cole: If someone hit me with that, I'd be in big trouble.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 117 #f))							; Light #1
   (str "Steve: All the fluorescent lights are broken. Not that the" 'br)
   (str "building even has electricity to run them anymore.")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Light #2 (repeat line)
   (str "Cole: The lights are off, but I can still see well enough," 'br)
   (str "so I won't complain.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 134 #t) (= 135 #t))						; MOVE (After inspecting stairs on second visit)
   (exec-mem 6064 2 1)
   (str "Cole: Let's check the second floor again.")
   (wait)
   (text-reset 1)
   (str "Steve: Hmmm... Cole, come over here for a second.")
   (wait)
   (text-reset 1)
   (str "Cole: What did you find?")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (str "Cole: Ah, it's a fire extinguisher box?")
   (wait)
   (text-reset 1)
   (str "Steve: Maybe. Let's open it.")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB192.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (str "Cole: Whoa! The hell is this?")
   (wait)
   (text-reset 1)
   (str "Steve: Stairs... Leading down? From a place like this?")
   (wait)
   (text-reset 1)
   (str "Cole: Let's go!")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥109.MES"))
 (seg (? (= P 1) (= 111 #t) (= 114 #t) (= 117 #t) (= 134 #f))			; MOVE (after inspecting everything the first time)
   (exec-mem 6064 2 1)
   (str "Cole: Let's take the stairs to the second floor.")
   (wait)
   (text-reset 1)
   (str "Steve: Yeah, looks like this floor is clear.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 118 #t)
   (exec-mem 912 "EXIT")
   (mes-jump "A:¥MES¥106.MES"))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Steve: Hmm, not yet... Let's investigate a bit more.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
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
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 1))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 2))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 3))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 4))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 5))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 6))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 7))
        (/ (exec-mem 912 "EXIT") (exec-mem 9920 0 6 6 113 64 0) (flag-load 8))
        (/ (nop@)))))
     (/ (nop@))))
   (text-reset 1)
   (exec-mem 6064 3))
 (seg*))
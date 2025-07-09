; Dead of the Brain 2 (PC-98) - 035.MES
; Translated by Geometrizer
; Edited by trentsignia
; -----Scene:-----
; Zombies! Ee-yikes!
; --Progression:--
; Inspect everything.
; -----Quiz:------
; 1. Light Dance Street
; 2. Steve
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB067.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 7 4 12 7)							; 	Smoke
  (exec-mem 3744 1 6 24 9 36 11)						; 	Zombies
  (exec-mem 3744 1 7 27 13 43 15)						; 	Bodies
  (exec-mem 3744 1 8 48 5 54 11)						; 	Store
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB067.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_04.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_04.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 111 #f))								; Lead-in from previous MES script
        (str "Cole: Aw shit! Not again!")
        (set-reg 111 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: This was the city I lived in... But look at it now!")	; Lead-in from loading game
        (wait)
        (text-reset 1))))
  (loop
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (seg-call)
   (if (</>
        (//
         (? (= 126 #t) (= 118 #t) (= 121 #t) (= 125 #t))			; Appended to last action after inspecting everything
         (str "Cole: I wonder if Sheila is safe... I have to find her, but" 'br)
         (str "where do I even start looking?")
         (wait)
         (text-reset 1)
         (str "Cole: Let me breathe for a second and think this through.")	; Quiz follows...
         (wait)
         (text-reset 1)
         (loop
          (str "Cole: After visiting Disco Zeena, where did Sheila go...?")	; Question 1
          (wait)
          (text-reset 1)
          (menu1
           16 298
           36 298
           56 298
           16 317
           36 317
           56 317
           16 337
           36 337
           56 337
           (</>
            (/ (str "Shuffle Food"))						; (These can only be 19 characters max)
            (/ (str "32nd Precinct"))
            (/ (str "Cole's Apartment"))
            (/ (str "Sheila's Apartment"))
            (/ (str "Port Warehouse 3"))
            (/ (str "Light Dance Street"))
            (/ (str "Perain Institute"))
            (/ (str "Bar Rease"))))
          (text-reset 1)
          (str "Cole: That's right. After Disco Zeena, Sheila ")		; Answer 1 selected
          (branch-var
           S
           (</>
            (/
             (str "went to" 'br)
             (str "Shuffle Food."))
            (/
             (str "headed to the" 'br)
             (str "32nd Precinct."))
            (/
             (str "went to my" 'br)
             (str "apartment."))
            (/
             (str "went back to" 'br)
             (str "her own apartment."))
            (/
             (str "headed to the" 'br)
             (str "warehouse."))
            (/
             (str "headed to" 'br)
             (str "Light Dance Street.")
             (set-reg 127 #t))
            (/
             (str "went to the" 'br)
             (str "Perain Institute."))
            (/
             (str "headed to Bar" 'br)
             (str "Rease."))))
          (wait)
          (text-reset 1)
          (str "Cole: And then, after getting captured by Bloody Fox, who" 'br)	; Question 2
          (str "rescued her?")
          (wait)
          (text-reset 1)
          (menu1
           16 298
           36 298
           56 298
           16 317
           36 317
           56 317
           16 337
           36 337
           56 337
           (</>
            (/ (str "Steve"))
            (/ (str "Catherine"))
            (/ (str "Briar"))
            (/ (str "Cole"))
            (/ (str "Nobody"))))
          (text-reset 1)
          (str "Cole: That's right, ")						; Answer 2 selected
          (branch-var
           S
           (</>
            (/ (str "Sheila was rescued by Steve.") (set-reg 128 #t))
            (/ (str "Sheila was rescued by Catherine."))
            (/ (str "Sheila was rescued by Briar."))
            (/ (str "I rescued Sheila! I'm awesome! Wait."))
            (/ (str "nobody wound up rescuing her."))))
          (wait)
          (text-reset 1)
          (str "Cole: ...That's how it is, right?")
          (wait)
          (text-reset 1)
          (str "Cole: Right, so to find Sheila, I should try checking")
          (branch-var
           S
           (</>
            (/
             (text 'br)
             (str "places where Steve might go."))
            (/
             (text 'br)
             (str "places where Catherine might go."))
            (/
             (text 'br)
             (str "places where Briar might go."))
            (/
             (text 'br)
             (str "places where I...would go...? Wait...what?"))
            (/
             (str " her" 'br)
             (str "apartment."))))
          (wait)
          (text-reset 1)
          (if (</>
               (//
                (? (= 127 #t) (= 128 #t))					; Correct answers
                (str "Cole: So thinking of places where Steve might have headed" 'br)
                (str "...the 32nd Precinct, Rease, or the Perain Research" 'br)
                (str "Institute.")
                (wait)
                (text-reset 1)
                (str "Cole: The town got torn up by the zombie attack, so he" 'br)
                (str "might have tried taking shelter somewhere far away...like" 'br)
                (str "the Perain Institute.")
                (wait)
                (text-reset 1)
                (str "Cole: And if he's not there, I can ask Dr. Lisle where he" 'br)
                (str "might have gone.")
                (wait)
                (text-reset 1)
                (str "Cole: Okay, off to the Institute, I guess.")
                (wait)
                (text-reset 1)
                (nop@)
                (set-reg 129 #t)
                (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
                (mes-jump "A:¥MES¥036.MES"))
               (//								
                (str "Cole: Wait...no, something's off... Lemme take a minute to" 'br)
                (str "reconsider.")						; Wrong answer(s)
                (set-reg 127 #f)
                (set-reg 128 #f)
                (wait)
                (text-reset 1))))))))))
 (seg (? (= P 5) (= 112 #f))							; Smoke #1
   (str "Cole: It looks like a car rammed into that store and now" 'br)
   (str "it's on fire. If the undead attacked you while you were" 'br)
   (str "driving, you'd be screwed...")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 113 #f))							; Smoke #2
   (str "Cole: Thick smoke is billowing from fires all over town. Is" 'br)
   (str "this gonna be a repeat of the incident from two years ago?")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Smoke #3 (repeat line)
   (str "Cole: I never thought that while I was knocked out, zombies" 'br)
   (str "would turn the town into a living hell... I can't believe" 'br)
   (str "how quickly they decimated the city.")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 114 #f))							; Zombies #1
   (str "Cole: There's zombies everywhere! It looks like they ate" 'br)
   (str "everyone in town...")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 115 #f))							; Zombies #2
   (str "Cole: Where did all these zombies come from? There's so" 'br)
   (str "many of them, they just rolled over the town like a tidal" 'br)
   (str "wave! Made of blood!")
   (wait)
   (text-reset 1)
   (str "Cole: Maybe I shouldn't think about this too much.")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 116 #f))							; Zombies #3
   (str "Cole: Now that the undead are back, it's obvious someone's" 'br)
   (str "been messing with the reanimation serum. Who would do such" 'br)
   (str "a thing...")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 117 #f))							; Zombies #4
   (str "Cole: I bet you cash money that the people using Doc's" 'br)
   (str "serum to make Purple Sky are the same people who made these" 'br)
   (str "zombies.")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Zombies #5 (repeat line)
   (str "Cole: The undead are closing in. They've noticed me. They" 'br)
   (str "don't move so quick, though, so it'll take them a while to" 'br)
   (str "reach me.")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 119 #f))							; Bodies #1
   (str "Cole: It looks like the townspeople got slaughtered by the" 'br)
   (str "undead. To think that lightning can strike twice.")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 120 #f))							; Bodies #2
   (str "Cole: Two years ago, everyone in my town got eaten by" 'br)
   (str "zombies. Who would have used the serum to make it happen" 'br)
   (str "again!?")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 121 #f))							; Bodies #3
   (str "Cole: Each corpse's head is gnawed open. I'm gonna guess" 'br)
   (str "that the zombies ate their brains. Fuck!")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 122 #f))							; Bodies #4
   (str "Cole: Doc's reanimation serum is off the hook. To think it" 'br)
   (str "could wipe out a town in just a few hours...")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Bodies #5 (repeat line)
   (str "Cole: No survivors to be seen. Those brain-eating hordes" 'br)
   (str "killed everyone here.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 123 #f))							; Store #1
   (str "Cole: Hey, that used to be a good store! And all it took" 'br)
   (str "was a few zombie assholes to ruin it for everyone.")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 124 #f))							; Store #2
   (str "Cole: This store's profit margins are definitely gonna be" 'br)
   (str "in the red.")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 125 #f))							; Store #3
   (str "Cole: I'm the only human left alive here.")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Store #4 (repeat line)
   (str "Cole: I can see tons of corpses inside the store.")
   (wait)
   (text-reset 1))
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
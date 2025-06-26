(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB067.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 7 4 12 7)
  (exec-mem 3744 1 6 24 9 36 11)
  (exec-mem 3744 1 7 27 13 43 15)
  (exec-mem 3744 1 8 48 5 54 11)
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
        (? (= 111 #f))
        (text "Cole: Aw shit! Not again!")
        (set-reg 111 #t)
        (wait)
        (text-reset 1))
       (//
        (text "Cole: This was the city I lived in... But look at it now!")
        (wait)
        (text-reset 1))))
  (loop
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (seg-call)
   (if (</>
        (//
         (? (= 126 #t) (= 118 #t) (= 121 #t) (= 125 #t))
         (text "Cole: I wonder if Sheila is safe.. I have to find her, but  where do I even start looking?")
         (wait)
         (text-reset 1)
         (text "Cole: Let me breathe for a second and think this through.")
         (wait)
         (text-reset 1)
         (loop
          (text "Cole: After visiting Disco Zeena, where did Sheila go...?")
          (wait)
          (text-reset 1)
          (menu1
           16
           298
           36
           298
           56
           298
           16
           317
           36
           317
           56
           317
           16
           337
           36
           337
           56
           337
           (</>
            (/ (text "Shuffle Food"))
            (/ (text "32nd Precinct"))
            (/ (text "Cole's Apartment"))
            (/ (text "Sheila's Apartment"))
            (/ (text "Warehouse 3 at the Port"))
            (/ (text "Light Dance Street"))
            (/ (text "Perain Institute"))
            (/ (text "Bar Rease"))))
          (text-reset 1)
          (text "Cole: That's right. After Disco Zeena, ")
          (branch-var
           S
           (</>
            (/ (text "Sheila went to Shuffle Food."))
            (/ (text "Sheila headed to the 32nd Precinct."))
            (/ (text "Sheila went to my apartment."))
            (/ (text "Sheila went back to her own apartment."))
            (/ (text "Sheila headed to the warehouse."))
            (/ (text "Sheila headed to Light Dance Street.") (set-reg 127 #t))
            (/ (text "Sheila went to the Perain Institute."))
            (/ (text "Sheila headed to bar Rease."))))
          (wait)
          (text-reset 1)
          (text "Cole: And then, after getting captured by Bloody Fox, who   rescued her?")
          (wait)
          (text-reset 1)
          (menu1
           16
           298
           36
           298
           56
           298
           16
           317
           36
           317
           56
           317
           16
           337
           36
           337
           56
           337
           (</>
            (/ (text "Steve"))
            (/ (text "Catherine"))
            (/ (text "Briar"))
            (/ (text "Cole"))
            (/ (text "Nobody"))))
          (text-reset 1)
          (branch-var
           S
           (</>
            (/ (text "Cole: That's right, Sheila was rescued by Steve.") (set-reg 128 #t))
            (/ (text "Cole: That's right, Sheila was rescued by Catherine."))
            (/ (text "Cole: That's right, Sheila was rescued by Briar."))
            (/ (text "Cole: That's right, I rescued Sheila! I'm awesome! Wait."))
            (/ (text "Cole: That's right, nobody wound up rescuing her."))))
          (wait)
          (text-reset 1)
          (text "Cole: ...That's how it is, right?")
          (wait)
          (text-reset 1)
          (branch-var
           S
           (</>
            (/ (text "Cole: Right, so to find Sheila, I should try checking placeswhere Steve might go."))
            (/ (text "Cole: Right, so to find Sheila, I should try checking placeswhere Catherine might go."))
            (/ (text "Cole: Right, so to find Sheila, I should try checking placeswhere Briar might go."))
            (/ (text "Cole: Right, so to find Sheila, I should try checking placeswhere I...would go...? Wait...what?"))
            (/ (text "Cole: Right, so to find Sheila, I should try checking her   apartment."))))
          (wait)
          (text-reset 1)
          (if (</>
               (//
                (? (= 127 #t) (= 128 #t))
                (text
                 "Cole: So thinking of places where Steve might have headed...the 32nd Precinct, Rease, or the Perain Research Institute.")
                (wait)
                (text-reset 1)
                (text
                 "Cole: But this town's been so messed up by the zombie attackthat he wouldn't have stuck around. If it were me, I'd take     shelter somewhere far away...like the Perain Institute.")
                (wait)
                (text-reset 1)
                (text
                 "Cole: And if he's not there, I can ask Dr. Lisle where he   might have gone.")
                (wait)
                (text-reset 1)
                (text "Cole: Okay, off to the Institute, I guess.")
                (wait)
                (text-reset 1)
                (nop@)
                (set-reg 129 #t)
                (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
                (mes-jump "A:¥MES¥036.MES"))
               (//
                (text "Cole: Wait...no, something's off... Lemme take a minute to  reconsider.")
                (set-reg 127 #f)
                (set-reg 128 #f)
                (wait)
                (text-reset 1))))))))))
 (seg (? (= P 5) (= 112 #f))
   (text
    "Cole: It looks like a car rammed into that store and now    it's on fire. If the undead attacked you while you were     driving, you'd be screwed...")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 113 #f))
   (text "Cole: Thick smoke is billowing from fires all over town. Is this gonna be a repeat of the incident from two years ago?")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text
    "Cole: I never thought that while I was knocked out, zombies would turn the town into a living hell... I can't believe   how quickly they decimated the city.")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 114 #f))
   (text "Cole: There's zombies everywhere! It looks like they ate    everyone in town...")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 115 #f))
   (text "Cole: Where did all these zombies come from? There's so manyof them, they just rolled over the town like a tidal wave!    Made of blood!")
   (wait)
   (text-reset 1)
   (text "Cole: Maybe I shouldn't think about this too much.")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 116 #f))
   (text "Cole: Now that the undead are back, it's obvious someone's  been messing with the reanimation serum. Who would do such athing...")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 117 #f))
   (text "Cole: I bet you cash money that the people using Doc's serumto make Purple Sky are the same people who made these zombies.")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text
    "Cole: The undead are closing in. They've noticed me. They   don't move so quick, though, so it'll take them a while to  reach me.")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 119 #f))
   (text "Cole: It looks like the townspeople got slaughtered by the  undead. To think that lightning can strike twice.")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 120 #f))
   (text "Cole: Two years ago, everyone in my town got eaten by       zombies. Who would have used the serum to make it happen    again!?")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 121 #f))
   (text "Cole: Each corpse's head is gnawed open. I'm gonna guess    that the zombies ate their brains. Fuck!")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 122 #f))
   (text "Cole: Doc's reanimation serum is off the hook. To think it  could wipe out a town in just a few hours...")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: No survivors to be seen. Those brain-eating hordes    killed everyone here.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 123 #f))
   (text "Cole: Hey, that used to be a good store! And all it took wasa few zombie assholes to ruin it for everyone.")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 124 #f))
   (text "Cole: This store's profit margins are definitely gonna be inthe red.")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 125 #f))
   (text "Cole: I'm the only human left alive here.")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "Cole: I can see tons of corpses inside the store.") (wait) (text-reset 1))
 (seg (? (= P 2))
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
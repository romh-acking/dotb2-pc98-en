(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB082.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 17 2 35 8)
  (exec-mem 3744 1 6 28 14 35 15)
  (exec-mem 3744 1 7 34 10 40 13)
  (exec-mem 3744 1 8 4 11 12 14)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB082.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_04.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_04.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 100 #f))
        (str "Cole: I've arrived at the 32nd Precinct. I didn't pass" 'br)
(str "anyone on the way here... Does that mean Steve's still" 'br)
(str "inside?")
        (set-reg 100 #t))
       (// (str "Cole: This is the 32nd Precinct. Looks like the zombies had" 'br)
(str "a damn field day in here."))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 6) (= 101 #f))
   (text
    "Cole: Bodies near the entrance... Some are cops. Zombies" 'br)
"made short work of them.")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (str "Cole: Each corpse has had its head gnawed open. At this" 'br)
(str "point, I don't think they could be reanimated.")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 102 #f))
   (str "Cole: The station's windows have been shattered. I bet" 'br)
(str "everyone on the second floor's been killed, too.")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 103 #f))
   (str "Cole: Steve's probably on the second floor. I should try" 'br)
(str "calling for him.")
   (wait)
   (text-reset 1)
   (str "Cole: STEVE! Are you in there? It's Cole!")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1)
   (str "Cole: Is anyone there? STEVE!")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1)
   (str "Cole: That's weird... No answer.")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (str "Cole: If I'm gonna find Steve, I should probably go inside" 'br)
(str "the station instead of just screaming a lot.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 104 #f))
   (str "Cole: I can see a ton of blood near the entrance. I don't" 'br)
(str "think things turned out well for the people inside.")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 105 #f))
   (text
    "Cole: Since the station's only got a front door, there'd be" 'br)
"no escape route if the zombies got in.")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (str "Cole: Steve came here to get documents about Razovan. I hope" 'br)
(str "he's still inside...")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 106 #f))
   (text
    "Cole: This is the lab van I drove here in. Key's in the" 'br)
"ignition if I need to jet out of here in a hurry.")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (str "Cole: The car's parked beside the building.") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (str "Cole: Okay, let's find Steve and get out of here.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 107 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥052.MES"))
 (seg (? (= P 2))
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
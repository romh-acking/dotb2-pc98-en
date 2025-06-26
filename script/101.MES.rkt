(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB166.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 40 7 56 11)
  (exec-mem 3744 1 6 18 11 38 15)
  (exec-mem 3744 1 7 28 7 34 8)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB166.GPC")
  (image-mem 0 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB172C.GPC")
  (image-mem 1 3)
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
        (? (= 128 #f))
        (text "Cole: I doubled back onto the same path as before, but where did I take a wrong turn...?")
        (set-reg 128 #t))
       (// (text "Cole: I need to find the DMV cure quickly. Sheila might not be able to hold out for much longer."))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (text-reset 1) (seg-call)))
 (seg (? (= P 5) (= 129 #f))
   (text "Cole: Maybe the cliff is past that grave...")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: And there could be more zombies lurking, so I need to stay alert.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 130 #f))
   (text "Cole: This is the same path as before... Weird... Where'd I get off track?")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 131 #f))
   (text "Cole: Wait, those footprints don't match mine... I didn't see them until just now.")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 132 #f))
   (text "Cole: Hold up... Those footprints... They don't look like a human made them.")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 133 #f))
   (text "Cole: Let's keep following the footprints...")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (text "Cole: What the hell?")
   (wait)
   (text-reset 1)
   (text
    "Cole: There's no way a human made these! And the soil's still soft... These were made just moments ago!")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (text "Cole: And that flash from before... A laser...? Wait a damn minute...")
   (set-reg 133 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 134 #f))
   (text "Cole: No way. The person who made those footprints was... ")
   (wait)
   (text-reset 1)
   (menu1
    27
    317
    39
    317
    51
    317
    (</> (/ (text "Steve/Jill/Ghoul")) (/ (text "Steve/Jill/Ghoul")) (/ (text "Steve/Jill/Ghoul"))))
   (text-reset 1)
   (text "Cole: !")
   (branch-var S (</> (/ (text "Steve/Jill/Ghoul")) (/ (text "Steve/Jill/Ghoul")) (/ (text "Steve/Jill/Ghoul"))))
   (text ", right?")
   (wait)
   (text-reset 1)
   (branch-var
    S
    (</>
     (/
      (text "Cole: Wait a second. If Steve came to help me, why didn't he make himself known?")
      (wait)
      (text-reset 1)
      (text "Cole: It's not like he's got a reason to hide from me. Those prints have to belong to someone else.")
      (wait)
      (text-reset 1))
     (/
      (text
       "Cole: Jill is the one manufacturing the reanimation serum. And he's always looked down on us. There's no way he'd save my life.")
      (wait)
      (text-reset 1))
     (/
      (text
       "Cole: No, that's impossible. Richard Gris...Ghoul...is dead. I saw him explode right in front of me. Steve even has a part of his head.")
      (wait)
      (text-reset 1)
      (text "Cole: Besides, there's no way an android killing machine would come to my aid.")
      (wait)
      (text-reset 1)
      (text "Cole: Then what the hell made these footprints...?")
      (wait)
      (text-reset 1)
      (text "Cole: Could it be that there's other androids like Ghoul out there?")
      (set-reg 134 #t)
      (wait)
      (text-reset 1)))))
 (seg (? (= P 6) (= 135 #f))
   (text "Cole: If those footprints are from an android like Ghoul... Could it mean this one is an ally?")
   (wait)
   (text-reset 1)
   (text "Cole: He went out of the way to come to the cemetery and save me from the undead... But why isn't he showing himself?")
   (set-reg 135 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: I can see an android's footprints in the soil.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 136 #f))
   (text "Cole: If the path ahead ends at a cliff... Maybe there's another route.")
   (set-reg 136 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 137 #f))
   (text "Cole: I know it's not this way, but there doesn't seem to be another path around here.")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: I remember running down this path two years ago...")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 137 #t) (= 135 #t))
   (exec-mem 6064 2 1)
   (text "Cole: I need to find the cure and let Steve know what's happening.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (text "Cole: Wait, I'm at the rear exit to the cemetery. I thought I was looking carefully, but I didn't find the cure at all...")
   (wait)
   (text-reset 1)
   (text "Cole: I've got to double back and try again. I can't go back to the lab empty-handed.")
   (wait)
   (text-reset 1)
   (text "Cole: Oh!")
   (wait)
   (text-reset 1)
   (nop@)
   (set-reg 138 #t)
   (mes-jump "A:¥MES¥102.MES"))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Cole: If I keep going this way I'll reach the same cliff again. I'd better look around before moving on.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3))
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
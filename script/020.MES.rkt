(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB040B.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 17 2 35 8)
  (exec-mem 3744 1 6 7 10 11 12)
  (exec-mem 3744 1 7 34 10 40 13)
  (exec-mem 3744 1 8 50 2 54 5)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB040.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB040B.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 123 #f))
        (text "Cole: This is Precinct 32. I wonder if Steve's here.")
        (set-reg 123 #t))
       (// (text "Cole: This is Precinct 32, where Steve is."))))
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 124 #f))
   (text "Cole: This station is pretty far from my apartment. I left  home around 2pm, and it's aready sunset...")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 125 #f))
   (text "Cole: A two-story building. It's quiet. ")
   (wait)
   (text-reset 1)
   (text
    "Cole: When you think of a police station, you'd imagine     crooks coming and going, but in a small town like ours, thisis basically all it amounts to.")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 126 #f))
   (text
    "Cole: Even with such an impressive police station, they     still can't do anything about Bloody Fox. In this town,     they're bigger than the police.")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: I need to meet up with Steve and get the details on   Purple Sky. I'm worried about what might happen to Sheila.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 127 #f))
   (text "Cole: Hey, a cop's slacking off next to a patrol car.")
   (set-reg 127 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 128 #f))
   (text "Officer: Sir? Do you need something from me?")
   (wait)
   (text-reset 1)
   (text "Cole: Uh, no, not really...")
   (wait)
   (text-reset 1)
   (text "Officer: If you don't have any business here, then please   move along. I'm pissed off enough as it is!")
   (set-reg 128 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 129 #f))
   (text "Cole: Um...")
   (wait)
   (text-reset 1)
   (text "Officer: You again? I told you to get lost!")
   (wait)
   (text-reset 1)
   (text "Cole: Where's Steve?")
   (wait)
   (text-reset 1)
   (text "Officer: There's Steves everywhere! It's a common name.")
   (wait)
   (text-reset 1)
   (text "Cole: No no, Steve Gris.")
   (wait)
   (text-reset 1)
   (text "Officer: Oh, Gris? He's the boss here at Precinct 32.")
   (wait)
   (text-reset 1)
   (text "Cole: So Steve's the boss. Figures, the guy's so            level-headed.")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 130 #f))
   (text "Officer: Do you know the boss?")
   (wait)
   (text-reset 1)
   (text "Cole: Something like that.")
   (wait)
   (text-reset 1)
   (text "Officer: I see. Well, if you could not mention that I'm     taking a smoke break down here...")
   (wait)
   (text-reset 1)
   (text "Cole: I won't.")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Officer: The boss is up on the second floor, in the         Investigation Division.")
   (wait)
   (text-reset 1)
   (text "Cole: Thanks.")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 132 #t))
   (text "Cole: The cop told me that Steve's on the second floor.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 131 #f))
   (text "Cole: This is the entrance...reminds me of a Parisian art   museum I saw in a magazine once.")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: I'll ask that cop where Steve is before I head in.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 133 #f))
   (text
    "Cole: There's Old Glory fluttering in the wind. Mild breeze today, it's kinda rare. Could it be a harbinger of an       impending disaster, like a quake or a tornado...? ")
   (wait)
   (text-reset 1)
   (text "Cole: Aw man, if something like that went down, my apartmentwould be flattened.")
   (set-reg 133 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Cole: The flag looks a little faded... Kinda hard to tell   it's an American flag. You gotta squint.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 132 #t))
   (exec-mem 6064 2 1)
   (text "Cole: OK, let's go meet Steve.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 134 #t)
   (mes-jump "A:¥MES¥021.MES"))
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
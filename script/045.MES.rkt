(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB076.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 4 10 14 15)
  (exec-mem 3744 1 6 44 10 49 11)
  (exec-mem 3744 1 7 15 9 26 15)
  (exec-mem 3744 1 8 22 5 39 8)
  (exec-mem 3744 1 9 31 14 44 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB076.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 159 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 160 #f))
        (text "Cole: Christ almighty! The stink of death is overpowering. I" 'br)
(text "can't loiter in here.")
        (set-reg 160 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: I'm inside the Shuffle Food.") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 162 #t) (= 165 #t) (= 167 #t))
   (text "???: Oogh... Urgh...")
   (wait)
   (text-reset 1)
   (text "Cole: Oh my shit! Is that a zombie?")
   (wait)
   (text-reset 1)
   (text "???: (Sniffle) Urgh... Urgh...")
   (wait)
   (text-reset 1)
   (text "Cole: Wait, no, that's a woman crying!")
   (wait)
   (text-reset 1)
   (text "Cole: Is someone there? Hey! Where are you!")
   (wait)
   (text-reset 1)
   (text "???: Here...over here...")
   (wait)
   (text-reset 1)
   (text "Cole: She's behind there!")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥046.MES"))
 (seg (? (= P 5) (= 161 #f))
   (text "Cole: There's a counter in the front. Nothing noteworthy" 'br)
(text "here.")
   (set-reg 161 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 162 #f))
   (text "Cole: There's no bodies behind the counter. It looks like" 'br)
(text "the mass killing happened out on the main dining room floor.")
   (set-reg 162 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: Busted plates and glasses are all over the floor.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 163 #f))
   (text "Cole: Bodies of Bloody Fox members... Weird, you wouldn't" 'br)
(text "expect them to eat somewhere like this.")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 164 #f))
   (text "Cole: These dead Bloody Fox members aren't gonna cause any" 'br)
(text "trouble, so I can't complain.")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text
    "Cole: Bloody Fox in a family restaurant, huh? Maybe they're" 'br)
"making a killing dealing Purple Sky and were living it up" 'br)
"with milkshakes and fried onions.")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 166 #f))
   (text "Cole: Customers and staff alike are all over the place," 'br)
(text "extremely dead.")
   (wait)
   (text-reset 1)
   (text "Cole: Huh? Some decomposed bodies here too... Probably" 'br)
(text "zombie corpses.")
   (set-reg 166 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 167 #f))
   (text
    "Cole: Looking at these stacks of bodies isn't doing my" 'br)
"mental health any favors. I don't see anyone who looks like" 'br)
"Catherine.")
   (set-reg 167 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text
    "Cole: The stench of death is dancing inside my nostrils..." 'br)
"That nasty funk and the smell of blood. I'm gonna hurl.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 168 #f))
   (text "Cole: Zombies don't care if panes of glass are between them" 'br)
(text "and their victims, they're coming in regardless.")
   (set-reg 168 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 169 #f))
   (text "Cole: It wasn't just one or two zombies that got in here..." 'br)
(text "It was a damn battalion.")
   (set-reg 169 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Cole: I guess the zombies didn't stick around... They must" 'br)
(text "have moved on to more live targets.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 163 #f))
   (text "Cole: Bodies of Bloody Fox members... Weird, you wouldn't" 'br)
(text "expect them to eat somewhere like this.")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 164 #f))
   (text "Cole: These dead Bloody Fox members aren't gonna cause any" 'br)
(text "trouble, so I can't complain.")
   (set-reg 164 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (text
    "Cole: Bloody Fox in a family restaurant, huh? Maybe they're" 'br)
"making a killing dealing Purple Sky and were living it up" 'br)
"with milkshakes and fried onions.")
   (set-reg 165 #t)
   (wait)
   (text-reset 1))
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
        (/ (nop@) (set-reg 159 #f) (flag-save 1))
        (/ (nop@) (set-reg 159 #f) (flag-save 2))
        (/ (nop@) (set-reg 159 #f) (flag-save 3))
        (/ (nop@) (set-reg 159 #f) (flag-save 4))
        (/ (nop@) (set-reg 159 #f) (flag-save 5))
        (/ (nop@) (set-reg 159 #f) (flag-save 6))
        (/ (nop@) (set-reg 159 #f) (flag-save 7))
        (/ (nop@) (set-reg 159 #f) (flag-save 8))
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
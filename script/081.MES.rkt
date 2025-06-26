(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB133.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 24 3 37 5)
  (exec-mem 3744 1 6 23 6 37 11)
  (exec-mem 3744 1 7 4 12 27 15)
  (exec-mem 3744 1 8 38 7 56 10)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB133.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_13.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_13.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 100 #f))
        (text "Steve: This is Disbell Cemetery. All the bodies from the" 'br)
(text "incident in the neighboring town were buried here.")
        (wait)
        (text-reset 1)
        (text
         "Cole: They said Doc's body exhibited brainwaves, so any" 'br)
"corpse with the reanimation serum in it should be revivable.")
        (wait)
        (text-reset 1)
        (text "Steve: Probably... But without our help, it's not like the" 'br)
(text "corpses are going to start crawling out of their graves.")
        (set-reg 100 #t)
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 101 #f))
   (text
    "Cole: ...'Disbell Cemetery' is written over the gate. Last" 'br)
"night, Steve and Lisle came here to exhume Doc's body...")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 102 #f))
   (text "Steve: Don't worry, there weren't any zombies lurking around" 'br)
(text "here last night.")
   (wait)
   (text-reset 1)
   (text "Cole: It looks like Daniel's meddling hasn't extended to the" 'br)
(text "cemetery...")
   (wait)
   (text-reset 1)
   (text
    "Steve: Daniel is reviving the undead from Calizenne" 'br)
"Cemetery... The one closest to town. This is a much smaller" 'br)
"cemetery.")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "Cole: Is Doc really resting here in Disbell?") (wait) (text-reset 1))
 (seg (? (= P 6) (= 103 #f))
   (text "Steve: Anyone can just open the gate. There's no guards" 'br)
(text "here, so thieves are free to enter.")
   (wait)
   (text-reset 1)
   (text "Cole: Grave robbers?")
   (wait)
   (text-reset 1)
   (text "Steve: Well, only if their targets are dead. How's it" 'br)
(text "classified if you steal from a zombie, I wonder...?")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "Cole: The gate isn't locked.") (wait) (text-reset 1))
 (seg (? (= P 7) (= 104 #f))
   (text "Cole: Can we drive the car in?")
   (wait)
   (text-reset 1)
   (text "Steve: The grounds are large, but the gate's too narrow..." 'br)
(text "The cemetery wasn't originally designed for vehicles to" 'br)
(text "enter.")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 105 #f))
   (text "Cole: The car's headlights are illuminating the grounds.")
   (wait)
   (text-reset 1)
   (text "Steve: My bad, I forgot to kill the engine.")
   (wait)
   (text-reset 1)
   (text "Cole: No, better to keep the engine running. If something" 'br)
(text "goes down, we can get out of here ASAP.")
   (wait)
   (text-reset 1)
   (text "Steve: Fair enough.")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Steve: From here on, we're on foot, so let's bring a" 'br)
(text "flashlight.")
   (wait)
   (text-reset 1)
   (text "Cole: Okay.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 106 #f))
   (text "Cole: The cemetery is dim... It's hard to see anything.")
   (wait)
   (text-reset 1)
   (text "Steve: There's one flashlight.")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 107 #f))
   (text "Steve: You can make things out under the moonlight...")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Cole: The weeds are overgrown... Maybe you can blame the" 'br)
(text "poor upkeep. If any zombies are lurking, we won't stand a" 'br)
(text "chance.")
   (wait)
   (text-reset 1)
   (text "Steve: Let's finish this up as quickly as possible and get" 'br)
(text "back to the lab.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Steve: I'll take the light... Cole, you take the shovel.")
   (wait)
   (text-reset 1)
   (text "Cole: Got it.")
   (wait)
   (text-reset 1)
   (text "Steve: Cooger's grave is a ten-minute walk from here... Be" 'br)
(text "careful.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 108 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥082.MES"))
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
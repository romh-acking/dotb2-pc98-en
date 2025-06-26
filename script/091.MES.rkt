(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB144.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 8 2 14 15)
  (exec-mem 3744 1 6 20 5 23 12)
  (exec-mem 3744 1 7 24 7 27 11)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB144.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 158 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 169 #f))
        (text "Cole: Okay, so I've climbed the stairs and I'm on the secondfloor hallway... But no sign of Steve.")
        (wait)
        (text-reset 1)
        (text "Cole: He might be in one of the rooms. At this point I      should check 'em one by one.")
        (wait)
        (text-reset 1)
        (text "Cole: Now then, which should I investigate first...")
        (set-reg 169 #t)
        (wait)
        (text-reset 1))
       (//
        (? (= 170 #f))
        (sound '|| 2)
        ((cmd 209) 0 5)
        (image-file "B:¥GPC¥DB147.GPC")
        (image-mem 0 3)
        (sound '|| 0)
        (sound '|se | 5)
        ((cmd 209) 1 5)
        (text
         "Daniel: Heh heh heh... To think you'd come here all by      yourself, so nonchalantly... What a dolt. Well, it saves me the trouble of going after you...")
        (wait)
        (text-reset 1)
        (text "Steve: You...!")
        (wait)
        (text-reset 1)
        (text
         "Daniel: The Bloody Fox member I dispatched to Perain was    merely a greeting. I didn't expect much from a thug like    him.")
        (wait)
        (text-reset 1)
        (text "Daniel: It was all part of my plan to lure you here.")
        (wait)
        (text-reset 1)
        (text "Steve: !?!")
        (wait)
        (text-reset 1)
        (text
         "Daniel: Since there are still survivors at your precious    institute, I figured any of you who showed up would be readyto kill me.")
        (wait)
        (text-reset 1)
        (text "Daniel: It looks like I was one step ahead of you, after    all...")
        (wait)
        (text-reset 1)
        (text "Steve: !?!")
        (wait)
        (text-reset 1)
        (text
         "Daniel: You already know about this drug, don't you? Yes,   the one Bloody Fox has been peddling, under the name Purple Sky.")
        (wait)
        (text-reset 1)
        (text
         "Daniel: This Purple Sky has been left sitting for three     weeks, and will cause complete death 20 minutes after being injected into the bloodstream. I've already tested it on thetownspeople.")
        (wait)
        (text-reset 1)
        (text "Steve: You're doing this to innocent people...!")
        (wait)
        (text-reset 1)
        (text "Daniel: I won't have a lowlife like you critiquing my       precious research!")
        (wait)
        (text-reset 1)
        (text
         "Steve: Research!? Refining the reanimation serum into PurpleSky and distributing it through Bloody Fox, causing so much    death and misery to the innocent... That's your 'research'?")
        (wait)
        (text-reset 1)
        (text
         "Daniel: There are still many mysteries hidden within the    reanimation serum. With further research, even more         wonderful results are sure to emerge!")
        (wait)
        (text-reset 1)
        (text "Daniel: A drug that transcends even Cooger's...a drug that  wields a power beyond that of gods...will be revived by my  own hand!")
        (wait)
        (text-reset 1)
        (text "Steve: You're a fucking demon!")
        (wait)
        (text-reset 1)
        (text "Daniel: A few sacrifices are always unavoidable. And you getto serve as one yourself!")
        (wait)
        (text-reset 1)
        (text "Steve: W-What are you doing?")
        (wait)
        (text-reset 1)
        (text "Daniel: You'll be spending your final twenty minutes        trembling in fear, dying from Purple Sky!")
        (wait)
        (text-reset 1)
        (text "Daniel: Huh? What's this?")
        (wait)
        (text-reset 1)
        (text "Daniel: Another rat has come to infest my temple...")
        (wait)
        (text-reset 1)
        (text "Steve: Cole! Stay back!")
        (wait)
        (text-reset 1)
        (text "Daniel: I'll deal with you later. For now, just sit back andwatch this fool die!")
        (set-reg 170 #t)
        (wait)
        (text-reset 1)
        (sound '|| 2)
        ((cmd 209) 0 5)
        (image-file "B:¥GPC¥DB144.GPC")
        (image-mem 0 3)
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 3)
        ((cmd 209) 1 5))))
  (loop
   (text-frame 15 298 74 356)
   (text-reset 1)
   (text "Cole: Okay, where should I go...")
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (text-reset 1)
   (seg-call)))
 (seg (? (= P 5) (= 171 #f))
   (text "Cole: I wonder if Steve is in this room...")
   (set-reg 171 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥092.MES"))
 (seg (? (= P 5))
   (text "Cole: This was the lab, wasn't it?")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥092.MES"))
 (seg (? (= P 6) (= 172 #f))
   (text "Cole: What kind of room is this?")
   (set-reg 172 #t)
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥093.MES"))
 (seg (? (= P 6))
   (text "Cole: This is a storage room, correct?")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥093.MES"))
 (seg (? (= P 7) (= 173 #f))
   (text "Cole: I guess I'll check this room...")
   (wait)
   (text-reset 1)
   (text "Cole: Huh? Won't open. Locked.")
   (set-reg 173 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 174 #f))
   (text "Cole: I can't get into this room. I wonder what's going on  inside. Here, let me listen...")
   (wait)
   (text-reset 1)
   (text "Cole: ...No good, I can't hear anything.")
   (wait)
   (text-reset 1)
   (text "Cole: Well, I guess I've gotta give up.")
   (set-reg 174 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text
    "Cole: Since the room's locked, I can't investigate it.      There's no sounds or signs of people, so I don't need to    bother.")
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
        (/ (nop@) (set-reg 158 #f) (flag-save 1))
        (/ (nop@) (set-reg 158 #f) (flag-save 2))
        (/ (nop@) (set-reg 158 #f) (flag-save 3))
        (/ (nop@) (set-reg 158 #f) (flag-save 4))
        (/ (nop@) (set-reg 158 #f) (flag-save 5))
        (/ (nop@) (set-reg 158 #f) (flag-save 6))
        (/ (nop@) (set-reg 158 #f) (flag-save 7))
        (/ (nop@) (set-reg 158 #f) (flag-save 8))
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
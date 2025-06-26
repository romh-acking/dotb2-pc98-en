(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB004C.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 6 27 5 36 13)
  (exec-mem 3744 1 7 23 2 40 3)
  (exec-mem 3744 1 8 3 8 7 12)
  (exec-mem 3744 1 9 37 7 47 14)
  (exec-mem 3744 1 10 52 12 56 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB003.GPC")
  (image-mem 1 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB055C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (image-file "B:¥GPC¥DB056C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 1 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 2 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (str "Cole: Finally back at my apartment. It's quite a hump from" 'br)
  (str "the disco.")
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 6))
   (branch-random
    (</>
     (/ (str "Cole: Those are my lucky wall clippings."))
     (/
      (str "Cole: I cut up mags and newspapers and put the interesting" 'br)
      (str "stuff on the wall."))))
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 230 #f))
   (str "Cole: The air conditioner's been off since I left.")
   (set-reg 230 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (str "Cole: The weather's been just fine, so I don't need the air" 'br)
   (str "conditioner.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 231 #f))
   (str "Cole: I wonder if I got any messages on my machine. Why" 'br)
   (str "would Sheila go to Light Dance Street? There's nothing on" 'br)
   (str "that old country road...")
   (set-reg 231 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 232 #f))
   (str "Cole: No messages, and Sheila's room was ransacked. The" 'br)
   (str "hell's going on? Does she even know her place was all torn" 'br)
   (str "up?")
   (wait)
   (text-reset 1)
   (str "Cole: If someone attacked her in her room and she got away," 'br)
   (str "she would have called me... Or is something else keeping" 'br)
   (str "her from doing that?")
   (set-reg 232 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 233 #f))
   (str "Cole: There's no word from Steve, either. Maybe I'll give" 'br)
   (str "him a ring.")
   (wait)
   (text-reset 1)
   (str "Cole: Dialing 734-1...")
   (wait)
   (text-reset 1)
   (str "Police: Hello, 32nd Precinct.")
   (wait)
   (text-reset 1)
   (str "Cole: This is Cole. Can I talk with Steve from the" 'br)
   (str "Investigation Division, please?")
   (wait)
   (text-reset 1)
   (str "Police: One moment.")
   (wait)
   (text-reset 1)
   (str "Cole: I just hope Steve's dug up some clues at Sheila's" 'br)
   (str "place...")
   (wait)
   (text-reset 1)
   (str "Police: Thanks for waiting, but Steve's currently out.")
   (wait)
   (text-reset 1)
   (str "Cole: Huh? Not there, eh?")
   (wait)
   (text-reset 1)
   (str "Police: No, sir.")
   (wait)
   (text-reset 1)
   (str "Cole: Ah, I see. Never mind, then. Thanks.")
   (wait)
   (text-reset 1)
   (str "Cole: Weird as hell, it's about time he should be back at" 'br)
   (str "the station...")
   (set-reg 233 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (str "Cole: Sheila's not here, and neither is Steve... Maybe I" 'br)
   (str "should just wait for a call.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 233 #t) (= 235 #t))
   (str "Cole: Hey, there's something by the door...")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (str "Cole: A package? Maybe it came while I was out. But there's" 'br)
   (str "no name on it... A delivery service wouldn't drop off that" 'br)
   (str "kind of thing...")
   (wait)
   (text-reset 1)
   (str "Cole: Well, let's open it up and see.")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 0")
   (sound '|| 0)
   (sound '|se | 4)
   (str "Cole: God! This... this is...")
   (wait)
   (text-reset 1)
   (sound '|| 0)
   (if (</>
        (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
        (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
   (sound '|| 1)
   (str "Cole: This is the engagement ring I bought for Sheila! Why" 'br)
   (str "would this be here? And is that blood!?")
   (wait)
   (text-reset 1)
   (str "Cole: And there's something written here...“If you want" 'br)
   (str "your woman back, come to Warehouse 3 at the port.”")
   (wait)
   (text-reset 1)
   (str "Cole: Jesus! Sheila's really been kidnapped, hasn't she?")
   (wait)
   (text-reset 1)
   (str "Cole: But who in God's name...")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 2 54 38,W 0,O 0")
   (exec-mem 912 "EXIT")
   (str "Cole: No time to stay here. I gotta rescue Sheila!")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   ((cmd 204) 100 899)
   (mes-jump "A:¥MES¥032.MES"))
 (seg (? (= P 9) (= 234 #f))
   (str "Cole: This is the door I entered from. I didn't lock it" 'br)
   (str "since I figured Sheila might come here. It's been unlocked" 'br)
   (str "since I left.")
   (set-reg 234 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 235 #f))
   (str "Cole: I always carry my cash with me, so even if someone" 'br)
   (str "breaks in, there's nothing worth taking.")
   (wait)
   (text-reset 1)
   (str "Cole: But if Sheila's room got ransacked, how is it that my" 'br)
   (str "totally open room was untouched?")
   (set-reg 235 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (str "Cole: The door's closed. I guess nobody's coming in.")
   (wait)
   (text-reset 1))
 (seg (? (= P 10) (= 236 #f))
   (str "Cole: I'm too worried about Sheila to put on any music" 'br)
   (str "right now.")
   (set-reg 236 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 10))
   (str "Cole: Too many things to think about. I'll leave the stereo" 'br)
   (str "off.")
   (wait)
   (text-reset 1))
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
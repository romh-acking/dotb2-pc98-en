(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB101.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 37 5 54 10)
  (exec-mem 3744 1 6 20 3 27 13)
  (exec-mem 3744 1 7 4 12 17 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB101.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (?
         (= 113 #t)
         (= 124 #t)
         (= 125 #t)
         (= 132 #t)
         (= 135 #t)
         (= 142 #t)
         (= 146 #t))
        (text "Cole: I'm starting to tire out... It's about time I got some rest.")
        (wait)
        (text-reset 1)
        (text "Cole: At this rate, I'll be awake until nighttime...")
        (wait)
        (text-reset 1)
        (text "Cole: Day and night... have totally reversed on my body clock.")
        (wait)
        (text-reset 1)
        (text "Cole: Sleepy...")
        (wait)
        (text-reset 1)
        (sound '|| 2)
        ((cmd 209) 0 10)
        (text-frame 0 0 79 399)
        (text-reset 1)
        (text-frame 15 298 74 356)
        (image-file "A:¥GPC¥DB_FRM.GPC")
        (image-mem 0 3)
        (image-file "B:¥GPC¥DB088.GPC")
        (image-mem 1 3)
        (text "Cole: Gyaaaaa!")
        ((cmd 209) 1)
        (sound '|| 0)
        (sound '|se | 4)
        ((cmd 209) 0 5)
        (text-frame 0 0 79 399)
        (text-reset 1)
        ((cmd 209) 1)
        (text-frame 15 298 74 356)
        (sound '|| 0)
        (text "Are you okay? Cole, pull yourself together!")
        (wait)
        (text-reset 1)
        (text "Cole: Huh? Who's there?")
        (wait)
        (text-reset 1)
        (text "Pull yourself together...")
        (wait)
        (text-reset 1)
        ((cmd 209) 0 5)
        (image-file "A:¥GPC¥DB_FRM.GPC")
        (image-mem 0 3)
        (image-file "B:¥GPC¥DB101.GPC")
        (image-mem 0 3)
        (image-file "B:¥GPC¥DB103.GPC")
        (image-mem 1 3)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
        (sound '|| 3)
        ((cmd 209) 1 10)
        (text "Catherine: Cole, are you alright?")
        (wait)
        (text-reset 1)
        (text "Cole: Oh, Catherine...")
        (wait)
        (text-reset 1)
        (text "Catherine: You were tossing and turning so much, and sweating like crazy. ")
        (wait)
        (text-reset 1)
        (text "Cole: I was having a helluva nightmare.")
        (wait)
        (text-reset 1)
        (text "Cole: Why are you here? It's late.")
        (wait)
        (text-reset 1)
        (text "Catherine: I couldn't get to sleep. When I stepped into the hallway to take some tranquilizers, I heard moaning from your room.")
        (wait)
        (text-reset 1)
        (text "Cole: Geez, was I really that loud?")
        (wait)
        (text-reset 1)
        (text "Catherine: It looks like you're alright now. Anyway, I...")
        (wait)
        (text-reset 1)
        (text "Cole: Catherine, there was something you wanted to talk about, right?")
        (wait)
        (text-reset 1)
        (text "Catherine: ...")
        (wait)
        (text-reset 1)
        (text "Cole: How about we head up to the roof? I'd been wanting to check it out.")
        (wait)
        (text-reset 1)
        (text "Catherine: Sure, that's fine.")
        (wait)
        (text-reset 1)
        (sound '|| 2)
        (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
        (mes-jump "A:¥MES¥061.MES"))
       (// (text "Cole: Today's been a busy day, so I'm exhausted.") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 114 #f))
   (text "Cole: There are rows of lockers with locks on them. Probably used by the people working here.")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 115 #f))
   (text
    "Cole: It's human nature... When you see a locked door, you wanna see what's  inside. But lockers have personal stuff inside them.")
   (wait)
   (text-reset 1)
   (text "Cole: But I'm not that nosy that I'd go snooping.")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "Cole: These are the institute's lockers. I can leave them be.") (wait) (text-reset 1))
 (seg (? (= P 6) (= 116 #f))
   (text "Cole: That's the entrance to this room.")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 117 #f))
   (text "Cole:  I wonder if anyone will come in...")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: That door isn't locked. Anyone's free to come in.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 118 #f))
   (text "Cole: There's a desk in here. I used to study a lot, but nowadays I hardly ever use a desk.")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 119 #f))
   (text "Cole: The drawer's empty. Nothing in here to grab my attention.")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: I need to make sure I don't bash my head on the edge of the desk when I roll over in bed.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Cole: Maybe I'll head out into the hallway.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥056.MES"))
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
(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB010.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 33 9 37 13)
  (exec-mem 3744 1 6 49 5 56 10)
  (exec-mem 3744 1 7 5 10 21 14)
  (exec-mem 3744 1 8 25 8 31 12)
  (exec-mem 3744 1 9 48 12 56 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB010.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_09.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_09.USO"))))
  (sound '|| 1)
  (text-frame 15 298 74 356)
  (text "Cole: I'm out on Main Street but...there's no sign of any" 'br)
  (text "zombies.")
  (wait)
  (text-reset 1)
  (loop
   (if (</>
        (//
         (? (= 137 #t) (= 141 #t) (= 143 #t) (= 145 #t))
         (sound '|| 2)
         (text "Cole: Huh? What's that?")
         (wait)
         (text-reset 1)
         (sound '|se | 8)
         (text "Cole: I hear motorcycles...")
         (wait)
         (text-reset 1)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥004.MES"))))
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (seg-call)))
 (seg (? (= P 5) (= 136 #f))
   (text "Cole: Plenty of nightlife on this street. People start" 'br)
  (text "showing up once it gets dark.")
   (set-reg 136 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 137 #f))
   (text "Cole: Lots of people walking around unfazed. Just another" 'br)
   (text "ordinary night.")
   (wait)
   (text-reset 1)
   (text "Cole: If a zombie had popped out of that alley, everyone" 'br)
   (text "would be losing their shit. But...nothing.")
   (wait)
   (text-reset 1)
   (text "Cole: Even if the culprit is human, no normal person would" 'br)
   (text "chew through Terry and Lynn's skulls and devour their" 'br)
   (text "brains. No... It's gotta be zombies.")
   (set-reg 137 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: I'm not seeing anyone suspicious here.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 138 #f))
   (text "Cole: Plenty of bars on this street, but there's no time to" 'br)
   (text "start boozing it up.")
   (set-reg 138 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 139 #f))
   (text "Cole: Drinking is off the table until I figure out where" 'br)
   (text "that reanimation serum came from.")
   (set-reg 139 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: Nobody looking like a culprit in these shops. They" 'br)
   (text "may have already made themselves scarce.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 140 #f))
   (text "Cole: Taxis waiting for fares. It's early so there aren't" 'br)
   (text "many yet. By 4AM, it's a veritable cab convoy.")
   (set-reg 140 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 141 #f))
   (text "Cole: Maybe the killer already made off in one of these" 'br)
   (text "cabs...")
   (set-reg 141 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: I could grab a taxi too, but where would I go? Better" 'br)
   (text "to stay here and hunt for clues.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 142 #f))
   (text "Cole: There's a newsstand in front of that shop. This is a" 'br)
   (text "high-traffic area, so they must have good sales.")
   (set-reg 142 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 143 #f))
   (text "Cole: That newsstand's run by the regular bearded old" 'br)
   (text "fella, hocking papers and magazines. Says he has two" 'br)
   (text "grandkids in the boonies.")
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Cole: I get my paper delivered, so I don't need to buy one" 'br)
   (text "here.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 144 #f))
   (text "Cole: This bar has outdoor seating. Typically there'd be" 'br)
   (text "three or four people outside drinking, but today it's" 'br)
   (text "unusually empty.")
   (set-reg 144 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 145 #f))
   (text "Cole: Once I went drinking here with Terry. We got totally" 'br)
   (text "destroyed and drank until the morning.")
   (wait)
   (text-reset 1)
   (text "Cole: Shit...just who did that to him!?")
   (set-reg 145 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9)) (text "Cole: Nobody's drinking here today.") (wait) (text-reset 1))
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB142.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 20 5 36 10)
  (exec-mem 3744 1 6 29 11 34 13)
  (exec-mem 3744 1 7 38 10 49 13)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB142.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 151 #f))
        (str "Cole: This is Razovan Pharmaceuticals.")
        (wait)
        (text-reset 1)
        (str "Cole: Just like Steve said, it's about an hour east from the" 'br)
        (str "lab.")
        (set-reg 151 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: So this is Razovan Pharmaceuticals. I hope Steve is" 'br)
        (str "okay.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 152 #f))
   (str "Cole: This building looks pretty old-fashioned. Steve must" 'br)
   (str "have gone in alone to look for Daniel...")
   (set-reg 152 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 153 #f))
   (str "Cole: I can't believe the director of Razovan" 'br)
   (str "Pharmaceuticals used the reanimation serum to raise the" 'br)
   (str "dead and level the city.")
   (set-reg 153 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 154 #f))
   (str "Cole: Steve was dead serious... He might have already taken" 'br)
   (str "down Daniel by now.")
   (wait)
   (text-reset 1)
   (str "Cole: But I won't be at ease until I see Daniel's corpse.")
   (set-reg 154 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (str "Cole: For now, all I can do is pray that Steve is still" 'br)
   (str "safe.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 155 #f))
   (str "Cole: Huh? There's a white car parked in front of the" 'br)
   (str "building. Even though the engine's running, nobody's inside.")
   (set-reg 155 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 156 #f))
   (str "Cole: I'm certain that's the station wagon from the" 'br)
   (str "lab...the one Steve left in. Only someone like Steve or me" 'br)
   (str "would leave the keys in the ignition.")
   (set-reg 156 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (str "Cole: If the car's still here, Steve's probably still" 'br)
   (str "inside the building.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 157 #f))
   (str "Cole: There's not a single guard in front of the building.")
   (set-reg 157 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (str "Cole: The building looks empty...") (wait) (text-reset 1))
 (seg (? (= P 1) (= 154 #t) (= 156 #t))
   (exec-mem 6064 2 1)
   (str "Cole: OK, let's do this.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 158 #t)
   (mes-jump "A:¥MES¥090.MES"))
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
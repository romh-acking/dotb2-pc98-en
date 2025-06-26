(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB075.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 39 5 46 8)
  (exec-mem 3744 1 6 40 8 47 11)
  (exec-mem 3744 1 7 48 3 56 5)
  (exec-mem 3744 1 8 4 10 11 13)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB075.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 150 #f))
        (text "Cole: Oh, this is bad... The zombies took out Shuffle Food.")
        (set-reg 150 #t)
        (wait)
        (text-reset 1))
       (//
        (text "Cole: I can't believe this is the same place as before. Is Catherine okay?")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 151 #f))
   (text "Cole: Shit, I didn't make it in time... If only I'd remembered Catherine sooner...")
   (wait)
   (text-reset 1)
   (text "Cole: I can't give up yet. I have to see the damage...")
   (set-reg 151 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 152 #f))
   (text
    "Cole: Everything's trashed. Broken glass everywhere, dead bodies on the inside. I'll join them if I underestimate the zombie horde, so I gotta be careful.")
   (set-reg 152 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 153 #f))
   (text "Cole: The restaurant is silent as the grave. I don't see any movement.")
   (set-reg 153 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: I can't leave yet. I need to search the inside of the restaurant.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 154 #f))
   (text "Cole: The door's been knocked down. Zombies must have bum-rushed the place.")
   (set-reg 154 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 155 #f))
   (text "Cole: The glass has been shattered. This door is no longer a door. Now it is...just an opening.")
   (set-reg 155 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: The best way into the restaurant's through there, since I can see inside.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 156 #f))
   (text "Cole: This is Shuffle Food. The sign's the same one as I saw the other day.")
   (set-reg 156 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: The sign usually lights up at night, but zombies tend to ruin everyone's schedules.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 157 #f))
   (text "Cole: That's the station wagon I borrowed from the lab. I already ran into two zombies on the way here.")
   (set-reg 157 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 158 #f))
   (text
    "Cole: The keys were in the ignition. I don't have time to fumble around in my pockets every time I'm running away from the undead.")
   (set-reg 158 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "Cole: It's the lab station wagon. Sweet wheels.") (wait) (text-reset 1))
 (seg (? (= P 1) (= 152 #t) (= 154 #t))
   (exec-mem 6064 2 1)
   (text "Cole: Okay, I've got my gun. Let's head inside.")
   (wait)
   (text-reset 1)
   (nop@)
   (set-reg 159 #t)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥045.MES"))
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
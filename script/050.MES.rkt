(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB108A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 7 10 25 14)
  (exec-mem 3744 1 6 17 2 24 9)
  (exec-mem 3744 1 7 51 4 54 7)
  (exec-mem 3744 1 8 27 3 36 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB108.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB103.GPC")
  (image-mem 1 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (nop@)
  (set-reg 202 #t)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 195 #f))
        (text "Catherine: Cole... Everything I told you before... I also   told Sheila.")
        (wait)
        (text-reset 1)
        (text "Catherine: I've never told anyone else about my...situation.But Sheila is a close friend.")
        (wait)
        (text-reset 1)
        (text "Cole: I see.")
        (wait)
        (text-reset 1)
        (text "Catherine: And she cares about me very much...")
        (wait)
        (text-reset 1)
        (text "Cole: It's good to have that kind of support.")
        (set-reg 195 #t)
        (wait)
        (text-reset 1))
       (// (text "Catherine: Cole, what's wrong?") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 8) (= 196 #f))
   (text "Cole: How's it going? Have you managed to calm down a bit   since the action earlier?")
   (wait)
   (text-reset 1)
   (text "Catherine: Yeah, I'm okay now. But aside from that, about mystepfather, Daniel...")
   (wait)
   (text-reset 1)
   (text "Cole: There's no doubt about it. Daniel resurrected the deadwith the reanimation serum.")
   (wait)
   (text-reset 1)
   (text "Catherine: So that's the case...")
   (wait)
   (text-reset 1)
   (text
    "Cole: It's inevitable your mother wound up falling for      Daniel. But I can't forgive him for using the reanimation   serum to kill innocents.")
   (wait)
   (text-reset 1)
   (text "Catherine: I understand.")
   (set-reg 196 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 197 #f))
   (text "Cole: I feel like I understand how painful this has been foryou...")
   (wait)
   (text-reset 1)
   (text "Catherine: ...Yeah...")
   (wait)
   (text-reset 1)
   (text "Cole: But after he stole my friend Doc's work and destroyed our town...")
   (set-reg 197 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 198 #f))
   (text "Cole: There's one thing I want to ask.")
   (wait)
   (text-reset 1)
   (text "Catherine: What is it?")
   (wait)
   (text-reset 1)
   (text "Cole: Why did Daniel use Bloody Fox to come get you?")
   (wait)
   (text-reset 1)
   (text
    "Catherine: I don't know. It's been almost a year since I    left home, and he hasn't called me once.")
   (wait)
   (text-reset 1)
   (text "Cole: Daniel brought back the dead, but was he trying to    keep you safe?")
   (wait)
   (text-reset 1)
   (text "Catherine: ...")
   (wait)
   (text-reset 1)
   (text "Cole: Otherwise, he wouldn't have taken the trouble to get  you to safety.")
   (wait)
   (text-reset 1)
   (text "Catherine: Even if he wanted to protect me, I can't forgive Daniel. He's caused too much pain.")
   (wait)
   (text-reset 1)
   (text
    "Catherine: If he's as bad as we think he is, Mom should cut ties immediately. Neither of us should ever have to see his face again...")
   (wait)
   (text-reset 1)
   (text "Cole: ...I'm sorry. I shouldn't have said that.")
   (wait)
   (text-reset 1)
   (text "Catherine: N-no... It's okay.")
   (set-reg 198 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Cole: Catherine's a little emotional now, so I should leave her be for a while.")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 199 #f))
   (text "Cole: Judging by how the sheets have been moved, Catherine'sbeen sitting here for quite some time.")
   (wait)
   (text-reset 1)
   (text "Catherine: Don't be a pervert, Cole.")
   (wait)
   (text-reset 1)
   (text "Cole: Ah, I didn't mean to come across that way.")
   (set-reg 199 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: Shouldn't you rest on the bed for a bit?")
   (wait)
   (text-reset 1)
   (text "Catherine: It's all right, I can make it through worse.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 200 #f))
   (text "Catherine: You don't have to close the curtains. It's kind  of warm today.")
   (wait)
   (text-reset 1)
   (text "Cole: It doesn't look like there's a heater in here, so     don't catch cold.")
   (set-reg 200 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "Catherine: The curtains can stay open.") (wait) (text-reset 1))
 (seg (? (= P 7) (= 201 #f))
   (text "Catherine: I finally changed the calendar since it was stillon July.")
   (set-reg 201 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: I wonder when the city can return to the way it once  was...")
   (wait)
   (text-reset 1)
   (text "Catherine: Soon, I hope.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Cole: Well then, I'll be going.")
   (wait)
   (text-reset 1)
   (text "Catherine: Thanks for your concern, Cole.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥039.MES"))
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
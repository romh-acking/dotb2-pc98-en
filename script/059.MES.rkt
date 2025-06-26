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
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 129 #f))
        (text "Catherine: Cole, what's wrong?")
        (wait)
        (text-reset 1)
        (text "Cole: Nothing, I just wanted to talk a bit.")
        (set-reg 129 #t)
        (wait)
        (text-reset 1))
       (//
        (text "Catherine: Are you having problems sleeping?")
        (wait)
        (text-reset 1)
        (text "Cole: Naw, just bored.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 8) (= 130 #f))
   (text "Catherine: Cole, tell me...")
   (wait)
   (text-reset 1)
   (text "Cole: Tell you what?")
   (wait)
   (text-reset 1)
   (text "Catherine: About what happened at the police station        earlier. How were you able to hold it together?")
   (wait)
   (text-reset 1)
   (text "Cole: Well, I'm not sure I'd call it that. When a zombies   popped out at the station, I nearly shit myself.")
   (wait)
   (text-reset 1)
   (text "Catherine: Well, you're quick-thinking at least, right?")
   (wait)
   (text-reset 1)
   (text "Cole: Quick-thinking? Never thought of myself that way.")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 131 #f))
   (text "Catherine: I've always wondered, why do you call them       zombies and not undead?")
   (wait)
   (text-reset 1)
   (text "Cole: Hmm... Well, in movies, they're usually called        zombies, aren't they?")
   (wait)
   (text-reset 1)
   (text
    "Cole: But originally, that term was used by people of the   West Indies for the dead who they revived because they      desperately needed workers.")
   (wait)
   (text-reset 1)
   (text "Catherine: They brought back the dead...and made them work?")
   (wait)
   (text-reset 1)
   (text "Cole: Exactly. Dead men don't complain. And they don't even need to eat.")
   (wait)
   (text-reset 1)
   (text "Catherine: I didn't know that. But the zombies here are     completely different.")
   (wait)
   (text-reset 1)
   (text "Cole: They sure are. They don't work for us... We're their  dinner.")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 132 #f))
   (text "Catherine: So I guess the undead eat...brains.")
   (wait)
   (text-reset 1)
   (text "Cole: Yeah. Apparently, the key to the reanimation serum is all in the human brain.")
   (wait)
   (text-reset 1)
   (text "Catherine: I wonder what makes them want to eat brains. Whathappens once they eat them?")
   (wait)
   (text-reset 1)
   (text "Cole: I dunno. Even if they eat them, they just get digestedin their stomach...right?")
   (wait)
   (text-reset 1)
   (text "Catherine: I guess you wouldn't understand unless you becomeone yourself.")
   (wait)
   (text-reset 1)
   (text "Cole: Ew, don't say stuff like that.")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Catherine: I feel lucky to have someone like you nearby,    Cole.")
   (wait)
   (text-reset 1)
   (text "Cole: Why's that now?")
   (wait)
   (text-reset 1)
   (text
    "Catherine: Because nobody is better than you at fighting theundead, and if it weren't for you, I'd be sloshing around insome zombie's stomach.")
   (wait)
   (text-reset 1)
   (text "Cole: I'm not sure if I'm proud of that skillset of mine... I have mixed feelings.")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 133 #f))
   (text "Cole: This bed looks really comfortable.")
   (wait)
   (text-reset 1)
   (text "Catherine: But nobody's used it for a while, so it smells a little musty.")
   (set-reg 133 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "Catherine: I'll wash the sheets tomorrow.") (wait) (text-reset 1))
 (seg (? (= P 6) (= 134 #f))
   (text "Cole: Aren't you going to close the curtains?")
   (wait)
   (text-reset 1)
   (text "Catherine: It's feeling warm and stuffy, so I'll leave them as is.")
   (set-reg 134 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: Clouds are in the sky tonight.")
   (wait)
   (text-reset 1)
   (text "Catherine: I wonder if it's going to rain... The weather's  been unpleasant lately.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 135 #f))
   (text "Catherine: I was really looking forward to Christmastime in town...")
   (wait)
   (text-reset 1)
   (text "Cole: So was I. But how about this... Let's have a big      Christmas party with everyone this year... Just somewhere   else.")
   (wait)
   (text-reset 1)
   (text "Catherine: Really? You'd invite me?")
   (wait)
   (text-reset 1)
   (text "Cole: You'd be first on the list.")
   (wait)
   (text-reset 1)
   (text "Catherine: Awesome! I'll mark the date.")
   (set-reg 135 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: The year will be over soon.")
   (wait)
   (text-reset 1)
   (text "Catherine: Yes... And good riddance to it.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Cole: Well then, I'll take my leave.")
   (wait)
   (text-reset 1)
   (text "Catherine: See you, Cole.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥056.MES"))
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
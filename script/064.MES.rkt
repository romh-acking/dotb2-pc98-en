(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB113.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 25 3 40 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB113.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 105 #f))
        (str "Cole: Eh? Sheila, aren't you up yet?")
        (wait)
        (text-reset 1)
        (str "Sheila: Yeah... I'm not feeling so hot...")
        (set-reg 105 #t)
        (wait)
        (text-reset 1))
       (// (str "Cole: Sheila's bedridden. I'm worried.") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 110 #t) (= 115 #t) (= 124 #t) (= 126 #t))
   (str "Sheila: What was that!?")
   (wait)
   (text-reset 1)
   (str "Cole: Gunshots! From the first floor!")
   (wait)
   (text-reset 1)
   (str "Sheila: What happened?")
   (wait)
   (text-reset 1)
   (str "Cole: It might be Steve. I'll go check things out, but you" 'br)
(str "stay here and rest, okay?")
   (wait)
   (text-reset 1)
   (str "Sheila: Be careful, Cole.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥067.MES"))
 (seg (? (= P 5) (= 121 #t) (= 109 #f))
   (str "Cole: Here, have some water.")
   (wait)
   (text-reset 1)
   (str "Sheila: Thank you.")
   (wait)
   (text-reset 1)
   (str "Cole: Man, you're really guzzling it down.")
   (wait)
   (text-reset 1)
   (str "Sheila: I've been so thirsty... *Hack hack*")
   (wait)
   (text-reset 1)
   (str "Cole: Hey, careful, slow down! Don't choke.")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 121 #t) (= 110 #f))
   (str "Sheila: Are you okay?")
   (wait)
   (text-reset 1)
   (str "Cole: What do you mean?")
   (wait)
   (text-reset 1)
   (str "Sheila: What's happened to the town...")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah... Steve told us the military would be here" 'br)
(str "in...well, two days, by this point.")
   (wait)
   (text-reset 1)
   (str "Sheila: How is Catherine doing?")
   (wait)
   (text-reset 1)
   (str "Cole: She's tougher than you'd think, so she'll hold up. I" 'br)
(str "mean, she's not going to be fighting zombies with us or" 'br)
(str "anything...I think.")
   (wait)
   (text-reset 1)
   (str "Sheila: Absolutely not!")
   (wait)
   (text-reset 1)
   (str "Cole: Right, right.")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 121 #t))
   (str "Cole: Sheila, try not to dwell on the incident... Just rest" 'br)
(str "easy if you can.")
   (wait)
   (text-reset 1)
   (str "Sheila: Yeah, thank you.")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 106 #f))
   (str "Cole: Are you not feeling well? What's wrong?")
   (wait)
   (text-reset 1)
   (str "Sheila: I'm just exhausted. It's fine, I should be able to" 'br)
(str "sleep it off and get better soon...")
   (wait)
   (text-reset 1)
   (str "Cole: You've been through so much. Your body must be under a" 'br)
(str "lot of strain.")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 107 #f))
   (str "Cole: How do you feel?")
   (wait)
   (text-reset 1)
   (str "Sheila: I got up to get some water, but I felt" 'br)
(str "lightheaded...")
   (wait)
   (text-reset 1)
   (str "Cole: Could be stress. I get lightheaded myself when I'm" 'br)
(str "real tired.")
   (wait)
   (text-reset 1)
   (str "Sheila: ...")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 108 #f))
   (str "Cole: Did you manage to sleep?")
   (wait)
   (text-reset 1)
   (str "Sheila: About three hours, I guess...")
   (wait)
   (text-reset 1)
   (str "Cole: I see. When stuff like this goes down, it's best to" 'br)
(str "take it easy. Can I get you anything?")
   (wait)
   (text-reset 1)
   (str "Sheila: Some water would be nice.")
   (wait)
   (text-reset 1)
   (str "Cole: Okay, I'll get some for you now.")
   (set-reg 108 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (str "Sheila: Cole, I really need some water...")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, I'm on it.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 108 #t) (= 121 #f))
   (exec-mem 6064 2 1)
   (str "Sheila: Water...please...")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥062.MES"))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (str "Cole: Get some rest, okay?")
   (wait)
   (text-reset 1)
   (str "Sheila: Okay.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥062.MES"))
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
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
        (? (= 111 #f))
        (str "Catherine: Cole, did you just wake up? It's nighttime" 'br)
(str "already.")
        (wait)
        (text-reset 1)
        (str "Cole: What time did you wake up, Catherine?")
        (wait)
        (text-reset 1)
        (str "Catherine: I just did.")
        (set-reg 111 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Catherine: Cole, you seem really busy today. ")
        (wait)
        (text-reset 1)
        (str "Cole: Well, I've got a lot on my plate.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 8) (= 112 #f))
   (text
    "Cole: Yesterday, Catherine was pretty bold... She was able" 'br)
"to talk through it all, it really shows off her" 'br)
"straightforward personality.")
   (set-reg 112 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 113 #f))
   (str "Catherine: Were you able to meet Sheila?")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 105 #t))
         (str "Cole: Yeah, she's feeling under the weather.")
         (wait)
         (text-reset 1)
         (str "Catherine: She doesn't have any energy at all... I'm" 'br)
(str "worried.")
         (wait)
         (text-reset 1))
        (//
         (str "Cole: No, I haven't checked in with her yet.")
         (wait)
         (text-reset 1)
         (str "Catherine: It looks like she's under the weather... She's" 'br)
(str "totally bedridden.")
         (wait)
         (text-reset 1)
         (str "Cole: Under the weather?")
         (wait)
         (text-reset 1)
         (str "Catherine: Yeah, she hasn't got any energy.")
         (wait)
         (text-reset 1)
         (str "Cole: I see... That's bad. I'd better check in with her" 'br)
(str "later.")
         (wait)
         (text-reset 1))))
   (nop@)
   (set-reg 113 #t))
 (seg (? (= P 8) (= 114 #f))
   (str "Cole: Thanks for yesterday.")
   (wait)
   (text-reset 1)
   (str "Catherine: What do you mean?")
   (wait)
   (text-reset 1)
   (str "Cole: For telling me where Daniel was.")
   (wait)
   (text-reset 1)
   (str "Catherine: It's fine. I don't want to see any more people" 'br)
(str "die from the undead infestation... Besides...")
   (wait)
   (text-reset 1)
   (str "Cole: What is it?")
   (wait)
   (text-reset 1)
   (str "Catherine: Cole, I don't want you butting heads with the" 'br)
(str "undead anymore.")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 115 #f))
   (str "Catherine: I'm telling you this now so I won't regret it" 'br)
(str "later...")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1)
   (str "Catherine: Cole... I'm in love with--")
   (wait)
   (text-reset 1)
   (text
    "Cole: Stop it, Catherine. We're in too deep on this case." 'br)
"This is the last thing we need to be thinking about.")
   (wait)
   (text-reset 1)
   (str "Catherine: ...")
   (wait)
   (text-reset 1)
   (text
    "Cole: I'm sorry. But since we're fighting these zombie" 'br)
"freaks and we never know when they might...eat us... I can't" 'br)
"have anything else on my mind.")
   (wait)
   (text-reset 1)
   (str "Cole: I hope you can understand...")
   (wait)
   (text-reset 1)
   (str "Catherine: ...")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (str "Catherine: ...I'm sorry.")
   (wait)
   (text-reset 1)
   (str "Cole: It's alright, as long as you understand.")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 116 #f))
   (str "Catherine: I wanted to wake up at noon, but I just woke up a" 'br)
(str "minute ago.")
   (set-reg 116 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 117 #f))
   (str "Catherine: Good thing there are plenty of spare sheets under" 'br)
(str "the bed.")
   (wait)
   (text-reset 1)
   (str "Cole: Now that you mention it, my bed didn't have any sheets" 'br)
(str "at all.")
   (wait)
   (text-reset 1)
   (str "Catherine: Can I bring you a set?")
   (wait)
   (text-reset 1)
   (str "Cole: No, it's fine.")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (str "Cole: Man, this bed seems way better than the one in my" 'br)
(str "room.") (wait) (text-reset 1))
 (seg (? (= P 6) (= 118 #f))
   (str "Catherine: I've been looking outside ever since I woke up.")
   (wait)
   (text-reset 1)
   (str "Cole: You see anything suspicious?")
   (wait)
   (text-reset 1)
   (str "Catherine: I keep seeing smoke rising up from time to time.")
   (wait)
   (text-reset 1)
   (str "Cole: Given how much things have gone to hell, I wouldn't be" 'br)
(str "surprised if fires kept breaking out.")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (str "Catherine: I've kept the windows closed on account that it's" 'br)
(str "so cold.")
   (wait)
   (text-reset 1)
   (str "Cole: Better be careful not to catch a cold.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 119 #f))
   (str "Catherine: I wonder when the town will return to the way it" 'br)
(str "was before...")
   (wait)
   (text-reset 1)
   (text
    "Cole: It won't take too long for people to start living" 'br)
"there again, but to go back to its former vibrant state..." 'br)
"Half a year, maybe.")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (str "Cole: Is it winter already?")
   (wait)
   (text-reset 1)
   (str "Catherine: I want this incident to be over and ring in the" 'br)
(str "New Year with a clean slate.")
   (wait)
   (text-reset 1)
   (str "Cole: That's something to work for.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (str "Catherine: Are you leaving already?")
   (wait)
   (text-reset 1)
   (str "Cole: I've got some things to do.")
   (wait)
   (text-reset 1)
   (str "Catherine: Come back soon, I'll be waiting.")
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
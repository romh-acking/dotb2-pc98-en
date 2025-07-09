(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB043A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 16 3 21 7)
  (exec-mem 3744 1 7 25 2 34 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB044.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 5)
  (if (</>
       (//
        (? (= 108 #t) (= 121 #f))
        (str "Cole: Doctor Lisle, could I have a glass of water? Sheila is" 'br)
(str "real thirsty...")
        (wait)
        (text-reset 1)
        (str "Lisle: Ah, use the sink over there.")
        (wait)
        (text-reset 1)
        (str "Cole: Thanks.")
        (set-reg 121 #t)
        (wait)
        (text-reset 1))
       (//
        (? (= 120 #f))
        (str "Lisle: Hey, Cole... Were you able to sleep well yesterday?")
        (wait)
        (text-reset 1)
        (str "Cole: Yes, thanks to you.")
        (set-reg 120 #t)
        (wait)
        (text-reset 1))
       (// (str "Lisle: Cole, what do you need this time?") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 122 #f))
   (str "Cole: Doctor, where did you go yesterday?")
   (wait)
   (text-reset 1)
   (str "Lisle: Ah... I had an experiment I had to engage with... I" 'br)
(str "was in the lab adjacent to this room.")
   (wait)
   (text-reset 1)
   (str "Cole: That's the one that's locked by the autolock, right?")
   (wait)
   (text-reset 1)
   (str "Lisle: I'm sorry, Cole, but I can't have anyone entering" 'br)
(str "that lab. There are only two ways in.")
   (wait)
   (text-reset 1)
   (str "Cole: Two ways?")
   (wait)
   (text-reset 1)
   (str "Lisle: One is to enter the autolock PIN. The other is" 'br)
(str "getting the person on the inside to open it for you.")
   (wait)
   (text-reset 1)
   (str "Cole: I see.")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 123 #f))
   (str "Cole: By the way, did you see Steve?")
   (wait)
   (text-reset 1)
   (str "Lisle: He just headed to town. He took the car.")
   (wait)
   (text-reset 1)
   (str "Cole: He's headed into town, huh...")
   (wait)
   (text-reset 1)
   (str "Lisle: Yes, he went to procure some food.")
   (wait)
   (text-reset 1)
   (str "Cole: Will he be okay on his own?")
   (wait)
   (text-reset 1)
   (str "Lisle: He made it back okay yesterday. You don't need to" 'br)
(str "worry.")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 124 #f))
   (str "Cole: Doctor Lisle, did you know that Steve had left the" 'br)
(str "building in the middle of the night?")
   (wait)
   (text-reset 1)
   (str "Lisle: !?")
   (wait)
   (text-reset 1)
   (str "Cole: I saw him leaving in the car... carrying something" 'br)
(str "heavy.")
   (wait)
   (text-reset 1)
   (str "Lisle: Well, I was in the lab the whole time, you know.")
   (wait)
   (text-reset 1)
   (str "Cole: Yesterday, Steve said he was pooped and and went into" 'br)
(str "his room. I thought he was resting...")
   (wait)
   (text-reset 1)
   (str "Lisle: Well, unlike me, he's got plenty on his plate. It's" 'br)
(str "not odd for him to take off in the middle of the night.")
   (wait)
   (text-reset 1)
   (str "Cole: That's true.")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (str "Lisle: The detective has a lot to handle, so I don't think" 'br)
(str "it's cause for alarm.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 125 #f))
   (str "Cole: This lab always impresses me.")
   (wait)
   (text-reset 1)
   (str "Lisle: The Perain Research Institute is one of the top labs" 'br)
(str "around here. We've got the best equipment around.")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 126 #f))
   (str "Cole: I heard even Steve isn't allowed into that room.")
   (wait)
   (text-reset 1)
   (str "Lisle: That's right, I'm the only one who can enter.")
   (wait)
   (text-reset 1)
   (str "Cole: What's in there, anyway?")
   (wait)
   (text-reset 1)
   (str "Lisle: Just lab things.")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (str "Lisle: This room is my raison d'etre.") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (str "Cole: Well then, I'd better be going.")
   (wait)
   (text-reset 1)
   (str "Lisle: Stop by anytime you need anything.")
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
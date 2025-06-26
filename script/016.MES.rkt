(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB003.GPC")
  (image-mem 1 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB034C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 104 #t) (= 106 #t) (= 107 #t))
        (load-mem "A:¥CLM¥DB004B.CLM" 32768))
       (// (load-mem "A:¥CLM¥DB004D.CLM" 32768))))
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)					; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)													; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)													; 	SYSTEM button
  (if (</>
       (//
        (? (= 104 #t) (= 106 #t) (= 107 #t))
        (exec-mem 3744 1 5 13 12 25 14))))
  (exec-mem 3744 1 6 27 5 36 13)
  (exec-mem 3744 1 7 23 2 40 3)
  (exec-mem 3744 1 8 3 8 7 12)
  (exec-mem 3744 1 9 37 7 47 14)
  (exec-mem 3744 1 10 52 12 56 15)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (text-frame 15 298 74 356)
  (if (</>
       (//
        (? (= 100 #f))
        (str "Cole: Huh? Sheila isn't here... Maybe she got sick of" 'br)
        (str "waiting for me and went home.")
        (set-reg 100 #t)
        (wait)
        (text-reset 1))
       (// (str "Cole: I'm in my room right now.") (wait) (text-reset 1))))
  (loop
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (seg-call)
   (if (</>
        (//
         (? (= 104 #t) (= 106 #t) (= 107 #t) (= 109 #f))
         (load-mem "A:¥CLM¥DB004B.CLM" 32768)
         (exec-mem 3744 1 5 13 12 25 14)
         (exec-mem 3744 1 6 27 5 36 13)
         (exec-mem 3744 1 7 23 2 40 3)
         (exec-mem 3744 1 8 3 8 7 12)
         (exec-mem 3744 1 9 37 7 47 14)
         (exec-mem 3744 1 10 52 12 56 15)
         (nop@)
         (set-reg 109 #t))))))
 (seg (? (= P 5) (= 104 #t) (= 106 #t) (= 107 #t) (= 108 #f))
   (str "Cole: This is Sheila's favorite chair. I hardly ever use it.")
   (set-reg 108 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 104 #t) (= 106 #t) (= 107 #t))
   (str "Cole: Wha? I didn't see it before since it was behind the" 'br)
   (str "chair, but there's a memo on the table.")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (str "Cole: It's Sheila's handwriting.")
   (wait)
   (text-reset 1)
   (str "To Cole:" 'br)
   (str "Since I'll be home late anyway, I'm going to look for you." 'br)
   (str "If you return first, just wait for me. I'll be back. -Sheila")
   (wait)
   (text-reset 1)
   (str "Cole: What's all this? She's going to look for me...where?" 'br)
   (str "Oh man, did she go to Bar Rease all by herself...?")
   (wait)
   (text-reset 1)
   (str "Cole: Steve isn't going to be at Rease today, and I have no" 'br)
   (str "idea what Bloody Fox might do to Sheila!")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (str "Cole: Aw shit, this is bad! I gotta go help her!")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥017.MES"))
 (seg (? (= P 6))
   (branch-random
    (</>
     (/
        (str "Cole: The wall's plastered with the photos and clippings" 'br)
        (str "I've pasted up."))
     (/ (str "Cole: Newspaper and magazine cutouts are on the wall."))))
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 101 #f))
   (str "Cole: It's not cold yet...no need to turn on the heater.")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 102 #f))
   (str "Cole: The AC unit is off. The weather's been nice lately," 'br)
   (str "so it's been off for months.")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (str "Cole: It'll probably get cold next month, so I'll probably" 'br)
   (str "need to turn it on again.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 103 #f))
   (str "Cole: No messages on the answering machine.")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 104 #f))
   (str "Cole: Sheila will get in touch with me when she gets home." 'br)
   (str "She worries a lot...")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (str "Cole: No need to call anyone. Sheila will get in touch" 'br)
   (str "shortly.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 105 #f))
   (str "Cole: The door was locked when I came back. Since Sheila" 'br)
   (str "has my spare key, she probably locked it for safety's sake.")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 106 #f))
   (str "Cole: It's too late to go out again. When the sun comes up" 'br)
   (str "tomorrow I'll head back into the city to look for Purple" 'br)
   (str "Sky again.")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (str "Cole: I should just wait for Sheila to call me. Tomorrow" 'br)
   (str "we'll both go to Steve's place to talk with him more.")
   (wait)
   (text-reset 1))
 (seg (? (= P 10) (= 107 #f))
   (str "Cole: The stereo's off. Sheila must have turned it off.")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 10))
   (str "Cole: I want to think about the incident some more, so best" 'br)
   (str "not to get distracted by the radio blaring whatever.")
   (wait)
   (text-reset 1))
 (seg (? (= P 2))																; SYSTEM
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
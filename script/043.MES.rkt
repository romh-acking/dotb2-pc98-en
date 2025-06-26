(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB073.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 30 3 37 7)
  (exec-mem 3744 1 6 50 3 56 14)
  (exec-mem 3744 1 7 4 10 23 15)
  (exec-mem 3744 1 8 15 2 27 9)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB072.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB073.GPC")
  (image-mem 1 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (text "Sheila: Cole...")
  (wait)
  (text-reset 1)
  (text "Cole: I was talking to Lisle.")
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 147 #f))
   (text "Sheila: Lisle? What did he say?")
   (wait)
   (text-reset 1)
   (text "Cole: He said the blood test results would take a bit, but you should be just fine, considering how peppy you are.")
   (wait)
   (text-reset 1)
   (text "Sheila: Peppy...?")
   (wait)
   (text-reset 1)
   (text "Cole: Though you don't seem as upbeat as usual.")
   (wait)
   (text-reset 1)
   (text "Sheila: It's just... I've been thinking all this time, what are we gonna do next?")
   (wait)
   (text-reset 1)
   (text "Cole: We've got this covered. We'll catch whoever's using Doc's serum.")
   (wait)
   (text-reset 1)
   (text "Sheila: Thank you, Cole.")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 148 #f))
   (text "Sheila: What is everyone else up to?")
   (wait)
   (text-reset 1)
   (text
    "Cole: Lisle's in the lab, and Steve went to the 32nd Precinct to get some documents on Razovan Pharmaceuticals.")
   (wait)
   (text-reset 1)
   (text "Sheila: Are you sure he can handle the trip alone?")
   (wait)
   (text-reset 1)
   (text
    "Cole: He's a big boy. I got through the same kind of situation two years ago, but for a guy like Steve it would have been a cakewalk.")
   (wait)
   (text-reset 1)
   (text "Sheila: If you say so...")
   (set-reg 148 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 149 #f))
   (text "Sheila: Lisle doesn't seem to hold the reanimation serum in very high regard.")
   (wait)
   (text-reset 1)
   (text "Cole: I guess not, though he does respect how Doc unraveled a buncha mysteries of the human brain.")
   (wait)
   (text-reset 1)
   (text "Sheila: What's in our heads is really unfathomable, isn't it?")
   (set-reg 149 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Sheila: Oh, there's something I wanted to ask you, Cole...")
   (wait)
   (text-reset 1)
   (text "Cole: What is it?")
   (wait)
   (text-reset 1)
   (text
    "Sheila: How'd you know I went to Disco Zeena? We never went there together before...")
   (wait)
   (text-reset 1)
   (text "Cole: Oh, I heard about Zeena from Catherine.")
   (wait)
   (text-reset 1)
   (text "Sheila: Catherine? You know her?")
   (wait)
   (text-reset 1)
   (text "Cole: You had mentioned her working at Shuffle Food.")
   (wait)
   (text-reset 1)
   (text "Sheila: Oh, I see... So you went to visit?")
   (wait)
   (text-reset 1)
   (text "Cole: Yeah, Steve had me look up the address... Uh, Sheila, what's wrong?")
   (wait)
   (text-reset 1)
   (text "Sheila: !!")
   (wait)
   (text-reset 1)
   (text "Sheila: Oh my god, Catherine--")
   (wait)
   (text-reset 1)
   (text "Cole: Wait, do you think...")
   (wait)
   (text-reset 1)
   (text
    "Cole: This could be bad. Shuffle Food's on the opposite side of the station, and the zombies are bound to attack that area...")
   (wait)
   (text-reset 1)
   (text "Sheila: So if they overrun Shuffle Food...")
   (wait)
   (text-reset 1)
   (text "Cole: I gotta get moving!")
   (wait)
   (text-reset 1)
   (text "Sheila: You need to save Catherine!")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (text "Cole: Damn, I hope she managed to get out of there...")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (mes-jump "A:¥MES¥044.MES"))
 (seg (? (= P 6) (= 111 #f))
   (text "Cole: Let's see, where are we?")
   (wait)
   (text-reset 1)
   (text "Sheila: Looks like a shower room... The lab has lots of places for rest breaks.")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "Cole: This is the shower room...") (wait) (text-reset 1))
 (seg (? (= P 7) (= 113 #f))
   (text
    "Cole: A normal pipe-frame bed. I sleep on one of these back at home. Don't knock it, it's comfy.")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 114 #f))
   (text "Sheila: Why do you keep eyeing the bed?")
   (wait)
   (text-reset 1)
   (text "Cole: Oh, it's a pipe-frame. You don't see those a lot.")
   (wait)
   (text-reset 1)
   (text "Sheila: Cole, there's literally one in your apartment.")
   (wait)
   (text-reset 1)
   (text "Cole: Oh yeah, haha. It was cheap.")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "Cole: That right there is an ordinary pipe-frame bed.") (wait) (text-reset 1))
 (seg (? (= P 8) (= 115 #f))
   (text "Cole: The curtains are closed. Gotta be pitch black outside.")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "Sheila: The curtains are closed. It gets cold at night, after all.") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Cole: Okay, back to the hallway.")
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
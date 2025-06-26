(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB004C.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)					; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)													; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)													; 	SYSTEM button
  (exec-mem 3744 1 6 27 5 36 13)
  (exec-mem 3744 1 7 23 2 40 3)
  (exec-mem 3744 1 8 3 8 7 12)
  (exec-mem 3744 1 9 37 7 47 14)
  (exec-mem 3744 1 10 52 12 56 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB003.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 116 #f))
        (str "Cole: It's already morning... I had a helluva time falling" 'br)
        (str "asleep, worrying about the serum.")
        (set-reg 116 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: I'm worried about Sheila. I should call her up and" 'br)
        (str "see how she's faring.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 6))
   (branch-random
    (</>
     (/ (str "Cole: Clippings I pasted up on the wall."))
     (/ (str "Cole: Newspaper and magazine cutouts are on the wall."))))
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 117 #f))
   (str "Cole: It's a little warm today... No need to turn on the AC.")
   (set-reg 117 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (str "Cole: It's not like I can afford to run up my electric bill.") (wait) (text-reset 1))
 (seg (? (= P 8) (= 118 #f))
   (str "Cole: No messages. Nobody tried to contact me while I was" 'br)
   (str "sleeping.")
   (set-reg 118 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 119 #f))
   (str "Cole: I wonder how Sheila is. I should try calling her.")
   (wait)
   (text-reset 1)
   (str "Cole: 510-386...")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1)
   (str "Cole: This is taking too long. It's gonna go to her" 'br)
   (str "answering machine.")
   (wait)
   (text-reset 1)
   (str "Cole: Hello, Sheila? I --")
   (wait)
   (text-reset 1)
   (str "Answering Machine:“Hi, this is Sheila. Thanks for calling," 'br)
   (str "but I'm not at home right now. Please leave your message" 'br)
   (str "after the beep.”")
   (wait)
   (text-reset 1)
   (str "Cole: Maybe Sheila's out early because she's feeling" 'br)
   (str "better...")
   (wait)
   (text-reset 1)
   (str "Cole: ...Or maybe she's out binging comfort food since our" 'br)
   (str "big trip got cancelled.")
   (set-reg 119 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 120 #f))
   (str "Cole: Maybe she's still asleep. I'll try calling again.")
   (wait)
   (text-reset 1)
   (str "Cole: 510-386...")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1)
   (str "Cole: No dice.")
   (wait)
   (text-reset 1)
   (str "Answering Machine:“Hi, this is Sheila. Thanks for calling," 'br)
   (str "but I'm not at home right now. Please leave your message" 'br)
   (str "after the beep.”")
   (wait)
   (text-reset 1)
   (str "Cole: Damn, I guess she really isn't there.")
   (set-reg 120 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (str "Cole: Where'd she get to? I'll try calling later.")
   (wait)
   (text-reset 1))
 (seg (? (= P 9) (= 119 #t))
   (str "Cole: I'm really worried about what the Purple Sky" 'br)
   (str "injection might have done to her.")
   (wait)
   (text-reset 1)
   (str "Cole: And she still isn't answering her phone...maybe I" 'br)
   (str "should ask Steve about Purple Sky's side effects.")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 9))
   (str "Cole: I'm worried sick about Sheila. I'll try to contact" 'br)
   (str "her before I head out.")
   (wait)
   (text-reset 1))
 (seg (? (= P 10) (= 122 #f))
   (str "Cole: I don't have time to sit here and listen to the" 'br)
   (str "radio. There's an investigation I've gotta do on Purple Sky.")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 10)) (str "Cole: The stereo's off.") (wait) (text-reset 1))
 (seg (? (= P 1) (= 121 #t))
   (exec-mem 6064 2 1)
   (str "Cole: Steve said he'd be at Precinct 32. I should go check" 'br)
   (str "it out.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥020.MES"))
 (seg (? (= P 1))
   (str "Cole: But before that, there's no ignoring Sheila got" 'br)
   (str "injected with Purple Sky yesterday. I should give her a call" 'br)
   (str "and see how she's doing.")
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB014.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)					; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)													; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)													; 	SYSTEM button
  (exec-mem 3744 1 5 24 9 29 11)
  (exec-mem 3744 1 6 6 3 18 6)
  (exec-mem 3744 1 7 40 14 47 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB014.GPC")
  (image-mem 1 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 40 0 40 400 1 40 0")
  (exec-mem 912 "A 1")
  (image-file "A:¥GPC¥DB_FRM2.GPC")
  (image-mem 1 0)
  (image-file "B:¥GPC¥DB015C.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 0 54 38 23 134")
  (exec-mem 912 "A 0")
  (exec-mem 912 "GET 1 54 38 23 172")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 170 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 171 #f))
        (str "Cole: It's quiet as the grave in here...")
        (set-reg 171 #t)
        (wait)
        (text-reset 1))
       (// (str "Cole: I'm inside the Bayside Research Lab. This place has" 'br)
       (str "been turned into a factory.") (wait) (text-reset 1))))
  (loop
   (if (</>
        (//
         (? (= 173 #t) (= 175 #t) (= 179 #t))
         (str "Woman's Voice: Nooooo!")
         (wait)
         (text-reset 1)
         (str "Cole: Huh!? That's a woman screaming!")
         (wait)
         (text-reset 1)
         (str "Woman's Voice: Someone help me!")
         (wait)
         (text-reset 1)
         (str "Cole: Where is she...?")
         (wait)
         (text-reset 1)
         (sound '|| 2)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥008.MES"))))
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (seg-call)))
 (seg (? (= P 5) (= 172 #f))
   (str "Cole: There's warning text about equipment handling written" 'br)
   (str "on the wall. It's all rusted over, so this isn't up to OSHA" 'br)
   (str "code, I guess.")
   (set-reg 172 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 173 #f))
   (str "Cole: I don't need to read these warnings, every piece of" 'br)
   (str "equipment here is shut down. It's not like this stuff is" 'br)
   (str "gonna start up anytime soon.")
   (set-reg 173 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (str "Cole: This place has been abandoned for two years. You" 'br)
   (str "could probably knock this metal plate off with a little" 'br)
   (str "force.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 174 #f))
   (str "Cole: There's a bunch of pipes sticking out of this" 'br)
   (str "machine. I have no idea what they're used for, aside from" 'br)
   (str "scrap metal for looters.")
   (set-reg 174 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 175 #f))
   (str "Cole: Looking at the ceiling vents, I bet these machines" 'br)
   (str "were cranking at full power back in the day. Must have been" 'br)
   (str "an oven in here.")
   (set-reg 175 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (str "Cole: None of these machines show any trace of the" 'br)
   (str "reanimation serum.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 176 #f))
   (str "Cole: There's debris all over the floor. I'd better watch" 'br)
   (str "my step, or I'd slip and fall and it'd be tetanus time.")
   (set-reg 176 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 177 #f))
   (str "Cole: Two years ago, Ghoul got blown to hell by plastic" 'br)
   (str "explosives. There's not even a scrap of him left. Good" 'br)
   (str "riddance.")
   (set-reg 177 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 178 #f))
   (str "Cole: I'm sure the police cleanup crew took care of the" 'br)
   (str "wreckage, but I bet they never figured an android was" 'br)
   (str "behind all this mayhem.")
   (set-reg 178 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 179 #f))
   (str "Cole: Huh? What's this...?")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 0 54 38,W 0,O 0")
   (str "It's the same shade as the stuff Ghoul's android body was" 'br)
   (str "made out of... I wouldn't have thought anything like this" 'br)
   (str "would be left behind.")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 54 38,W 0,O 1")
   (exec-mem 912 "EXIT")
   (str "Cole: But it's just leftover scraps from a real asshole." 'br)
   (str "He's dead and gone. Right?")
   (set-reg 179 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (str "Cole: And I can't see any remnants of the rereanimation" 'br)
   (str "serum. Was that Bloody Fox member bullshitting me?")
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
      (text "　　　　　　　　　　　　　　")
      (str "WAIT....")
      (branch-var
       S
       (</>
        (/ (nop@) (set-reg 170 #f) (flag-save 1))
        (/ (nop@) (set-reg 170 #f) (flag-save 2))
        (/ (nop@) (set-reg 170 #f) (flag-save 3))
        (/ (nop@) (set-reg 170 #f) (flag-save 4))
        (/ (nop@) (set-reg 170 #f) (flag-save 5))
        (/ (nop@) (set-reg 170 #f) (flag-save 6))
        (/ (nop@) (set-reg 170 #f) (flag-save 7))
        (/ (nop@) (set-reg 170 #f) (flag-save 8))
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
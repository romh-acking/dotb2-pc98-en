(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB101A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 37 5 54 10)
  (exec-mem 3744 1 6 20 3 27 13)
  (exec-mem 3744 1 7 4 12 17 15)
  (exec-mem 3744 1 8 30 3 37 7)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB101.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB073.GPC")
  (image-mem 1 3)
  (exec-mem 912 "INIT,A 0,S 0,O 0,D 1")
  (exec-mem 912 "C 0 2 23 40 238 1 2 23")
  (exec-mem 912 "C 0 40 23 18 238 1 40 23")
  (exec-mem 912 "A 1")
  (exec-mem 912 "GET 0 2 23 54 238")
  (image-file "B:¥GPC¥DB132.GPC")
  (image-mem 1 3)
  (exec-mem 912 "GET 1 2 23 54 238")
  (exec-mem 912 "A 0,S 0")
  (exec-mem 15456 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_10.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_10.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 127 #f))
        (text "Cole: Sheila...!")
        (wait)
        (text-reset 1)
        (text "Sheila: What's happening? What did Lisle tell you?")
        (wait)
        (text-reset 1)
        (text "Cole: ...")
        (set-reg 127 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: Sheila...!") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 128 #f))
   (text "Sheila: Cole... Stop staring off into the distance like that.")
   (set-reg 128 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (text "Sheila: Cole, stop staring at the lockers and look at me.") (wait) (text-reset 1))
 (seg (? (= P 6) (= 129 #f))
   (text "Cole: Sheila, I didn't even realize you came in.")
   (wait)
   (text-reset 1)
   (text "Sheila: The door was unlocked, so I let myself in...")
   (set-reg 129 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "Cole: Ah, yeah, the door doesn't have a lock, does it.") (wait) (text-reset 1))
 (seg (? (= P 7) (= 130 #f))
   (text "Sheila: Cole, why won't you look me in the eye?")
   (wait)
   (text-reset 1)
   (text "Cole: No, it's not like that... I'm looking at you now.")
   (wait)
   (text-reset 1)
   (text "Sheila: You've been fidgeting for a while now.")
   (set-reg 130 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "Cole: I need to stop looking at the desk, or Sheila will call me out.") (wait) (text-reset 1))
 (seg (? (= P 8) (= 131 #f))
   (text "Sheila: What exactly did Lisle tell you ?")
   (wait)
   (text-reset 1)
   (text "Cole: ...")
   (wait)
   (text-reset 1)
   (text "Sheila: Cole, would you please answer me?")
   (wait)
   (text-reset 1)
   (text "Cole: ...It's not like I could understand any of their complicated medical terms...")
   (wait)
   (text-reset 1)
   (text "Sheila: Why? Didn't they explain it so you could understand?")
   (wait)
   (text-reset 1)
   (text "Cole: ...")
   (set-reg 131 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 132 #f))
   (text "Sheila: Come on, Cole...")
   (wait)
   (text-reset 1)
   (text "Cole: Could you leave me alone for a minute? I have a lot to think about...")
   (wait)
   (text-reset 1)
   (text "Sheila: What's wrong? Did something happen?")
   (wait)
   (text-reset 1)
   (text "Cole: ...")
   (wait)
   (text-reset 1)
   (text "Sheila: Cole?")
   (wait)
   (text-reset 1)
   (text "Cole: God, would you just shut up for once! I told you to go!")
   (wait)
   (text-reset 1)
   (text "Sheila: ...")
   (set-reg 132 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 133 #f))
   (text "Sheila: Cole... Do you hate me now because I got...sick... Because I'm going to turn?")
   (wait)
   (text-reset 1)
   (text "Cole: No... No, it's not like that...")
   (wait)
   (text-reset 1)
   (text "Sheila: You're lying... You've never been this cold. Never.")
   (wait)
   (text-reset 1)
   (text "Cole: ...")
   (set-reg 133 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (text "Cole: ...")
   (wait)
   (text-reset 1)
   (exec-mem 912 "PUT 1 2 23,W 0,O 0")
   (text "Sheila: So that's why. I get it now. Lisle told you he couldn't cure me, right?")
   (wait)
   (text-reset 1)
   (text "Cole: No, that's not it at all!")
   (wait)
   (text-reset 1)
   (text
    "Sheila: Yes it is! And when I turn, you're going to have to shoot me, right? No matter how much you love me, you have to put a bullet in me to stop the inevitable, don't you?")
   (wait)
   (text-reset 1)
   (text "Cole: I fucking told you to SHUT UP!")
   (wait)
   (text-reset 1)
   (exec-mem 14544 2 2)
   (exec-mem 912 "PUT 0 2 23,W 0,O 0")
   (exec-mem 912 "EXIT")
   (text "Cole: ...")
   (wait)
   (text-reset 1)
   (text "Sheila: ...I'm sorry.")
   (wait)
   (text-reset 1)
   (text "Sheila: I won't bother you anymore, Cole.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (image-file "B:¥GPC¥DB101.GPC")
   (image-mem 0 3)
   (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
   (text "Cole: God... This is just a mess... I'm a fucking mess...")
   (wait)
   (text-reset 1)
   (text "Cole: I get how you feel, Sheila... You know that if I could cure you, I would...")
   (wait)
   (text-reset 1)
   (text "Cole: ...But to do that, we have to revive Doc. And the chances aren't good that he's still all there...")
   (wait)
   (text-reset 1)
   (text "Cole: And if we can't revive him or something awful happens, I couldn't face you, or Doc, with a clear conscience...")
   (wait)
   (text-reset 1)
   (text "Cole: Even before,  I never would have thought of doing something as cruel as reviving Doc...")
   (wait)
   (text-reset 1)
   (text "Cole: But if things keep going the way they are... Just like Sheila said, I might have to pull the trigger on her.")
   (wait)
   (text-reset 1)
   (text
    "Cole: I feel like Doc would forgive me if I revived him to save you, Sheila... But I'll regret it for the rest of my life.")
   (wait)
   (text-reset 1)
   (loop
    (text "Cole: The hour's almost up. I have to make my decision.")
    (menu1
     20
     337
     44
     337
     (</> (/ (text "Let Doc rest in peace / Revive Doc")) (/ (text "Let Doc rest in peace / Revive Doc"))))
    (text-reset 1)
    (text "Cole: I'm going to...")
    (branch-var
     S
     (</>
      (/ (text "let Doc rest in peace.") (set-reg 134 #t))
      (/ (text "revive Doc.") (set-reg 135 #t))))
    (text "I've made my decision.")
    (wait)
    (text-reset 1)
    (text "Cole: Am I really sure this is the right path forward?")
    (menu1 25 337 37 337 (</> (/ (text "Yes / No")) (/ (text "Yes / No"))))
    (text-reset 1)
    (if (</>
         (//
          (? (= S 1))
          (nop@)
          (set-reg 134 #f)
          (set-reg 135 #f)
          (set-var S 2))))
    (if (</>
         (//
          (? (= S 0) (= 134 #t))
          (text
           "Cole: I can't revive Doc. We're not certain whether or not Sheila will become a zombie. I've got a heart, and it won't let me bring my best friend back from the dead.")
          (wait)
          (text-reset 1)
          (text "Cole: I'm going to go tell Lisle and the others.")
          (wait)
          (text-reset 1)
          (sound '|| 2)
          (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
          (nop@)
          (set-reg 901 #f)
          (mes-jump "A:¥MES¥080.MES"))
         (//
          (? (= S 0) (= 135 #t))
          (text
           "Cole: I'm going to revive Doc's brain to help save Sheila. Though I'll owe Doc more than I can ever repay, I need to save Sheila at any cost.")
          (wait)
          (text-reset 1)
          (text "Cole: And even if things go horribly wrong, what matters is we tried.")
          (wait)
          (text-reset 1)
          (text "Cole: I'm going to go tell Lisle and the others.")
          (wait)
          (text-reset 1)
          (sound '|| 2)
          (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
          (nop@)
          (set-reg 901 #t)
          (mes-jump "A:¥MES¥080.MES"))
         (//
          (? (= S 2))
          (text "Cole: No, no. I can't do it... I couldn't do such a thing.")
          (wait)
          (text-reset 1))))))
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
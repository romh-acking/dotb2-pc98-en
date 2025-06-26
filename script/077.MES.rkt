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
        (? (= 120 #f))
        (str "Catherine: Cole... What's the matter? You look so serious...")
        (wait)
        (text-reset 1)
        (str "Cole: Ah, maybe a little...")
        (set-reg 120 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Catherine: Cole, you seem...unsettled. What's wrong?")
        (wait)
        (text-reset 1)
        (str "Cole: No, it's nothing.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 8) (= 121 #f))
   (str "Catherine: What's the matter? This isn't like you.")
   (wait)
   (text-reset 1)
   (str "Cole: Ha ha ha... Really?")
   (wait)
   (text-reset 1)
   (str "Catherine: Seriously. What happened?")
   (wait)
   (text-reset 1)
   (str "Cole: Seriously...it's nothing.")
   (set-reg 121 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 122 #f))
   (text
    "Cole: I can't tell Catherine about Sheila. If she finds out," 'br)
"she might have a mental breakdown.")
   (wait)
   (text-reset 1)
   (str "Catherine: Huh?")
   (wait)
   (text-reset 1)
   (str "Cole: No, it's something unrelated.")
   (set-reg 122 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 123 #f))
   (text
    "Catherine: By the way, Lisle was looking for you a while" 'br)
"back. He had a serious look on his face... Cole, what's" 'br)
"happening, really?")
   (wait)
   (text-reset 1)
   (str "Cole: Oh yeah, I just talked to Lisle.")
   (wait)
   (text-reset 1)
   (str "Catherine: So what did he say?")
   (wait)
   (text-reset 1)
   (str "Cole: Nothing of importance.")
   (wait)
   (text-reset 1)
   (str "Catherine: Cole, you're really hiding something, aren't you?")
   (wait)
   (text-reset 1)
   (str "Cole: Not really... It's just that a member of Bloody Fox" 'br)
(str "managed to infiltrate the institute.")
   (set-reg 123 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 124 #f))
   (str "Catherine: Bloody Fox was here!?")
   (wait)
   (text-reset 1)
   (str "Cole: When I was about to question him, he bit his own" 'br)
(str "tongue off to kill himself. What a terrifying guy...")
   (wait)
   (text-reset 1)
   (str "Catherine: My god...")
   (wait)
   (text-reset 1)
   (str "Cole: Don't worry too much, Steve and I have things covered.")
   (wait)
   (text-reset 1)
   (str "Catherine: I'd hope so...")
   (set-reg 124 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8))
   (str "Catherine: Somehow, you're not the normal energetic Cole" 'br)
(str "today. Are you feeling down?")
   (wait)
   (text-reset 1)
   (str "Cole: It's nothing, I'm the same as always.")
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 125 #f))
   (str "Cole: This bed looks really comfortable.")
   (wait)
   (text-reset 1)
   (str "Catherine: But nobody's used it for a while, so it smells a" 'br)
(str "little musty.")
   (set-reg 125 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5)) (str "Catherine: I'll wash the sheets tomorrow.") (wait) (text-reset 1))
 (seg (? (= P 6) (= 126 #f))
   (str "Cole: Aren't you going to close the curtains?")
   (wait)
   (text-reset 1)
   (str "Catherine: It's feeling warm and stuffy, so I'll leave them" 'br)
(str "as is.")
   (set-reg 126 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (str "Cole: Clouds in the sky.")
   (wait)
   (text-reset 1)
   (str "Catherine: I wonder if it's going to rain... The weather's" 'br)
(str "been unpleasant lately.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text
    "Cole: It's only gonna be a matter of days until Sheila turns" 'br)
"into a zombie... There's no way I can let that happen.")
   (wait)
   (text-reset 1)
   (str "Catherine: What's wrong? Why do you keep glaring at the" 'br)
(str "calendar?")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (str "Cole: Well then... If you'll excuse me.")
   (wait)
   (text-reset 1)
   (str "Catherine: Cole, cheer up..")
   (wait)
   (text-reset 1)
   (str "Cole: I'll try.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥074.MES"))
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
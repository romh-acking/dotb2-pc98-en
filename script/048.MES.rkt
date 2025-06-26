(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
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
  (if (</>
       (// (? (= 178 #f)) (image-file "B:¥GPC¥DB081.GPC") (image-mem 1 3))))
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (sound '|se | 5)
  (if (</>
       (//
        (? (= 194 #t) (= 183 #t) (= 198 #t) (= 182 #t))
        (text "Lisle: Cole, Steve still isn't back. Do you think you could go check on him?")
        (wait)
        (text-reset 1)
        (text "Cole: Maybe he ran into trouble along the way. I'll make    tracks to the 32nd Precinct.")
        (wait)
        (text-reset 1)
        (text "Lisle: Use the station wagon again. I'm counting on you.")
        (wait)
        (text-reset 1)
        (text "Cole: Dr. Lisle, please take care of the two ladies.")
        (wait)
        (text-reset 1)
        ((cmd 204) 100 899)
        (sound '|| 2)
        (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
        ((cmd 206) 1 2)
        (mes-jump "A:¥MES¥051.MES"))
       (//
        (? (= 178 #f))
        (text "Lisle: It's so rare to have guests these days.")
        (wait)
        (text-reset 1)
        (text "Cole: Oh, this is Dr. Listle.")
        (wait)
        (text-reset 1)
        (text "Lisle: Nice to meet you, uh...")
        (wait)
        (text-reset 1)
        (text "Catherine: I'm Catherine. Pleased to meet you.")
        (wait)
        (text-reset 1)
        (text "Lisle: Catherine... or is it Cathy? In any case, please makeyourself comfortable...though this place is a mess.")
        (wait)
        (text-reset 1)
        (text "Cole: Catherine's a friend of Sheila, you know.")
        (wait)
        (text-reset 1)
        (text "Lisle: I see. Catherine, feel free to use the room at the   back right of the hallway.")
        (wait)
        (text-reset 1)
        (text "Catherine: Thank you so much. Oh, where is Sheila?")
        (wait)
        (text-reset 1)
        (text "Cole: Sheila's on the back left, on the opposite of where   you are.")
        (wait)
        (text-reset 1)
        (text "Catherine: Can I check in with her?")
        (wait)
        (text-reset 1)
        (text "Cole: Certainly.")
        (wait)
        (text-reset 1)
        (text "Catherine: Okay! I'll be back soon.")
        (wait)
        (text-reset 1)
        (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
        (image-file "B:¥GPC¥DB043.GPC")
        (image-mem 0 3)
        (image-file "B:¥GPC¥DB044.GPC")
        (image-mem 1 3)
        (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
        (text "Lisle: She seems pleasant.")
        (set-reg 178 #t)
        (wait)
        (text-reset 1))
       (// (text "Lisle: Cole, what do you need this time?") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 179 #f))
   (text "Lisle: Thank goodness Catherine made it out in one piece.")
   (wait)
   (text-reset 1)
   (text "Cole: She was holed up in a restaurant. There weren't any   zombies left when I found her.")
   (set-reg 179 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 180 #f))
   (text "Cole: Huh? Steve hasn't come back yet?")
   (wait)
   (text-reset 1)
   (text "Lisle: Now that you mention it, it's been a while.")
   (wait)
   (text-reset 1)
   (text "Cole: He was driving?")
   (wait)
   (text-reset 1)
   (text "Lisle: He was, but...")
   (wait)
   (text-reset 1)
   (text
    "Cole: The Police Station is way closer than Shuffle Food... He should have been back before me.")
   (wait)
   (text-reset 1)
   (text "Lisle: Let's give him a few more minutes. He might have     stopped by somewhere else.")
   (set-reg 180 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 181 #f))
   (text "Lisle: Still waiting for Steve... Have you found anything,  Cole?")
   (wait)
   (text-reset 1)
   (text "Cole: Yeah, regarding Razovan Pharmaceuticals. Catherine's  stepfather is the director. Name's Daniel White.")
   (wait)
   (text-reset 1)
   (text "Lisle: I see... So Mr. White has been cutting the           reanimation serum with heroin and selling it on the street?")
   (wait)
   (text-reset 1)
   (text "Cole: That sure sounds like the case. And he used the serum to reanimate the dead...")
   (wait)
   (text-reset 1)
   (text "Lisle: The thought of him laughing up a storm as he watches the city burn... It gets my goat.")
   (set-reg 181 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: In any case, I'm positive that this is our guy behind the incident.")
   (wait)
   (text-reset 1)
   (text "Lisle: All we have to do is wait for Steve to get back...")
   (set-reg 182 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 183 #f))
   (text "Lisle: And we have a bit more time until we'll get the      results of Sheila's blood test.")
   (wait)
   (text-reset 1)
   (text "Cole: Fingers crossed.")
   (set-reg 183 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Lisle: We do various chemical research here, but the        reanimation serum remains a mystery.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "Cole: I'm going to go check on everyone.")
   (wait)
   (text-reset 1)
   (text "Lisle: Understood.")
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
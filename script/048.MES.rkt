; Dead of the Brain 2 (PC-98) - 048.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; -----Scene:-----
; Cole returns to Lisle's lab with Catherine in tow.
; --Progression:--
; Talk to Lisle and look at the lab. MOVE, and return to the lab after talking to Sheila and Catherine.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB043A.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 16 3 21 7)							; 	Lisle
  (exec-mem 3744 1 7 25 2 34 7)							; 	Lab
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
        (? (= 194 #t) (= 183 #t) (= 198 #t) (= 182 #t))				; Lead-in (after talking to Lisle and visiting Sheila and Catherine)
        (str "Lisle: Cole, Steve still isn't back. Do you think you could" 'br)
        (str "go check on him?")
        (wait)
        (text-reset 1)
        (str "Cole: Maybe he ran into trouble along the way. I'll make" 'br)
        (str "tracks to the 32nd Precinct.")
        (wait)
        (text-reset 1)
        (str "Lisle: Use the station wagon again. I'm counting on you.")
        (wait)
        (text-reset 1)
        (str "Cole: Dr. Lisle, please take care of the two ladies.")
        (wait)
        (text-reset 1)
        ((cmd 204) 100 899)
        (sound '|| 2)
        (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
        ((cmd 206) 1 2)
        (mes-jump "A:¥MES¥051.MES"))
       (//
        (? (= 178 #f))								; Lead-in from previous MES script
        (str "Lisle: It's so rare to have guests these days.")
        (wait)
        (text-reset 1)
        (str "Cole: Oh, this is Dr. Lisle.")
        (wait)
        (text-reset 1)
        (str "Lisle: Nice to meet you, uh...")
        (wait)
        (text-reset 1)
        (str "Catherine: I'm Catherine. Pleased to meet you.")
        (wait)
        (text-reset 1)
        (str "Lisle: Catherine... or is it Cathy? In any case, please" 'br)
        (str "make yourself comfortable...though this place is a mess.")
        (wait)
        (text-reset 1)
        (str "Cole: Catherine's a friend of Sheila, you know.")
        (wait)
        (text-reset 1)
        (str "Lisle: I see. Catherine, feel free to use the room at the" 'br)
        (str "back right of the hallway.")
        (wait)
        (text-reset 1)
        (str "Catherine: Thank you so much. Oh, where is Sheila?")
        (wait)
        (text-reset 1)
        (str "Cole: Sheila's on the back left, on the opposite of where" 'br)
        (str "you are.")
        (wait)
        (text-reset 1)
        (str "Catherine: Can I check in with her?")
        (wait)
        (text-reset 1)
        (str "Cole: Certainly.")
        (wait)
        (text-reset 1)
        (str "Catherine: Okay! I'll be back soon.")
        (wait)
        (text-reset 1)
        (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
        (image-file "B:¥GPC¥DB043.GPC")
        (image-mem 0 3)
        (image-file "B:¥GPC¥DB044.GPC")
        (image-mem 1 3)
        (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
        (str "Lisle: She seems pleasant.")
        (set-reg 178 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Lisle: What do you need this time, Cole?")			; Lead-in from second visit onwards
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 179 #f))							; Lisle #1
   (str "Lisle: Thank goodness Catherine made it out in one piece.")
   (wait)
   (text-reset 1)
   (str "Cole: She was holed up in a restaurant. There weren't any" 'br)
   (str "zombies left when I found her.")
   (set-reg 179 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 180 #f))							; Lisle #2
   (str "Cole: Huh? Steve hasn't come back yet?")
   (wait)
   (text-reset 1)
   (str "Lisle: Now that you mention it, it's been a while.")
   (wait)
   (text-reset 1)
   (str "Cole: Was he driving?")
   (wait)
   (text-reset 1)
   (str "Lisle: He was, but...")
   (wait)
   (text-reset 1)
   (str "Cole: The Police Station is way closer than Shuffle Food..." 'br)
   (str "He should have been back before me.")
   (wait)
   (text-reset 1)
   (str "Lisle: Let's give him a few more minutes. He might have" 'br)
   (str "stopped by somewhere else.")
   (set-reg 180 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 181 #f))							; Lisle #3
   (str "Lisle: Still waiting for Steve... Have you found anything," 'br)
   (str "Cole?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, regarding Razovan Pharmaceuticals. Catherine's" 'br)
   (str "stepfather is the director. Name's Daniel White.")
   (wait)
   (text-reset 1)
   (str "Lisle: I see... So Mr. White has been cutting the" 'br)
   (str "reanimation serum with heroin and selling it on the street?")
   (wait)
   (text-reset 1)
   (str "Cole: That sure sounds like the case. And he used the serum" 'br)
   (str "to reanimate the dead...")
   (wait)
   (text-reset 1)
   (str "Lisle: The thought of him laughing up a storm as he watches" 'br)
   (str "the city burn... It gets my goat.")
   (set-reg 181 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Lisle #4 (repeat line)
   (str "Cole: In any case, I'm positive that this is our guy behind" 'br)
   (str "the incident.")
   (wait)
   (text-reset 1)
   (str "Lisle: All we have to do is wait for Steve to get back...")
   (set-reg 182 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 183 #f))							; Lab #1
   (str "Lisle: We have a bit more time until we'll get the results" 'br)
   (str "of Sheila's blood test.")
   (wait)
   (text-reset 1)
   (str "Cole: Fingers crossed.")
   (set-reg 183 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Lab #2 (repeat line)
   (str "Lisle: We do various chemical research here, but the" 'br)
   (str "reanimation serum remains a mystery.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: I'm going to go check on everyone.")
   (wait)
   (text-reset 1)
   (str "Lisle: Understood.")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥039.MES"))
 (seg (? (= P 2))								; SYSTEM
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
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
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
  (if (</>
       (//
        (? (= 184 #f) (= 202 #f))
        (str "Cole: Huh? Where's Catherine?")
        (wait)
        (text-reset 1)
        (str "Sheila: She left a while back. Thank you, Cole.")
        (wait)
        (text-reset 1)
        (str "Cole: For what?")
        (wait)
        (text-reset 1)
        (str "Sheila: For rescuing Catherine.")
        (set-reg 184 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Sheila: What's the matter, Cole? You seem... unsettled" 'br)
		(str "today. You usually hold it together better than I do.")
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 182 #t) (= 186 #t) (= 187 #f))
   (str "Sheila: Why don't we sort out everything that's happened so" 'br)
(str "far?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, good idea.")
   (wait)
   (text-reset 1)
   (str "Sheila: First of all, there's no doubt that Bloody Fox is" 'br)
(str "distributing Purple Sky.")
   (wait)
   (text-reset 1)
   (str "Cole: Definitely.")
   (wait)
   (text-reset 1)
   (str "Sheila: And amongst Bloody Fox, the person most connected" 'br)
(str "to Purple Sky is...")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    36
    298
    56
    298
    16
    317
    36
    317
    56
    317
    16
    337
    36
    337
    56
    337
    (</>
     (/ (str "Steve"))
     (/ (str "Catherine"))
     (/ (str "Briar"))
     (/ (str "Lisle"))
     (/ (str "Daniel"))
     (/ (str "Sheila"))))
   (text-reset 1)
   (if (</> (// (? (= S 2)) (nop@) (set-reg 188 #t))))
   (str "Sheila: And what's the main distribution spot for Purple" 'br)
(str "Sky?")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    36
    298
    56
    298
    16
    317
    36
    317
    56
    317
    16
    337
    36
    337
    56
    337
    (</>
     (/ (str "Bar Rease"))
     (/ (str "Disco Zeena"))
     (/ (str "Razovan Pharma"))
     (/ (str "Perain Institute"))
     (/ (str "The 32nd Precinct"))
     (/ (str "Shuffle Food"))))
   (text-reset 1)
   (if (</> (// (? (= S 1)) (nop@) (set-reg 189 #t))))
   (str "Sheila: And from my investigation, it turns out that the" 'br)
(str "manufacturer of Purple Sky is Razovan Pharmaceuticals. And" 'br)
(str "my reasoning for that was...")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    16
    317
    16
    337
    (</>
     (/ (str "They discovered a case with the Razovan logo at Zeena."))
     (/ (str "Razovan's director was Catherine's stepfather."))
     (/ (str "I went to Razovan and confirmed it myself."))))
   (text-reset 1)
   (if (</> (// (? (= S 0)) (nop@) (set-reg 190 #t))))
   (str "Sheila: And then I headed over to Razovan Pharmaceuticals," 'br)
(str "but on my way, Bloody Fox kidnapped me and held me at Bar" 'br)
(str "Rease.")
   (wait)
   (text-reset 1)
   (str "Sheila: Razovan was raided a while back for violating the" 'br)
(str "Narcotics Control Act, and what was found...?")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    36
    298
    56
    298
    16
    317
    36
    317
    56
    317
    16
    337
    36
    337
    56
    337
    (</>
     (/ (str "Marijuana"))
     (/ (str "Heroin"))
     (/ (str "Cannabis"))
     (/ (str "Cocaine"))))
   (text-reset 1)
   (if (</> (// (? (= S 1)) (nop@) (set-reg 191 #t))))
   (str "Sheila: So by mixing that drug with the reanimation serum," 'br)
(str "Purple Sky was created. It's almost certain Razovan is" 'br)
(str "involved.")
   (wait)
   (text-reset 1)
   (str "Sheila: Now, what's the name of Razovan's director, who is" 'br)
(str "also Catherine's stepfather?")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    36
    298
    56
    298
    16
    317
    36
    317
    56
    317
    16
    337
    36
    337
    56
    337
    (</>
     (/ (str "Steve"))
     (/ (str "Catherine"))
     (/ (str "Briar"))
     (/ (str "Lisle"))
     (/ (str "Daniel"))
     (/ (str "Sheila"))))
   (text-reset 1)
   (if (</> (// (? (= S 4)) (nop@) (set-reg 191 #t))))
   (str "Sheila: The bodies of the Bloody Fox members at Shuffle" 'br)
(str "food... Catherine said the zombies attacked them when she" 'br)
(str "was about to be abducted.")
   (wait)
   (text-reset 1)
   (str "Sheila: What did they say to try to lure Catherine out?")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    16
    317
    16
    337
    (</>
     (/ (str "Hey babe, go out on a date with us!"))
     (/ (str "Our leader wants to see you!"))
     (/ (str "Your father sent us!"))))
   (text-reset 1)
   (if (</> (// (? (= S 2)) (nop@) (set-reg 192 #t))))
   (str "Sheila: Which means...")
   (wait)
   (text-reset 1)
   (menu1
    16
    298
    16
    317
    16
    337
    (</>
     (/ (str "Catherine is connected to Bloody Fox."))
     (/ (str "Catherine has been abducted by Bloody Fox before."))
     (/ (str "Catherine's stepfather is connected to Bloody Fox."))))
   (text-reset 1)
   (if (</> (// (? (= S 2)) (nop@) (set-reg 193 #t))))
   (if (</>
        (//
         (? (= 188 #t) (= 189 #t) (= 190 #t) (= 191 #t) (= 192 #t) (= 193 #t))
         (str "Cole: Once we piece all these together, it’s almost certain" 'br)
(str "certain that Razovan Pharmaceuticals and Bloody Fox are connected." 'br)
(str "are connected."
         (set-reg 187 #t)
         (wait)
         (text-reset 1))
        (//
         (str "Cole: Something still feels off, though...")
         (wait)
         (text-reset 1)
         (str "Sheila: Let’s go over things again from the start.")
         (wait)
         (text-reset 1)
         ((cmd 204) 188 193)))))
 (seg (? (= P 5) (= 182 #t) (= 186 #t))
   (str "Cole: All we have to do is wait for Steve to bring back the" 'br)
(str "Razovan documents.")
   (wait)
   (text-reset 1)
   (str "Sheila: Even so, he sure is taking his time...")
   (set-reg 194 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 185 #f))
   (str "Sheila: So Catherine's stepfather is the director of Razovan" 'br)
(str "Pharmaceuticals... She must feel awful about all of this.")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah... And she seems to hate that man with a passion.")
   (wait)
   (text-reset 1)
   (str "Sheila: I heard... He was rough with her... But her mother" 'br)
(str "still loves him.")
   (wait)
   (text-reset 1)
   (str "Sheila: Catherine having to face her mother after something" 'br)
(str "like that must be beyond painful...")
   (wait)
   (text-reset 1)
   (str "Cole: For sure.")
   (set-reg 185 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 186 #f))
   (str "Cole: I wonder if Catherine ever goes back home?")
   (wait)
   (text-reset 1)
   (str "Sheila: Who knows... She's never talked about her family" 'br)
(str "before. This was the first time she ever mentioned it.")
   (wait)
   (text-reset 1)
   (str "Cole: I see...")
   (set-reg 186 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (str "Cole: Is Steve back yet?")
   (wait)
   (text-reset 1)
   (str "Sheila: Now that you mention it, no, he isn't.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (branch-random
    (</>
     (/
      (str "Cole: This is the shower room.")
      (wait)
      (text-reset 1)
      (str "Sheila: I'll probably shower off in a little while.")
      (wait)
      (text-reset 1))
     (/
      (str "Cole: There's a door to the shower room. It doesn't seem" 'br)
(str "too big inside.")
      (wait)
      (text-reset 1)))))
 (seg (? (= P 7) (= 113 #f))
   (str "Cole: A typical pipe-frame bed. Got one of these back in the" 'br)
(str "apartment. It's comfier than it looks.")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 114 #f))
   (str "Sheila: What is it? You eyeing up the bed?")
   (wait)
   (text-reset 1)
   (str "Cole: Oh no, it's just you don't see that pipe-frame design" 'br)
(str "a lot.")
   (wait)
   (text-reset 1)
   (str "Sheila: Cole, you've got one just like it in your apartment," 'br)
(str "right?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, they're cheap and all...")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (str "Cole: Just a standard pipe-frame bed.") (wait) (text-reset 1))
 (seg (? (= P 8) (= 115 #f))
   (str "Cole: The window. The curtains are closed. At this time of" 'br)
(str "night it's pitch black outside.")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (str "Sheila: It gets cold at night, so I always close the" 'br)
(str "curtains.") (wait) (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (str "Cole: Okay, back to the hallway.")
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
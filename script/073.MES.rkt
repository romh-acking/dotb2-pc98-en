; Dead of the Brain 2 (PC-98) - 073.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; -----Scene:-----
; Back in the lab to report to Steve and Lisle about the current situation.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB043.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 16 3 21 7)							; 	Lisle
  (exec-mem 3744 1 6 38 2 44 6)							; 	Steve
  (exec-mem 3744 1 7 25 2 34 7)							; 	Lab
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB043.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB044.GPC")
  (image-mem 1 3)
  (image-file "B:¥GPC¥DB071.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 100 #f))								; Lead-in from previous MES file
        (str "Steve: Oh, there's Cole. You're just in time. How are" 'br)
        (str "things looking? Could you clean out the first floor?")
        (wait)
        (text-reset 1)
        (str "Cole: Steve, it's bad! Real bad!")
        (set-reg 100 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Steve: Cole...")							; Lead-in from loading game
	(wait)
	(text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 101 #f))							; Lisle #1
   (str "Lisle: Cole...")
   (wait)
   (text-reset 1)
   (str "Steve: Doctor Lisle, let's hear what Cole has to say.")
   (wait)
   (text-reset 1)
   (str "Cole: What is it?")
   (wait)
   (text-reset 1)
   (str "Steve: Give it to us straight.")
   (wait)
   (text-reset 1)
   (str "Cole: OK.")
   (wait)
   (text-reset 1)
   (str "Cole: Just now, I got jumped by Bloody Fox on the first" 'br)
   (str "floor.")
   (wait)
   (text-reset 1)
   (str "Steve: Bloody Fox!? How did they get here?")
   (wait)
   (text-reset 1)
   (str "Cole: I had assumed he was just a zombie. I started asking" 'br)
   (str "him questions, and...")
   (wait)
   (text-reset 1)
   (str "Steve: What happened?")
   (wait)
   (text-reset 1)
   (str "Cole: He bit his own tongue off!")
   (wait)
   (text-reset 1)
   (str "Steve: Good god. Did he die?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah... But before he did it, he SMILED at me.")
   (wait)
   (text-reset 1)
   (str "Steve: What a man... So, does that mean the person who" 'br)
   (str "broke open the entrance...")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, it must have been him.")
   (set-reg 101 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 102 #f))							; Lisle #2
   (str "Lisle: Who is Bloody Fox taking their orders from?")
   (wait)
   (text-reset 1)
   (str "Steve: Who indeed...")
   (wait)
   (text-reset 1)
   (str "Cole: Orders?")
   (wait)
   (text-reset 1)
   (str "Steve: You know as well as I do... Someone's pulling Bloody" 'br)
   (str "Fox's strings.")
   (wait)
   (text-reset 1)
   (str "Cole: You think Daniel...?")
   (wait)
   (text-reset 1)
   (str "Steve: I can only assume so.")
   (wait)
   (text-reset 1)
   (str "Cole: I'm not sure Daniel knows exactly who we are, though.")
   (wait)
   (text-reset 1)
   (str "Steve: Since Daniel has ties to Bloody Fox, they probably" 'br)
   (str "told him that we were investigating Purple Sky.")
   (wait)
   (text-reset 1)
   (str "Cole: I see...")
   (set-reg 102 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 103 #f))							; Lisle #3
   (str "Lisle: When it rains, it pours. From now on, it's not just" 'br)
   (str "zombies, but also Bloody Fox who's after us.")
   (wait)
   (text-reset 1)
   (str "Cole: We musta really gotten under Daniel's skin. He must" 'br)
   (str "know we're here at the Institute...")
   (wait)
   (text-reset 1)
   (str "Lisle: Well, we've locked down the shutters. They probably" 'br)
   (str "can't get to the second floor anytime soon.")
   (wait)
   (text-reset 1)
   (str "Steve: Doctor, don't let your guard down.")
   (wait)
   (text-reset 1)
   (str "Lisle: If my guard was down, I wouldn't be packing this gun" 'br)
   (str "all the time.")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Lisle #4 (repeat line)
   (str "Steve: Doctor, don't let your guard down.")
   (wait)
   (text-reset 1)
   (str "Lisle: If my guard was down, I wouldn't be packing this gun" 'br)
   (str "all the time.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 103 #t) (= 105 #t) (= 106 #f))				; Steve (after talking to Lisle) #1
   (str "Cole: So... What does Steve have to say?")
   (wait)
   (text-reset 1)
   (str "Steve: ...")
   (wait)
   (text-reset 1)
   (str "Cole: What is it...?")
   (wait)
   (text-reset 1)
   (str "Lisle: If it's about that, I can--")
   (wait)
   (text-reset 1)
   (str "Steve: I'm sorry.")
   (wait)
   (text-reset 1)
   (str "Lisle: It's about Sheila's blood test...")
   (wait)
   (text-reset 1)
   (str "Cole: Right, the blood test. Did you figure anything out?")
   (wait)
   (text-reset 1)
   (str "Lisle: We found a very slight DNV reaction in her blood.")
   (wait)
   (text-reset 1)
   (str "Cole: What!? Doesn't that mean...")
   (wait)
   (text-reset 1)
   (str "Lisle: ...")
   (wait)
   (text-reset 1)
   (str "Cole: What's going to happen to Sheila?")
   (wait)
   (text-reset 1)
   (str "Lisle: I can't say for sure yet... But now that we know" 'br)
   (str "there's DNV in her system, we can't just leave her as-is.")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 103 #t) (= 105 #t) (= 107 #f))				; Steve (after talking to Lisle) #2
   (str "Cole: What do you mean?")
   (wait)
   (text-reset 1)
   (str "Steve: We need to move her to a...safe place.")
   (wait)
   (text-reset 1)
   (str "Cole: Sheila turning into a zombie? That's ridiculous!")
   (wait)
   (text-reset 1)
   (str "Lisle: We still don't know what will happen to her, but..." 'br)
   (str "Considering a worst-case scenario...")
   (wait)
   (text-reset 1)
   (str "Cole: No way, you've gotta be joking!")
   (wait)
   (text-reset 1)
   (str "Steve: Cole...")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1)
   (str "Cole: ...So... What should we do about Sheila?")
   (wait)
   (text-reset 1)
   (str "Lisle: She's resting in her room, but we haven't given her" 'br)
   (str "the results yet.")
   (wait)
   (text-reset 1)
   (str "Cole: I see...")
   (wait)
   (text-reset 1)
   (str "Cole: I need to go.")
   (wait)
   (text-reset 1)
   (str "Lisle: She doesn't need to know about this, Cole.")
   (wait)
   (text-reset 1)
   (str "Cole: I get it... I'm just going to go check on her.")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 103 #t) (= 105 #t))						; Steve (after talking to Lisle) #3 (repeat line)
   (str "Lisle: I never thought Sheila would end up like this...")
   (wait)
   (text-reset 1)
   (str "Cole: ...")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 104 #f))							; Steve #1
   (str "Steve: Things must have gotten pretty crazy on the first" 'br)
   (str "floor.")
   (wait)
   (text-reset 1)
   (str "Cole: Actually, it was relatively easy taking care of" 'br)
   (str "business...")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 105 #f))							; Steve #2
   (str "Cole: In the first-floor office, I found the zombie that" 'br)
   (str "you'd taken out. As expected, a perfect shot right to the" 'br)
   (str "brain.")
   (wait)
   (text-reset 1)
   (str "Steve: Ah, at that range, even a toddler could have made" 'br)
   (str "the shot.")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Steve #3 (repeat line)
   (str "Steve: So what happened on the first floor?")
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Lab
   (str "Lisle: I'll be in the lab all day.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1) (= 107 #t))							; MOVE 
   (exec-mem 6064 2 1)
   (str "Cole: Let's get out of here for now.")
   (exec-mem 6064 3)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥074.MES"))
 (seg (? (= P 2))								; SYSTEM
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
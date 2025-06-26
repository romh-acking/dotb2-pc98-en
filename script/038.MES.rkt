(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (nop@)
  (set-reg 112 #t)
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
        (? (= 102 #f))
        (text "Sheila: Cole!!!")
        (wait)
        (text-reset 1)
        (text "Cole: Sheila!!! Thank god, you're okay!")
        (set-reg 102 #t)
        (wait)
        (text-reset 1))
       (// (text "Cole: Sheila's alright...thankfully...") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 103 #f))
   (text "Cole: It's Sheila... She's in one piece.")
   (wait)
   (text-reset 1)
   (text "Sheila: Cole...")
   (set-reg 103 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 104 #f))
   (text "Cole: Sheila, I've been worried sick about you. You could   have at least called me...")
   (wait)
   (text-reset 1)
   (text "Sheila: I'm sorry... I've been researching Purple Sky all   morning long...")
   (wait)
   (text-reset 1)
   (text "Cole: It's us against Bloody Fox. You can't take them on    alone.")
   (wait)
   (text-reset 1)
   (text "Cole: And didn't you learn your lesson after what happened  at Rease last night?")
   (wait)
   (text-reset 1)
   (text "Sheila: I... I couldn't just sit back once I started        thinking about Doctor Cooger yesterday...")
   (wait)
   (text-reset 1)
   (text "Cole: ...")
   (wait)
   (text-reset 1)
   (text "Sheila: I can't forgive anyone who'd use his research for   such twisted purposes.")
   (set-reg 104 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 105 #f))
   (text "Cole: Did you see what happened to your apartment?")
   (wait)
   (text-reset 1)
   (text "Sheila: Not yet, but you found it all torn up, right? Steve told me all about it.")
   (wait)
   (text-reset 1)
   (text "Cole: It was ransacked, yeah. Someone was trying to send a  message.")
   (wait)
   (text-reset 1)
   (text "Sheila: !?")
   (wait)
   (text-reset 1)
   (text
    "Cole: My guess is that you discovered something about PurpleSky, and they've been trying to get you ever since.")
   (wait)
   (text-reset 1)
   (text "Cole: When you were trying to find out more about Purple    Sky, you went to Disco Zeena and got kidnapped by Bloody    Fox, didn't you?")
   (wait)
   (text-reset 1)
   (text "Sheila: How'd you know that?")
   (wait)
   (text-reset 1)
   (text "Cole: I've been busy chasing you down.")
   (set-reg 105 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 106 #f))
   (text "Sheila: When I asked about Purple Sky, someone had mentionedthey saw a case stamped with the Razovan Pharmaceuticals logo.")
   (wait)
   (text-reset 1)
   (text "Cole: Razovan?")
   (wait)
   (text-reset 1)
   (text "Sheila: Yes... They're out in the countryside, you can get  there via Light Dance Street.")
   (wait)
   (text-reset 1)
   (text "Cole: Ah, that makes sense.. Did you go out there to see    them?")
   (wait)
   (text-reset 1)
   (text "Sheila: I didn't get the chance. Bloody Fox grabbed me just minutes after I left Zeena.")
   (wait)
   (text-reset 1)
   (text "Cole: Damn.")
   (set-reg 106 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 107 #f))
   (text "Sheila: They took me back to Bar Rease and stole my ring.")
   (wait)
   (text-reset 1)
   (text "Cole: This ring?")
   (wait)
   (text-reset 1)
   (text "Sheila: Ah! Cole, how'd you get that?")
   (wait)
   (text-reset 1)
   (text "Cole: Bloody Fox used it as bait. They even left bloodstainson it...")
   (wait)
   (text-reset 1)
   (text "Sheila: And you fell for it?")
   (wait)
   (text-reset 1)
   (text
    "Cole: Of course! But by then, Steve had already rescued you.I wound up in their trap...")
   (wait)
   (text-reset 1)
   (text "Cole: And they almost injected me with Purple Sky.")
   (set-reg 107 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 108 #f))
   (text "Cole: Sheila, why didn't you call me? It was reckless to go digging all by yourself...")
   (wait)
   (text-reset 1)
   (text "Sheila: I'm sorry, Cole... I'll never do anything like that again.")
   (set-reg 108 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 109 #f))
   (text "Sheila: After Bloody Fox kidnapped me... If Steve hadn't    shown up...")
   (wait)
   (text-reset 1)
   (text
    "Cole: That's right, we owe him big. And we need to look intoRazovan Pharmaceuticals.")
   (set-reg 109 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Sheila: I think Steve's probably still in the lab.")
   (wait)
   (text-reset 1)
   (text "Cole: Okay. Let's go.")
   (set-reg 110 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 111 #f))
   (text "Cole: Where's this now?")
   (wait)
   (text-reset 1)
   (text "Sheila: Looks like a shower room. The facility has lots of  rest facilities, I guess.")
   (set-reg 111 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6)) (text "Cole: Looks like a shower room...") (wait) (text-reset 1))
 (seg (? (= P 7) (= 113 #f))
   (text
    "Cole: A typical pipe-frame bed. Got one of these back in theapartment. It's comfier than it looks.")
   (set-reg 113 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 114 #f))
   (text "Sheila: What is it? You eyeing up the bed?")
   (wait)
   (text-reset 1)
   (text "Cole: Oh no, it's just you don't see that pipe-frame design a lot.")
   (wait)
   (text-reset 1)
   (text "Sheila: Cole, you've got one just like it in your apartment,right?")
   (wait)
   (text-reset 1)
   (text "Cole: Yeah, they're cheap and all...")
   (set-reg 114 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7)) (text "Cole: Just a standard pipe-frame bed.") (wait) (text-reset 1))
 (seg (? (= P 8) (= 115 #f))
   (text "Cole: The window. The curtains are closed. At this time of  night it's pitch black outside.")
   (set-reg 115 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8)) (text "Sheila: It gets cold at night, so I always close the        curtains.") (wait) (text-reset 1))
 (seg (? (= P 1) (= 110 #t))
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
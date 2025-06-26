(mes
 (meta (engine 'ADV) (charset "English") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB023.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 45 6 52 9)
  (exec-mem 3744 1 6 30 3 37 7)
  (exec-mem 3744 1 7 4 11 15 15)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB023.GPC")
  (image-mem 1 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 205 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_03.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_03.USO"))))
        (sound '|| 1))))
  (if (</>
       (//
        (? (= 206 #f))
        (text "Bartender: ...")
        (wait)
        (text-reset 1)
        (text "Cole: This place seems pretty unwelcoming. No Michelin Star for these guys.")
        (set-reg 206 #t)
        (wait)
        (text-reset 1))
       (// (text "Bartender: ...") (wait) (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 207 #f))
   (text "Bartender: You drinkin' somethin'?")
   (wait)
   (text-reset 1)
   (text "Cole: Could I have a beer?")
   (wait)
   (text-reset 1)
   (text "Bartender: ...")
   (wait)
   (text-reset 1)
   (text "Cole: Thanks, I'll leave the money right here.")
   (set-reg 207 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 208 #f))
   (text "Cole: I wanna ask you about yesterday's murders.")
   (wait)
   (text-reset 1)
   (text "Bartender: ...")
   (wait)
   (text-reset 1)
   (text
    "Cole: The newspaper said that the culprit, Ben, was a junkie. Do you know if he had any connection to a drug called Purple Sky?")
   (wait)
   (text-reset 1)
   (text "Bartender: ...")
   (wait)
   (text-reset 1)
   (text "Cole: Hey...are you even listening to me?")
   (wait)
   (text-reset 1)
   (text "Bartender: ...")
   (wait)
   (text-reset 1)
   (text "Cole: Not much for rapport, are you.")
   (set-reg 208 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text "Cole: Look, what do you know about Ben?")
   (wait)
   (text-reset 1)
   (text "Bartender: ...")
   (wait)
   (text-reset 1)
   (text "Cole: I might as well be talking to a fire hydrant.")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 213 #t) (= 214 #t))
   (text "Bartender: You're spookin' the other customers. Can you cut it out?")
   (wait)
   (text-reset 1)
   (text "Cole: I'll leave you alone if you tell me about yesterday's incident. I've been through a lot to get here.")
   (wait)
   (text-reset 1)
   (text
    "Bartender: No dice, pal. I'm just filling in for a buddy tonight, I don't know anything about any incidents. Maybe if you talk to some of the regulars.")
   (wait)
   (text-reset 1)
   (text "Cole: Anyone in particular?")
   (wait)
   (text-reset 1)
   (text "Bartender: Yeah, the Bloody Fox guys drinking at that table in the back. That is, if you've got the guts to start chatting it up with those monsters...heh.")
   (wait)
   (text-reset 1)
   (text "Cole: Bloody Fox...")
   (wait)
   (text-reset 1)
   (text "Bartender: Otherwise you should, you know, piss off. That Boy Scout demeanor of yours don't exactly match our normal clientele.")
   (wait)
   (text-reset 1)
   (text
    "Cole: Boy Scout, huh... Well, I'm not walking away from this. Got no choice but to strike up a convo with those punks.")
   (wait)
   (text-reset 1)
   (text "Bartender: Picking a fight with Bloody Fox all by your lonesome, huh? I'll grab the popcorn.")
   (wait)
   (text-reset 1)
   (sound '|| 2)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥012.MES"))
 (seg (? (= P 6) (= 208 #t) (= 211 #t))
   (text "Cole: Hey, about what happened here last night...")
   (wait)
   (text-reset 1)
   (text "Patron: ...")
   (wait)
   (text-reset 1)
   (text "Cole: Hey, come on, throw me a bone here.")
   (wait)
   (text-reset 1)
   (text "Patron: ...")
   (wait)
   (text-reset 1)
   (text "Cole: It's not just the bartender. Everyone here is real antisocial.")
   (set-reg 214 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 209 #f))
   (text "Cole: There's a patron sitting at the counter. If they're a regular, they might have heard about yesterday's murder spree.")
   (set-reg 209 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 210 #f))
   (text "Cole: Hey, can I ask you something?")
   (wait)
   (text-reset 1)
   (text "Patron: ...")
   (wait)
   (text-reset 1)
   (text "Cole: Can you answer a question for me?")
   (wait)
   (text-reset 1)
   (text "Patron: ...")
   (wait)
   (text-reset 1)
   (text "Cole: The hell, man, you just gonna ignore me?")
   (set-reg 210 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "Cole: Come on, answer my questions.")
   (wait)
   (text-reset 1)
   (text "Patron: ...")
   (wait)
   (text-reset 1)
   (text "Cole: Fine, I'll just ask someone else.")
   (set-reg 211 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 212 #f))
   (text "Cole: There's a bunch of Bloody Fox members drinking in the back. The bikes out front probably belong to them.")
   (set-reg 212 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 213 #f))
   (text "Cole: Besides them, the bar seems pretty empty. Wonder if it's an off day...or the multiple murders had something to do with it.")
   (set-reg 213 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))
   (text "Cole: I need to get some information and get out. I'm tired of messing with these guys.")
   (wait)
   (text-reset 1))
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
        (/ (nop@) (set-reg 205 #f) (flag-save 1))
        (/ (nop@) (set-reg 205 #f) (flag-save 2))
        (/ (nop@) (set-reg 205 #f) (flag-save 3))
        (/ (nop@) (set-reg 205 #f) (flag-save 4))
        (/ (nop@) (set-reg 205 #f) (flag-save 5))
        (/ (nop@) (set-reg 205 #f) (flag-save 6))
        (/ (nop@) (set-reg 205 #f) (flag-save 7))
        (/ (nop@) (set-reg 205 #f) (flag-save 8))
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
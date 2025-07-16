; Dead of the Brain 2 (PC-98) - 0.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; --Description:--
; Catherine's room.
; -----Quiz:------
; 1. Going after Daniel
; 2. He seemed uneasy... / Suddenly became quiet.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB140.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here...
  (exec-mem 3744 1 1 80 0 0 0)							; 	MOVE button
  (exec-mem 3744 1 2 80 0 0 0)							; 	SYSTEM button
  (exec-mem 3744 1 5 7 10 18 14)						; 	Bed
  (exec-mem 3744 1 6 17 2 23 9)							; 	Window
  (exec-mem 3744 1 7 51 4 54 7)							; 	Calendar
  (exec-mem 3744 1 8 25 4 37 10)						; 	Catherine
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB108.GPC")
  (image-mem 0 3)
  (image-file "B:¥GPC¥DB140.GPC")
  (image-mem 1 0)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_07.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_07.USO"))))
  (sound '|| 1)
  (if (</>
       (//
        (? (= 121 #t) (= 149 #t) (= 137 #t))					; Lead-in (after checking lab for Steve and Sheila's room)
        (str "Catherine: Cole...")
        (wait)
        (text-reset 1)
        (str "Cole: What is it?")
        (wait)
        (text-reset 1)
        (str "Catherine: Well, Steve usually gives me a smile when he" 'br)
        (str "passes by in the hallway, but this time he looked different.")
        (wait)
        (text-reset 1)
        (str "Cole: How so?")
        (wait)
        (text-reset 1)
        (str "Catherine: He was looking pretty grim... Even when I said" 'br)
        (str "hello, he left without a word.")
        (wait)
        (text-reset 1)
        (str "Cole: Lisle said Steve might have gone into town...")
        (wait)
        (text-reset 1)
        (str "Catherine: But where would he need to go?")
        (wait)
        (text-reset 1)
        (str "Cole: Catherine... How was Steve acting?")
        (wait)
        (text-reset 1)
        (str "Catherine: Well, he looked like he usually does...")
        (wait)
        (text-reset 1)
        (str "Cole: But can you remember anything strange?")
        (wait)
        (text-reset 1)
        (str "Catherine: No, nothing.")
        (wait)
        (text-reset 1)
        (str "Cole: Actually, when you mention it, when the three of us" 'br)
        (str "got talking at the lab, he got tongue-tied for a moment.")
        (wait)
        (text-reset 1)
        (loop
         (str "Catherine: What topic could have spooked Steve?")		; Quiz begins here; this is Question 1
         (wait)
         (text-reset 1)
         (menu1
          22 298  46 298
          22 318  46 318
          22 338  46 338
          (</>
           (/ (str "Doc's brain revival   "))
           (/ (str "My shooting skills    "))
           (/ (str "Purple Sky            "))
           (/ (str "Going after Daniel    "))
           (/ (str "The woman's corpse    "))
           (/ (str "Sheila's bodily change"))))
         (text-reset 1)
         (str "Cole: I think ")
         (branch-var
          S
          (</>
           (/ (str "Doc's brain revival"))
           (/ (str "My shooting skills"))
           (/ (str "Purple Sky"))
           (/ (str "going after Daniel") (set-reg 151 #t))
           (/ (str "The woman's corpse"))
           (/ (str "Sheila's bodily change"))))
         (str " was the topic at hand.")
         (wait)
         (text-reset 1)
         (str "Catherine: At that point, how did Steve react?")			; Question 2
         (wait)
         (text-reset 1)
         (menu1
          22 298  46 298
          22 318  46 318
          22 338  46 338
          (</>
           (/ (str "He seemed uneasy      "))
           (/ (str "Suddenly became quiet "))
           (/ (str "Shocked and speechless"))
           (/ (str "Shocked; then he left "))
           (/ (str "He didn't say a word  "))
           (/ (str "He left the room upset"))))
         (text-reset 1)
         (str "Cole: Well, he ")
         (branch-var
          S
          (</>
           (/ (str "became uneasy... Something was wrong") (set-reg 152 #t))
           (/ (str "got quiet all of a sudden") (set-reg 152 #t))
           (/ (str "seemed shocked, and didn't say anything"))
           (/ (str "seemed shocked, and left immediately"))
           (/ (str "didn't say anything at all"))
           (/ (str "left in a huff"))))
         (str ".")
         (wait)
         (text-reset 1)
         (if (</>
              (//
               (? (= 151 #t) (= 152 #t))					; Success
               (str "Catherine: Do you think he was going to go after Daniel?")
               (wait)
               (text-reset 1)
               (str "Cole: No... No way!")
               (wait)
               (text-reset 1)
               (str "Cole: I couldn't imagine him going to Razovan" 'br)
               (str "Pharmaceuticals all by himself... There's no way he'd leave" 'br)
               (str "me behind.")
               (wait)
               (text-reset 1)
               (str "Catherine: But Steve's been saying all along that he needs" 'br)
               (str "to avenge his brother himself! It's like his catchphrase.")
               (wait)
               (text-reset 1)
               (str "Cole: It's way too dangerous for him to go alone!")
               (wait)
               (text-reset 1)
               (str "Catherine: Cole, you've gotta catch up with him! He can't" 'br)
               (str "do it alone!")
               (wait)
               (text-reset 1)
               (str "Cole: O-okay! I gotta go...")
               (wait)
               (text-reset 1)
               (str "Catherine: Wait!")
               (wait)
               (text-reset 1)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (image-file "B:¥GPC¥DB108.GPC") (image-mem 0 3)
               (image-file "B:¥GPC¥DB141.GPC") (image-mem 1 3)
               (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
               (str "Cole: What is it, Cath--")
               (wait)
               (text-reset 1)
               (str "Catherine: Cole... Don't you die on me.")
               (wait)
               (text-reset 1)
               (str "Cole: ...")
               (wait)
               (text-reset 1)
               (str "Catherine: Please...")
               (wait)
               (text-reset 1)
               (str "Cole: Catherine...")
               (wait)
               (text-reset 1)
               (str "Cole: Don't worry, I'll be back in one piece. And I'll stop" 'br)
               (str "the reanimation serum once and for all.")
               (wait)
               (text-reset 1)
               (str "Catherine: Promise me.")
               (wait)
               (text-reset 1)
               (str "Cole: I promise.")
               (wait)
               (text-reset 1)
               (str "Catherine: And promise for Sheila.")
               (wait)
               (text-reset 1)
               (str "Cole: Hey, Cassie...")
               (wait)
               (text-reset 1)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (image-file "B:¥GPC¥DB070.GPC") (image-mem 1 3)
               (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
               (str "Cole: Did Catherine know about Sheila's condition...?")
               (wait)
               (text-reset 1)
               (str "Cole: ...")
               (wait)
               (text-reset 1)
               (str "Cole: Okay, this is where it comes to an end. I'm taking" 'br)
               (str "down Daniel!")
               (wait)
               (text-reset 1)
               (sound '|| 2)
               (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
               (mes-jump "A:¥MES¥089.MES"))
              (//
               (str "Cole: Maybe... Maybe that's not quite right...")		; Failure
               (wait)
               (text-reset 1)
               (str "Catherine: Cole, remember for me.")
               (wait)
               (text-reset 1)
               (str "Cole: Can we go through this again?")
               (set-reg 151 #f)
               (set-reg 152 #f)
               (wait)
               (text-reset 1))))))
       (//
        (? (= 139 #f))								; Lead-in for first visit
        (str "Catherine: Cole, did you have a fight with Sheila?")
        (wait)
        (text-reset 1)
        (str "Cole: Ah... Yeah, a little one.")
        (set-reg 139 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Catherine: Hey, Cole.")						; Lead-in from second visit
        (wait)
        (text-reset 1))))
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 140 #f))							; Bed #1
   (str "Catherine: Cole, are you tired?")
   (wait)
   (text-reset 1)
   (str "Cole: Whuh?")
   (wait)
   (text-reset 1)
   (str "Catherine: It's because you keep looking at my bed.")
   (wait)
   (text-reset 1)
   (str "Cole: No, it's just that the bed in MY room sucks.")
   (wait)
   (text-reset 1)
   (str "Catherine: You can use this one.")
   (wait)
   (text-reset 1)
   (str "Cole: Nah, it's fine. I'm not sleepy at all.")
   (set-reg 140 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 141 #f))							; Bed #2
   (str "Catherine: You'll sleep real well in this bed.")
   (wait)
   (text-reset 1)
   (str "Cole: The bed in my room has traps around it.")
   (wait)
   (text-reset 1)
   (str "Catherine: Traps?")
   (wait)
   (text-reset 1)
   (str "Cole: When I roll over, I bonk my head on the edge of the" 'br)
   (str "desk.")
   (wait)
   (text-reset 1)
   (str "Catherine: Cole, you really do toss and turn.")
   (set-reg 141 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))								; Bed #3
   (str "Catherine: Cole, aren't you getting worn out from all this" 'br)
   (str "constant bed examination?")
   (wait)
   (text-reset 1)
   (str "Cole: No no, it's not like that...")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 142 #f))							; Window #1
   (str "Cole: Aren't you going to open the window?")
   (wait)
   (text-reset 1)
   (str "Catherine: Huh? Isn't it cold?")
   (wait)
   (text-reset 1)
   (str "Cole: No, I just think it's good to get some fresh air once" 'br)
   (str "in a while.")
   (wait)
   (text-reset 1)
   (str "Catherine: I already aired out the room when I woke up.")
   (set-reg 142 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 143 #f))							; Window #2
   (str "Catherine: It still smells like there are places burning" 'br)
   (str "downtown.")
   (wait)
   (text-reset 1)
   (str "Cole: Flammable places like gas stations are hard to" 'br)
   (str "extinguish once they go up.")
   (wait)
   (text-reset 1)
   (str "Catherine: Should we call the fire department?")
   (wait)
   (text-reset 1)
   (str "Cole: I don't think calls are going through.")
   (set-reg 143 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))								; Window #3
   (str "Cole: Downtown, I can see spots where white smoke is" 'br)
   (str "billowing.")
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 144 #f))							; Calendar #1
   (str "Catherine: Where do you want to spend the new year?")
   (wait)
   (text-reset 1)
   (str "Cole: Hmm... I'd like to go to Canada.")
   (wait)
   (text-reset 1)
   (str "Catherine: That sounds nice, eh?")
   (set-reg 144 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7) (= 145 #f))							; Calendar #2
   (str "Cole: The year's almost over, huh.")
   (wait)
   (text-reset 1)
   (str "Catherine: Hey, when you ring in the new year, you're gonna" 'br)
   (str "marry Sheila officially, right?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, that's right.")
   (wait)
   (text-reset 1)
   (str "Catherine: ...")
   (set-reg 145 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 7))								; Calendar #3
   (str "Cole: I don't like this vibe, I'd better stop staring at" 'br)
   (str "the calendar.")
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 146 #f))							; Catherine #1
   (str "Catherine: Why did you fight with Sheila?")
   (wait)
   (text-reset 1)
   (str "Cole: I wasn't... Well, it wasn't anything serious.")
   (wait)
   (text-reset 1)
   (str "Catherine: Won't you tell me?")
   (wait)
   (text-reset 1)
   (str "Cole: No...?")
   (wait)
   (text-reset 1)
   (str "Catherine: Man, you're cold, Cole.")
   (set-reg 146 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 147 #f))							; Catherine #2
   (str "Catherine: Tell me.")
   (wait)
   (text-reset 1)
   (str "Cole: Tell you what?")
   (wait)
   (text-reset 1)
   (str "Catherine: You can't be serious! I'm asking why you were" 'br)
   (str "fighting with Sheila!")
   (wait)
   (text-reset 1)
   (str "Cole: Well... I guess it was a difference of opinion.")
   (wait)
   (text-reset 1)
   (str "Catherine: A difference of opinion.")
   (wait)
   (text-reset 1)
   (str "Cole: Is that enough? I'm telling you the truth here.")
   (wait)
   (text-reset 1)
   (str "Catherine: Do you know why people have differences of" 'br)
   (str "opinion, Cole?")
   (wait)
   (text-reset 1)
   (str "Cole: Okay, fine, why don't you tell me?")
   (wait)
   (text-reset 1)
   (str "Catherine: It's because one of the two didn't communicate" 'br)
   (str "their feelings.")
   (wait)
   (text-reset 1)
   (str "Cole: Maybe they thought they did, though--")
   (wait)
   (text-reset 1)
   (str "Catherine: You just assume the other person understands you" 'br)
   (str "without having to say it. You assume that, no matter how" 'br)
   (str "much you think you know them.")
   (wait)
   (text-reset 1)
   (str "Cole: Okay, okay. That's valid.")
   (set-reg 147 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 148 #f))							; Catherine #3
   (str "Cole: Huh, I've never thought about it that seriously before.")
   (wait)
   (text-reset 1)
   (str "Catherine: I've worked in a ton of different jobs, so I" 'br)
   (str "know a lot about how people communicate. It's hard to know" 'br)
   (str "for yourself if you can trust someone.")
   (wait)
   (text-reset 1)
   (str "Cole: That's the kind of thing that makes me not want to" 'br)
   (str "trust people.")
   (wait)
   (text-reset 1)
   (str "Catherine: What about you, Cole?")
   (wait)
   (text-reset 1)
   (str "Cole: What about me?")
   (wait)
   (text-reset 1)
   (str "Catherine: Who can you trust?")
   (wait)
   (text-reset 1)
   (str "Cole: I...don't know.")
   (set-reg 148 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 8) (= 149 #f))							; Catherine #4
   (str "Cole: Sorry, not to change the topic, but...")
   (wait)
   (text-reset 1)
   (str "Catherine: Go ahead and change it.")
   (wait)
   (text-reset 1)
   (str "Cole: You know that a zombie got into the lab yesterday," 'br)
   (str "right?")
   (wait)
   (text-reset 1)
   (str "Catherine: Yeah.")
   (wait)
   (text-reset 1)
   (str "Cole: Since our enemies know that we're in here, I think we" 'br)
   (str "should relocate... Maybe as soon as tomorrow night.")
   (wait)
   (text-reset 1)
   (str "Catherine: We'd be better off.")
   (wait)
   (text-reset 1)
   (str "Cole: We should have a meeting tonight.")
   (wait)
   (text-reset 1)
   (str "Catherine: A meeting?")
   (wait)
   (text-reset 1)
   (str "Cole: Yeah, about where we should relocate to.")
   (wait)
   (text-reset 1)
   (str "Catherine: I'm okay with that, but Steve and Sheila aren't" 'br)
   (str "here.")
   (wait)
   (text-reset 1)
   (if (</>
        (//
         (? (= 150 #t))								; Cole has checked the lab for Steve
         (str "Cole: Well, we can find Sheila, but Steve's out.")
         (wait)
         (text-reset 1))
        (//
         (str "Cole: Huh? I thought Steve was in the lab.")			; Cole hasn't checked
         (wait)
         (text-reset 1)
         (str "Catherine: I just passed by him in the hallway.")
         (wait)
         (text-reset 1)
         (str "Cole: Is that so... I wonder where he was off to.")
         (wait)
         (text-reset 1))))
   (set-reg 149 #t))
 (seg (? (= P 8) (= 150 #t))							; Catherine #5 (after checking lab)
   (str "Cole: Without Steve we can't have a meeting...")
   (wait)
   (text-reset 1)
   (str "Catherine: Do you know where he went?")
   (wait)
   (text-reset 1))
 (seg (? (= P 8))								; Catherine #5 (before checking lab)
   (str "Catherine: Hmm, was Steve in the lab?")
   (wait)
   (text-reset 1)
   (str "Cole: Oh, I haven't checked there yet.")
   (wait)
   (text-reset 1))
 (seg (? (= P 1))								; MOVE
   (exec-mem 6064 2 1)
   (str "Cole: Okay, I've got to get going.")
   (wait)
   (text-reset 1)
   (str "Catherine: Okay, don't be a stranger.")
   (wait)
   (text-reset 1)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (exec-mem 6064 3)
   (mes-jump "A:¥MES¥085.MES"))
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
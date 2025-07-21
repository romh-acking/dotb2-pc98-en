; Dead of the Brain 2 (PC-98) - 053.MES
; Translated by Geometrizer
; Edited by JackDBS, commented by trentsignia
; -----Scene:-----
; Cole is now upstairs at the 32nd Precinct after escaping some zombies, but he doesn't have long before they catch up to him...
; --Timed Event:--
; 1. Fully inspect locker (02).
; 2. Get Spanner from toolbox (06).
; 3. Open locker with Spanner.
; 4. Fully inspect Right Chair (08).
; 5. Get Hex Wrench from toolbox.
; 6. (Attempt to) disassemble chair with Spanner.
; 7. Get Screwdriver from toolbox.
; -----Notes:-----
; After the lead-in, the text box loses some character space due to the overlapping timer; the character limit for this script therefore is 55 instead of 59.
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (sound '|| 0)
  (if (</>
       (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_08.USO"))
       (// (sound '|| "A:¥USO_D¥BR2_08.USO"))))
  (sound '|| 1)
  (load-mem "A:¥CLM¥DB086.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)			; Hotspots and buttons defined here, and oh boy are there hotspots this time 'round...
  (exec-mem 3744 1 1 80 0 0 0)							; ...I'm just going to draw all the hotspots in ASCII art to make things easier to refer to
  (exec-mem 3744 1 2 80 0 0 0)							;  
  (exec-mem 3744 1 1 10 4 23 9)							; 	 ______________________________________________________ 	01: Door
  (exec-mem 3744 1 2 3 5 8 10)							; 	|                        ░░░░░░03      ░░░░░04      ░05|	02: Locker
  (exec-mem 3744 1 3 27 2 34 8)							; 	|                        ░░░░░░░░      ░░░░░░░      ░░░|	03: Left Window
  (exec-mem 3744 1 4 41 2 47 8)							; 	|       ░░░░░░░░░░░░01   ░░░░░░░░      ░░░░░░░      ░░░|	04: Right Window
  (exec-mem 3744 1 5 53 2 56 10)						; 	|░░░░02 ░░░░░░░░░░░░░░   ░░░░░░░░      ░░░░░░░      ░░░|	05: Wall
  (exec-mem 3744 1 6 53 10 56 12)						; 	|░░░░░░ ░░░░░░░░░░░░░░   ░░░░░░░░      ░░░░░░░      ░░░|	06: Toolbox
  (exec-mem 3744 1 7 8 12 14 15)						; 	|░░░░░░ ░░░░░░░░░░░░░░   ░░░░░░░░      ░░░░░░░      ░░░|	07: Left Chair
  (exec-mem 3744 1 8 41 12 50 15)						; 	|░░░░░░ ░░░░░░░░░░░░░░   ░░░░░░░░      ░░░░░░░      ░░░|	08: Right Chair
  (exec-mem 3744 1 9 33 10 37 12)						; 	|░░░░░░ ░░░░░░░░░░░░░░                              ░░░|	09: Storage Box
  (exec-mem 3744 1 10 5 10 18 13)						; 	|░░▒▒▒▒▒▒▒▒▒▒▒▒▒10   ░░░░░░░░░12▒▒▒09 ░░░░░░░15     ▒06|	10: Desk A
  (exec-mem 3744 1 11 18 11 30 14)						; 	|  ▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓11░░░▒▒▒▒▒ ░░░░░░░░░     ▒▒▒|	11: Desk B
  (exec-mem 3744 1 12 23 10 34 12)						; 	|  ▒▒▒▓▓▓▓▓07▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓░░░▒▒▒(14) ▓▓▓▓▓▓▓▓08  ▒▒▒|	12: Desk C
  (exec-mem 3744 1 13 27 13 41 15)						; 	|  ▒▒▒▓▓▓▓▓▓▓▒▒▒▓▓▓▓▓▓▓▓▓██████████████13▓▓▓▓▓▓▓▓▓     |	13: Desk D
  (exec-mem 3744 1 14 36 12 49 14)						; 	|     ▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓████████████████▓▓▓▓▓▓▓▓▓     |	14: Desk E
  (exec-mem 3744 1 15 39 10 48 11)						; 	|_____▓▓▓▓▓▓▓____________████████████████▓▓▓▓▓▓▓▓▓_____|	15: Desk F
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB086.GPC") (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 119 #f))								; Lead-in from previous MES script
        (str "Cole: Gasp, gasp... Shit! How could I have forgotten to" 'br)
        (str "check my ammo supply?")
        (wait)
        (text-reset 1)
        (str "Cole: And Steve still isn't here. Could we have crossed" 'br)
        (str "paths before...?")
        (wait)
        (text-reset 1)
        (str "Cole: What the... Oh shit, they're coming up the stairs!" 'br)
        (str "Fuck, I'm gonna be lunch!")
        (wait)
        (text-reset 1)
        (str "Cole: I need to find a weapon before those zombies get up" 'br)
        (str "here!")
        (set-reg 119 #t)
        (wait)
        (text-reset 1))
       (//
        (str "Cole: Are there any weapons around?!")				; Lead-in from loading game
        (wait)
        (text-reset 1))))
  (exec-mem 15728 0 0 6 0 0 1)
  (exec-mem 15728 1 0 0 0 0 "Z")
  (image-file "A:¥GPC¥COUNTER.GPC") (image-mem 0 0)
  (exec-mem 15728 2 1)
  (exec-mem 15456 0)
  (exec-mem 14544 2 0)
  (exec-mem 15728 3)
  (text-frame 19 298 78 356)
  (loop
   (if (</>
        (//
         (? (= Z 2) (= 152 #t))							; Success
         (exec-mem 15728 4)
         (image-file "A:¥GPC¥DB_FRM3.GPC") (image-mem 0 0)
         (text-frame 15 298 74 356)
         (str "Cole: I don't hear any more footsteps... They're here!!!")
         (wait)
         (text-reset 1)
         (image-file "A:¥GPC¥DB_FRM3.GPC") (image-mem 0 0)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (mes-jump "A:¥MES¥054.MES"))
        (//
         (? (= Z 1) (= 152 #f))							; Failure
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (exec-mem 15728 4)
         (text-frame 15 298 74 356)
         (image-file "A:¥GPC¥DB_FRM3.GPC") (image-mem 0 0)
         (image-file "B:¥GPC¥DB088.GPC") (image-mem 1 3)
         (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
         (str "Zombie: ")(text "ＧＵＧＹＡＡＡＡＡＡＡＡ！！！")
         (wait)
         (text-reset 1)
         (str "Cole: Oh, FUCK! AAAAAAHHHHHHH!")
         (wait)
         (text-reset 1)
         (sound '|| 0)
         (sound '|se | 10)
         (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
         (text "　　　　　　　　　　ＧＡＭＥ　ＯＶＥＲ")
         (menu1 32 337 48 337 (</> (/ (str "CONTINUE")) (/ (str "END GAME"))))
         (text-reset 1)
         (branch-var
          S
          (</>
           (/
            (exec-mem 9920 0 6 6 113 64 0)
            ((cmd 204) 121 151)
            (nop@)
            (set-var Z 0)
            (mes-jump "A:¥MES¥053.MES"))
           (/
            (text "　　　　　ＮＩＧＨＴＭＡＲＥ　ＣＯＬＬＥＣＴＩＯＮ" 'br)
            (text "　　　　　　ＤＥＡＤ　ＯＦ　ＴＨＥ　ＢＲＡＩＮⅡ" 'br)
            (text "　　　　　　　　　　　ＧＡＭＥ　ＥＮＤ")
            (loop (wait))))))))
   (exec-mem 3744 3 "P" 32768)
   (text-color 15)
   (text-frame 19 298 74 356)
   (seg-call)))
 (seg (? (= P 1) (= 120 #f))							; Door #1
   (str "Cole: This is the door I came from. It looks like the" 'br)
   (str "zombies are heading up the stairs to eat my brains!")
   (set-reg 120 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 1))								; Door #2 (repeat line)
   (str "Cole: The zombies are gonna start swarming out of there" 'br)
   (str "any minute now. If I don't do something, they're gonna" 'br)
   (str "eat me!")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 2) (= 130 #t) (= 131 #f))						; Locker (while holding spanner)
   (str "Cole: Wait, what was I carrying again?")				; Short quiz follows...
   (menu1
    20 317  40 317  60 317
    20 337  40 337  60 337
    (</>
     (/ (str "Hammer        "))
     (/ (str "Hex Wrench    "))
     (/ (str "Pliers        "))
     (/ (str "Screwdriver   "))
     (/ (str "Handsaw       "))
     (/ (str "Spanner       "))))
   (text-reset 1)
   (if (</>
        (//
         (? (= S 5))								; Correct answer
         (str "Cole: Okay, I'll try opening the locker with that" 'br)
         (str "spanner I found in the toolbox earlier!")
         (wait)
         (exec-mem 29792 1)
         (str "Cole: Hnnnnnnnngh!")
         (wait)
         (exec-mem 29792 1)
         (str "Cole: Shit, the spanner broke, but the locker's open!")
         (wait)
         (exec-mem 29792 1)
         (str "Cole: Oh come on! I was expecting a gun inside, but" 'br)
         (str "this shit's empty! And my spanner snapped!")
         (wait)
         (exec-mem 29792 1)
         (str "Cole: This spanner is worthless now, better throw it" 'br)
         (str "out!")
         (set-reg 131 #t)
         (wait)
         (exec-mem 29792 1))
        (//
         (str "Cole: Wait, don't do that!")					; Wrong answer
         (wait)
         (exec-mem 29792 1)))))
 (seg (? (= P 2) (= 130 #t))							; Locker (after opening)
   (str "Cole: There was fuck all in the locker. I shouldn't" 'br)
   (str "waste any more time with it. I gotta act fast before" 'br)
   (str "the zombies show up!")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 2) (= 121 #f))							; Locker #1
   (str "Cole: Let's take a look at the locker!")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: Shit! The lid's dented and it won't open!")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: No time, I need to think of something else!")
   (set-reg 121 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 2) (= 122 #f))							; Locker #2
   (str "Cole: Okay, I'll give it another try!")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: Dammit! No good, I don't have the tools to open" 'br)
   (str "it!")
   (set-reg 122 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 2))								; Locker #3 (repeat line)
   (str "Cole: I can't just wrench it open with my bare hands." 'br)
   (str "I need a tool!")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 3) (= 123 #f))							; Left Window #1
   (str "Cole: A glass window? Taking that route out would be" 'br)
   (str "suicide!")
   (set-reg 123 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 3) (= 124 #f))							; Left Window #2
   (str "Cole: Break the glass and use the shards as a weapon..." 'br)
   (str "No, that's completely stupid.")
   (set-reg 124 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 3))								; Left Window #3 (repeat line)
   (str "Cole: It's a hefty drop back to the ground. Where's a" 'br)
   (str "ladder when you need one?")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 4) (= 125 #f))							; Right Window #1
   (str "Cole: There's a hole in the glass. Looking through it," 'br)
   (str "I can see a dead lady down below.")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: No matter how ripped your physique is, a fall" 'br)
   (str "from this height would be fatal.")
   (set-reg 125 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 4) (= 126 #f))							; Right Window #2
   (str "Cole: I don't wanna meet the same fate as that woman" 'br)
   (str "down there!")
   (set-reg 126 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 4))								; Right Window #3 (repeat line)
   (str "Cole: The broken glass... Can I use this...somehow?")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 5) (= 127 #f))							; Wall #1
   (str "Cole: There's a vinyl sheet on the repaired wall.")
   (set-reg 127 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 5) (= 128 #f))							; Wall #2
   (str "Cole: Maybe I can use the vinyl sheet to fend off the" 'br)
   (str "zombies? Somehow?")
   (set-reg 128 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 5))								; Wall #3 (repeat line)
   (str "Cole: It looks like I could remove the vinyl sheet in" 'br)
   (str "no time.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 6) (= 137 #t) (= 152 #f))						; Toolbox (after using spanner and hex wrench) #1
   (str "Cole: The only tool that seems useful right now is the" 'br)
   (str "screwdriver. It's better than nothing.")
   (set-reg 152 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 6) (= 137 #t))							; Toolbox (after using spanner and hex wrench) #2
   (str "Cole: I guess there's no harm in just randomly grabbing" 'br)
   (str "any tool I can find.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 6) (= 131 #t) (= 136 #t) (= 132 #f))				; Toolbox (after inspecting right chair) #1
   (str "Cole: A hex wrench, huh? Well, this could come in" 'br)
   (str "handy, so I'll grab it just in case.")
   (set-reg 132 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 6) (= 131 #t) (= 136 #t))						; Toolbox (after inspecting right chair) #2
   (str "Cole: I guess there's no harm in just randomly grabbing" 'br)
   (str "any tool I can find.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 6) (= 122 #t) (= 130 #f))						; Toolbox (after inspecting locker) #1
   (str "Cole: This wrench could be useful. Mine now.")
   (set-reg 130 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 6) (= 122 #t))							; Toolbox (after inspecting locker) #2
   (str "Cole: I guess there's no harm in just randomly grabbing" 'br)
   (str "any tool I can find.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 6))								; Toolbox
   (str "Cole: This toolbox has the stuff they needed to repair" 'br)
   (str "the wall: Nails, a wrench, a screwdriver, and various" 'br)
   (str "other bits and bobs.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 7) (= 133 #f))							; Left Chair #1
   (str "Cole: A rolling chair... I can't just wield this like a" 'br)
   (str "deadly weapon. Surely there's something more" 'br)
   (str "effective...?")
   (set-reg 133 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 7) (= 134 #f))							; Left Chair #2
   (str "Cole: I don't think this chair would give me an" 'br)
   (str "advantage against a zombie horde.")
   (set-reg 134 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 7))								; Left Chair #3 (repeat line)
   (str "Cole: I think zombies usually shrug off chair shots.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 8) (= 132 #t) (= 137 #f))						; Right Chair (while holding hex wrench)
   (str "Cole: Wait, what was I carrying again?")				; Short quiz follows...
   (menu1
    20 317  40 317  60 317
    20 337  40 337  60 337
    (</>
     (/ (str "Hammer        "))
     (/ (str "Hex Wrench    "))
     (/ (str "Pliers        "))
     (/ (str "Screwdriver   "))
     (/ (str "Handsaw       "))
     (/ (str "Spanner       "))))
   (text-reset 1)
   (if (</>
        (//
         (? (= S 1))								; Correct answer
         (str "Cole: I will break down this chair for parts with this" 'br)
         (str "hex wrench! I am a genius!")
         (wait)
         (exec-mem 29792 1)
         (str "Cole: Oh, what the hell? This hex wrench has been" 'br)
         (str "stripped! It's worthless! Tossing it!")
         (set-reg 137 #t)
         (wait)
         (exec-mem 29792 1))
        (//
         (str "Cole: No, that's not right. I should have something" 'br)	; Wrong answer
         (str "else on me that would help!") 
         (wait)
         (exec-mem 29792 1)))))
 (seg (? (= P 8) (= 132 #t))							; Right Chair #1
   (str "Cole: When you really think about it, chairs are shitty" 'br)
   (str "weapons against zombies. ")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 8) (= 135 #f))							; Right Chair #2
   (str "Cole: This chair is too heavy for me to be whipping it" 'br)
   (str "around like an agent of zombie death.")
   (set-reg 135 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 8) (= 136 #f))							; Right Chair #3
   (str "Cole: If only I could remove the bottom part of this" 'br)
   (str "chair, maybe I could wield it with one hand...")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: But to remove it I'd need some kinda tool.")
   (set-reg 136 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 8))								; Right Chair #4 (repeat line)
   (str "Cole: Huh? The screws on this chair are loose. If I had" 'br)
   (str "a tool, I could remove 'em.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 9) (= 138 #f))							; Storage Box #1
   (str "Cole: There's a knocked-over storage box. Looks like" 'br)
   (str "it's packed full of books.")
   (set-reg 138 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 9) (= 139 #f))							; Storage Box #2
   (str "Cole: There's something under the storage box...")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: !!!")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: Oh rad! It's a genuine Sony Walkman!")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: I'm no thief, though, so I'll leave it be." 'br)
   (str "Besides, it's a matter of life and death right now." 'br)
   (str "I gotta figure out a way to fight back, not rock out.")
   (set-reg 139 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 9))								; Storage Box #3 (repeat line)
   (str "Cole: There's only books in this box, and nothing I can" 'br)
   (str "properly clobber a zombie with.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 10) (= 140 #f))							; Desk A #1
   (str "Cole: Maybe there's something inside this desk. Let me" 'br)
   (str "open the drawers...")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: Dammit! The drawers are locked.")
   (set-reg 140 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 10) (= 141 #f))							; Desk A #2
   (str "Cole: Locked drawers, no good.")
   (set-reg 141 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 10) (= 142 #f))							; Desk A #3
   (str "Cole: What's inside the unlocked drawer...")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: Bah, just a bunch of books. Worthless.")
   (set-reg 142 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 10))								; Desk A #4 (repeat line)
   (str "Cole: I couldn't find anything in this desk drawer.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 11) (= 143 #f))							; Desk B #1
   (str "Cole: This drawer could have had a loaded gun in it.")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: Totally empty! Seriously, is anyone doing any" 'br)
   (str "sort of work around here?")
   (set-reg 143 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 11))								; Desk B #2 (repeat line)
   (str "Cole: The desk drawer was empty. I should look for" 'br)
   (str "another.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 12) (= 144 #f))							; Desk C #1
   (str "Cole: Let's rummage through this drawer...")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: The hell, it's just stuffed with videos and" 'br)
   (str "magazines. Nothing in here that could be used as a" 'br)
   (str "weapon.")
   (set-reg 144 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 12) (= 145 #f))							; Desk C #2
   (str "Cole: VHS tapes and mags in here, worthless. I need to" 'br)
   (str "look elsewhere.")
   (set-reg 145 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 12))								; Desk C #3 (repeat line)
   (str "Cole: There's no weapon-like objects in this desk.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 13) (= 146 #f))							; Desk D #1
   (str "Cole: Come on, let's get lucky with this desk.")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: Oh, fuck this desk, there isn't even a drawer in" 'br)
   (str "it.")
   (set-reg 146 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 13) (= 147 #f))							; Desk D #2
   (str "Cole: This desk sucks, it hasn't got any drawers.")
   (set-reg 147 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 13))								; Desk D #3 (repeat line)
   (str "Cole: I'm not spending any more time investigating this" 'br)
   (str "shitty desk with no drawers.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 14) (= 148 #f))							; Desk E #1
   (str "Cole: This desk's been flipped over. Huh? I see" 'br)
   (str "something shiny underneath it...")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: Oh good, a penny.")
   (set-reg 148 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 14) (= 149 #f))							; Desk E #2
   (str "Cole: Maybe there's something in the desk drawer?")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: Pens and paper clips. The pen is not mightier" 'br)
   (str "than the sword when it comes to the undead.")
   (set-reg 149 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 14))								; Desk E #3 (repeat line)
   (str "Cole: The other drawer... Just documents in here.")
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 15) (= 150 #f))							; Desk F #1
   (str "Cole: Come on, drawer, what you got in there...")
   (wait)
   (exec-mem 29792 1)
   (str "Cole: But I'd have to flip the desk right-side-up. No" 'br)
   (str "good, it's too heavy.")
   (set-reg 150 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 15) (= 151 #f))							; Desk F #2
   (str "Cole: That desk is heavy as hell, what's inside it?")
   (set-reg 151 #t)
   (wait)
   (exec-mem 29792 1))
 (seg (? (= P 15))								; Desk F #3 (repeat line)
   (str "Cole: Try as I might, I haven't got the gumption to" 'br)
   (str "move this big-ass desk.")
   (wait)
   (exec-mem 29792 1))
 (seg*))
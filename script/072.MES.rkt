(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (load-mem "A:¥CLM¥DB121.CLM" 32768)
  (exec-mem 3744 0 #"\353\237\353\240\353\241\353\242" 6 5 1)
  (exec-mem 3744 1 1 80 0 0 0)
  (exec-mem 3744 1 2 80 0 0 0)
  (exec-mem 3744 1 5 39 3 49 7)
  (exec-mem 3744 1 6 28 5 36 8)
  (exec-mem 9920 0 6 6 113 64 0)
  (image-file "B:¥GPC¥DB121.GPC")
  (image-mem 0 3)
  (exec-mem 9920 1 6 32 113 32 6 6 113 64 8 50)
  (if (</>
       (//
        (? (= 133 #f))
        (sound '|| 0)
        (if (</>
             (// (? (= 900 #f)) (sound '|| "A:¥USO_V¥BR2_02.USO"))
             (// (sound '|| "A:¥USO_D¥BR2_02.USO"))))
        (sound '|| 1))))
  (text "［コール］俺の撃った弾が頭にヒットしている。")
  (wait)
  (text-reset 1)
  (loop (exec-mem 3744 3 "P" 32768) (text-color 15) (seg-call)))
 (seg (? (= P 5) (= 157 #f))
   (text "［コール］女の死霊を、こうマジマジと見るのはあまり気分のいい　　　　　ものじゃないな・・・。")
   (set-reg 157 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 158 #f))
   (text "［コール］頭の弾痕からは、血と混ざってかなりの量の蘇生薬が飛　　　　　び散っている。")
   (set-reg 158 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5) (= 159 #f))
   (text "［コール］死体は見たところ、死霊になってからそんなに時間は経　　　　　っていないようだな・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］ん？　俺の撃った弾痕の他に、身体にはどこにも傷が見　　　　　えないが・・・。")
   (wait)
   (text-reset 1)
   (text
    "［コール］間違い無い、こいつは蘇生薬・・・もしくはＤＮＶが多　　　　　く含まれたパープル・スカイを注射されたものだ。こん　　　　　な若い女性にまで薬を打つなんて・・・。")
   (wait)
   (text-reset 1)
   (text "［コール］・・・許せない・・・。")
   (set-reg 159 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 5))
   (text
    "［コール］この女性は、薬を打たれて死霊になってしまったようだ　　　　　・・・。これも、全てダニエルがパープル・スカイを流　　　　　したせいだ。")
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 159 #t) (= 162 #f))
   (text
    "［コール］ん？　胸の所に紫の斑点があるな・・・。死後、血が身　　　　　体の表面に鬱血するという話しを聞いた事があるが、こ　　　　　の場合薬が体内から出たものか・・・？")
   (set-reg 162 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 159 #t))
   (text "［コール］胸元には妙な紫色の斑点が付いている。")
   (set-reg 163 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6) (= 160 #f))
   (text
    "［コール］この死霊は身体が腐っていないようだな・・・。蘇生薬　　　　　の成分である防腐薬が死体を腐らないようにしているの　　　　　だろう。")
   (set-reg 160 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 6))
   (text "［コール］薬の効能が切れるまでは、しばらく身体が腐る事もない　　　　　だろう。ここにしばらく放置しておいても問題はない。")
   (set-reg 161 #t)
   (wait)
   (text-reset 1))
 (seg (? (= P 1))
   (exec-mem 6064 2 1)
   (text "［コール］そろそろ他の場所を調べてみるか。")
   (wait)
   (text-reset 1)
   (exec-mem 6064 3)
   (nop@)
   (set-reg 133 #t)
   (exec-mem 9920 2 6 6 113 64 6 32 113 32 0 50)
   (mes-jump "A:¥MES¥068.MES"))
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
        (/ (nop@) (set-reg 133 #f) (flag-save 1))
        (/ (nop@) (set-reg 133 #f) (flag-save 2))
        (/ (nop@) (set-reg 133 #f) (flag-save 3))
        (/ (nop@) (set-reg 133 #f) (flag-save 4))
        (/ (nop@) (set-reg 133 #f) (nop@) (set-reg 133 #f) (flag-save 5))
        (/ (nop@) (set-reg 133 #f) (flag-save 6))
        (/ (nop@) (set-reg 133 #f) (flag-save 7))
        (/ (nop@) (set-reg 133 #f) (flag-save 8))
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
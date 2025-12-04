
VAR CHOICENUMBER = 0 
=== Act1Scene1 === 
You arrive at School, slightly earlier than normal and spot your friend Edward milling about, do you head over to talk to them or simply take some time looking at your phone?

* Head over
    You decide to head over to your friend and see what's up 
        ~ CHOICENUMBER = 1 
    ->  Interaction1

* Stay Put 
     You decide to just scroll through social media 
          ~ CHOICENUMBER = 2
    ->  Interaction1


- End of Act 1 

-> DONE

 === Interaction1 ===
{CHOICENUMBER == 1:
Hey {PlayerName} what's up, you manage to complete the work that Mr Hudson gave us? 
-> Interaction1_1
  - else:
Hey {PlayerName} what are you doing alone? Get over here!
  -> Interaction1_1
}

= Interaction1_1
{CHOICENUMBER == 1:
    * [Yes]
      Yeah I managed to complete the work questions 10 and 14 were so damn difficult though!
    -> vapeInteraction1
    * [No]
      Nope, questions 10 and 14 completely stumpped me
    -> vapeInteraction1
- else: 
  
    * [Alright]
     Alr, one second
      ~CHOICENUMBER = 1
     -> Interaction1
     -> DONE
     
    
    * No Thanks
    I will talk to you later, just need to do something right now 
     Okay, see you in class then
    -> Interaction2
     -> DONE
    
    
    }  
    

 === Interaction2 ===
    In 2nd period while trying to keep yourself awake, while your english teacher drones on the structure of a essay, Edward passes you a note...
    
    Head to the back of the school during lunch, near the shed,{CHOICENUMBER == 1: bring the vape pen with you. |bring your textbook.}
    -> Interaction2_1
    

=== Act1Complete ===
Act 1 Complete 

-> DONE

=== Interaction2_1 ===
{CHOICENUMBER == 2 : 
    You head over with your textbook 
 -> vapeInteraction2 
 }
         
 {CHOICENUMBER == 3 :
        * Don't bring the Vape 
        Although you may get flax for not bringing the vape, you decide to leave it and head over. 
        ~ hasVape = false 
        -> vapeInteraction2
         }  
         
    What do you do?
        * Bring the Vape 
        You decide to discretly slip the vape into your pocket and head over. 
          -> vapeInteraction2
         ~ hasVape = true 
          -> DONE
      * Search up info about vapes
        You don't know if vaping is as great as it sounds, so you put out your phone 
        
        Turns out, a lot of the infomation Edward stated was false. Vapes turn out to be quite additive and are harmful to the lungs.
        
        Although not bringing the vape may lose favor with your friends
         ~ CHOICENUMBER = 3
         -> Interaction2_1
       



 -> DONE
}












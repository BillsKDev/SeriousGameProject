
VAR hasVape = false 
VAR helpEdward = false

=== vapeInteraction1 === 
  
  Well, that's great, I didn't manage the first two questions! Would you mind helping me out at lunch later?
      * Sure, if I have the time. 
       Thanks, {PlayerName}, I owe you a favour.
        ~ helpEdward = true 

      * Sorry, I have other assignments to complete.
        Damn, alright, Imma go see if Anthony can help me.
        ~ helpEdward = false 
        
-Oh, right, I have something to give you.

Edward retrieves a pen-shaped object from his pocket and hands it to you.


    * What is this? 
    
- It's a Vape pen, Anthony's group uses them all the time, heard they are good for your health, and check this, they are all favoured!

    * That's cool
    
- This one is for you, keep it hidden though, the teachers will take them.

 *Place it away
  
  Curious, you place it in a discrete compartment of your bag and head to class. 

~ hasVape = true 
 
  -> Interaction2
  
-> DONE



=== vapeInteraction2 === 


Near the shed, I see Anthony, Edward, and a few of their friends chatting while some are vaping. 
    
Anthony, between puffs of his vape, says:     

Hey {PlayerName}, glad to see you. Did you bring the vape?
    
{hasVape &&  CHOICENUMBER != 3:
    * It's right here
      
      Great, come vape with us, it's simple, just do this
      
      ...He shows you how it works...
      
      It tastes great as well!
      
      His friends are also stating similar things to encourage you :
      "It's not hard to do."
     
      "The clouds it produces are so cool !"
      
      You also see Edward trying out his own vape pen as well
      
      What do you do?
      
{hasVape == false || CHOICENUMBER == 3:
        
      ** [Make an excuse ]
      Sorry, but my lungs aren't doing so well, so I will pass.
      
      You sure? Or are you a coward?
      ***[Persist] 
      Nah, sorry screwed up my lungs when I was running earlier.
      
      Damn your lame, making excuses, but so be it.
      
      You spend the rest of the time talking to the others, although 
      Anthony doesn't look too happy. 

      -> Act1Complete
       -> DONE

      *** Fine 
          -> VapeUsedIteraction1
      -> DONE
      }
    {helpEdward :
            * Hey, Edward, you remember that favour you owe me?
            
            Yeah, you're cashing in on it now? Even though you haven't helped me out yet?
            
            I will give you a free drink, as well as help with the questions.
            
            Sure, okay, to the shop then.
            
            See you, Anthony.
           	
            Okay, Alright then, buy one for me as well!
            
            Successfully avoiding the peer pressure situation, you leave the area and head to the shop, where you spend $10 for 3 drinks. 
            -> Act1Complete
    }
      ** Try it out 
    -> VapeUsedIteraction1
      ~VapeChoices += 1
      -> Act1Complete
      ->DONE
    
  - else:
      * Vape?
         Didn't Edward give you one, as well? I told him to.
                 -> vapeInteraction2_1
}
  
  
  
    === vapeInteraction2_1 === 
    
     * I just came here to get Edward and work on the questions Mr Hudson gave us.
    
    Oh, those questions, I managed to complete them so Edward could just get help here. 
    
    On the other hand, you should try vaping; it's simple, just do this
      
      ...He shows you how it works...
      
      It tastes great as well!
      
      His friends are also stating similar things to encourage you :
      "It's not hard to do."
      "The clouds it produces are so cool."
      
      You also see Edward trying out his own vape pen as well
      
      What do you do?
      
      {helpEdward :
            * Hey, Edward, you remember that favour you owe me?
            
            Yeah, you're cashing in on it now? Even though you haven't helped me out yet?
            
            I will give you a free drink, as well as help with the questions.
            
            Sure, okay, to the shop then.
            
            See you, Anthony.
           	
            Okay, Alright then, buy one for me as well!
            
            Successfully avoiding the peer pressure situation, you leave the area and head to the shop, where you spend $10 for 3 drinks. 
            -> Act1Complete
                
      
      - else :
        * Sure, why not?: 
         -> VapeUsedIteraction1
        * Nope:
          Nope, if you are helping Edward, I will go work on my own assignment
          
          Okay, you do you, but you’re missing out!
          
          As you walk away, you can't help but feel something off.
          
         -> Act1Complete
    

 }
->DONE

=== VapeUsedIteraction1 ===
   You decide to try it out, and despite coughing a bit on the first tries, you find the taste great, and spend the rest of the lunch period vaping and talking with Anthony, Edward and their group. 
-> DONE

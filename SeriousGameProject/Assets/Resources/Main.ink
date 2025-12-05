INCLUDE Act1.ink
INCLUDE VapeInteractions.ink
VAR VapeChoices = 0 
VAR EndingNumber = 0 
VAR PlayerName = ""
VAR EndingScenario = 0 

-> prologue  
=== prologue  === 
You are a high school student, just navigating daily life; however, you have noticed pen-like devices throughout the school, and a few of your friends have been using them as well. 
You have heard that they are called vapes, but aren't sure what they do. Take care navigating situations regarding these vapes, and good luck. 
 
{PlayerName == "":
    ~PlayerName = "Sam"
}
   * [I will do my best]
-> Act1Scene1   
-> DONE
-> END

=== Act1Complete ===
#E.Main
End of Story. Time to see the consequences of your actions.

{
  - EndingScenario == 1:
    -> EndingUsedVape
  - EndingScenario == 2:
    -> EndingAvoidedVapeEdwardHelp
  - EndingScenario == 3:
    -> EndingAvoidedVapeExcuses
  - EndingScenario == 4:
    -> EndingWalkedAwayNoHelp
  - else:
    -> EndingWalkedAwayNoInteraction
}
-> DONE

=== EndingUsedVape ===
#E.EndSummary
#E.EndingBad
You gave in to the pressure and tried the vape near the shed. It seemed fun and everyone else was doing it. Over the next few weeks, you start to feel the effects. You find yourself seeking out Edward and Anthony more often just to get another hit. You feel anxious and easily annoyed if you can't use it, and you've already spent your allowance on a new flavour pod. Later on in life you get highly addicted to these vapes, have continous mental health issues, physical health issues, and alot of your money goes down to vapes.

Lesson: Vaping is highly addictive, especially for young people, and even just trying it once can quickly lead to a habit that's hard to kick. Giving in to peer pressure can have real, negative consequences on your health and your freedom for your future
-> END

=== EndingAvoidedVapeEdwardHelp ===
#E.EndSummary
#E.EndingGood
You successfully leveraged your earlier offer to help Edward with his homework, cashing in your favour to escape a high-pressure situation. You sacrificed $10 for drinks, but you protected your health and maintained your friendship without giving in. Edward got his help, and you stayed vape-free. Later in life you never give in to vapes and live a relatively healthy life.

Lesson: Sometimes the best way to handle peer pressure is through clever negotiation or by seeking help from allies. True friends respect boundaries, and your quick thinking helped you avoid a risky choice.
-> END

=== EndingAvoidedVapeExcuses ===
#E.EndSummary
#E.EndingOkay
You managed to refuse the offer to vape by making excuses about your "lungs not doing so well" and "screwing them up while running earlier." Anthony wasn't happy and called you lame, but you held your ground and stayed vape-free. You spent the rest of lunch awkwardly talking to the others, but you felt good about your choice later.

Lesson: Saying no isn't always easy or popular, but your health is more important than what others think of you in the moment. Standing up for your well-being builds self respect.
-> END

=== EndingWalkedAwayNoHelp ===
#E.EndSummary
#E.EndingNeutral
When confronted with the situation, you chose to simply walk away, stating you would "work on your own assignment." Anthony and Edward called you out for "missing out," but you left the area without engaging with the vape culture.

Lesson: Sometimes the strongest action you can take is to physically remove yourself from a harmful environment. You don't owe anyone an explanation for prioritizing your own safety and goals.
-> END

=== EndingWalkedAwayNoInteraction ===
#E.EndSummary
#E.EndingNeutral
You initially decided to stay put and scroll social media rather than immediately engaging with Edward. Later, when the note came, you chose to walk away from the invitation entirely ("I will talk to you later"). You successfully navigated Act 1 without getting deeply involved in the social drama or the vapes.

Lesson: You managed to avoid the conflict entirely by choosing your own path. Being comfortable with your own choices, separate from the crowd, is a valuable life skill.
-> END

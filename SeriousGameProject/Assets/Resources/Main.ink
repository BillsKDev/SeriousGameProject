INCLUDE Act1.ink
INCLUDE VapeInteractions.ink


VAR VapeChoices = 0 

VAR EndingNumber = 0

VAR PlayerName = ""
VAR PlayerGrade = 0 
-> prologue  

=== prologue  === 
You are a high school student, just navigating daily life, however you have noticed pen like device throughout the school, and a few of your friends have been using them as well. 

You have heard that they are called vapes, but aren't sure what they do. Take care navigating situations regarding these vapes, and good luck.  
{PlayerName == "":
    ~PlayerName = "Sam"
}
   * I will do my best
-> Act1Scene1   
-> DONE

 



#E.ShowMaterials
#E.ReturnToMain
-> END
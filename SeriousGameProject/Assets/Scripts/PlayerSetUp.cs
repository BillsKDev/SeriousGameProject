using System;
using Ink.Parsed;
using JetBrains.Annotations;
using TMPro;
using UnityEngine;

public class PlayerSetUp : MonoBehaviour
{
    [SerializeField] private GameObject Setup;
    [SerializeField] private TMP_InputField InputField;
    [SerializeField] private TMP_Dropdown GenderSelection;
    [SerializeField] private GameObject StoryPlayer;
    public static Action StartStory;
    string Gender = "";
    string PlayerName = "";
    
    
    public void ChoosePlayerName()
    {
        PlayerName  = InputField.text;
    }
    
    public void ChooseGender()
    {
        Gender = GenderSelection.options[GenderSelection.value].text;
    }
    

    public void ComfirmPlayerSetUp()
    {        
        StartStory?.Invoke();
        Setup.gameObject.SetActive(false);
        StoryPlayer.gameObject.SetActive(true);
        DialogueController._story.variablesState["PlayerName"] = PlayerName; ;
    }


}

using System;
using UnityEngine;

public class DialogueGiver : MonoBehaviour
{
    [SerializeField] TextAsset _dialog;

    private void Start()
    {
        FindFirstObjectByType<DialogueController>().StartDialog(_dialog);
    }
}
using UnityEngine;
using System.Collections;

public class level01 : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {
    }

    //style for the title
    public GUIStyle menuStyle1;
    //style for the buttons
    public GUIStyle menuStyle2;
    //style for the version info
    public GUIStyle menuStyle3;


    public void OnGUI()
    {



        //version info
        GUI.Label(new Rect(15, 15, 150, 50), "Prototype 1.0");

        if (GUI.Button(new Rect(Screen.width - 135, 15, 120, 40), "Back"))
        {
            Application.LoadLevel(0);
        }
        if (GUI.Button(new Rect(Screen.width - 135, 65, 120, 40), "Refresh"))
        {
            Application.LoadLevel(2);
        }

        //group to center the buttons
        GUI.BeginGroup(new Rect(Screen.width / 2 - 150, 50, 300, 500));

        //title
        //GUI.Label(new Rect(50, 0, 200, 200), "Level 01", menuStyle1);


        GUI.EndGroup();
        //ends button group

    }//end OnGUI



}

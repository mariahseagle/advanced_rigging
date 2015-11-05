using UnityEngine;
using System.Collections;

public class settings : MonoBehaviour
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

        //group to center the buttons
        GUI.BeginGroup(new Rect(Screen.width / 2 - 150, 50, 300, 500));

        //title
        GUI.Label(new Rect(50, 0, 200, 200), "Settings", menuStyle1);

        if (GUI.Button(new Rect(90, 180, 120, 40), "..."))
        {
            //brings you to the first level
            //Application.LoadLevel(6);
        }

        if (GUI.Button(new Rect(90, 230, 120, 40), "..."))
        {
            //Application.LoadLevel(4);
        }

        if (GUI.Button(new Rect(90, 280, 120, 40), "Back"))
        {
            Application.LoadLevel(0);
        }

        GUI.EndGroup();
        //ends button group

    }//end OnGUI



}

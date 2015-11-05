using UnityEngine;
using System.Collections;

public class Game_Driver : MonoBehaviour {

    public static int[,] placement_Array = new int[10, 10];

    public static int tank_Count = 2;
    public static int factory_Count = 0;
    public static int obstical_Count = 5;
    public static int level;

    // Use this for initialization
    void Start () {
        tank_Count = 2;
        obstical_Count = 5;
        factory_Count = 0;
        level = 0;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}

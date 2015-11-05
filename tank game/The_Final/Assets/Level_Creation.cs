using UnityEngine;
using System.Collections;

public class Level_Creation : MonoBehaviour {

    public GameObject tanks;
    public GameObject obsticals;
    public GameObject factories;

    const int TEN = 10;
    const int ONE = 1;
    const int TWO = 2;
    const int THREE = 3;

    int tank_Count = 0;
    int obstical_Count = 0;
    int factory_Count = 0;
    int i;
    int j;
    float i_Array = 4.5f;
    float j_Array = 4.5f;

    // Use this for initialization
    void Start () {
        Initial_Array();
        Generate_Array();
        instantiate_Array();
        //Print_Array();
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    // Generate the random array
    void Generate_Array() {
        while (tank_Count < Game_Driver.tank_Count)
        {
            for (i = 0; i < TEN; i++)
            {
                for (j = 0; j < TEN; j++)
                {
                    if (Game_Driver.placement_Array[i, j] == 0)
                        if (Random.Range(1, 101) <= Game_Driver.tank_Count)
                        {
                            Game_Driver.placement_Array[i, j] = ONE;
                            tank_Count++;
                        }
                    if (tank_Count == Game_Driver.tank_Count)
                    {
                        j = TEN;
                        i = TEN;
                    }
                }
            }
        }
        while (obstical_Count < Game_Driver.obstical_Count)
        {
            for (i = 0; i < TEN; i++)
            {
                for (j = 0; j < TEN; j++)
                {
                    if (Game_Driver.placement_Array[i, j] == 0)
                        if (Random.Range(1, 101) <= Game_Driver.obstical_Count)
                        {
                            Game_Driver.placement_Array[i, j] = TWO;
                            obstical_Count++;
                        }
                    if (obstical_Count == Game_Driver.obstical_Count)
                    {
                        j = TEN;
                        i = TEN;
                    }
                }
            }
        }
        while (factory_Count < Game_Driver.factory_Count)
        {
            for (i = 0; i < TEN; i++)
            {
                for (j = 0; j < TEN; j++)
                {
                    if (Game_Driver.placement_Array[i, j] == 0)
                        if (Random.Range(1, 101) <= Game_Driver.factory_Count)
                        {
                            Game_Driver.placement_Array[i, j] = THREE;
                            factory_Count++;
                        }
                    if (factory_Count == Game_Driver.factory_Count)
                    {
                        j = TEN;
                        i = TEN;
                    }
                }
            }
        }
    }

    // Initialize all elements in the array to zero
    void Initial_Array() {
        for (i = 0; i < TEN; i++)
            for (j = 0; j < TEN; j++)
                Game_Driver.placement_Array[i, j] = 0;
    }

    // Instantiate all elements in the array
    void instantiate_Array() {
        for (float i_Float = 0.0f; i_Float < TEN; i_Float++)
            for (float j_Float = 0.0f; j_Float < TEN; j_Float++)
            {
                if (Game_Driver.placement_Array[(int)i_Float, (int)j_Float] == ONE)
                    Instantiate(tanks, new Vector3(i_Array - i_Float, j_Array - j_Float, -1.0f), new Quaternion());
                else if (Game_Driver.placement_Array[(int)i_Float, (int)j_Float] == TWO)
                    Instantiate(obsticals, new Vector3(i_Array - i_Float, j_Array - j_Float, -1.0f), new Quaternion());
                else if (Game_Driver.placement_Array[(int)i_Float, (int)j_Float] == THREE)
                    Instantiate(factories, new Vector3(i_Array - i_Float, j_Array - j_Float, -1.0f), new Quaternion());
            }
    }

    // Prints the array for testing
    void Print_Array() {
        for (i = 0; i < TEN; i++)
            for (j = 0; j < TEN; j++)
                print(Game_Driver.placement_Array[i, j]);
    }
}

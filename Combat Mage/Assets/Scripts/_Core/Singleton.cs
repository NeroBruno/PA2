using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Singleton<T> : MonoBehaviour where T : MonoBehaviour
{
    public static T Instance
    {
        get
        {
            if (_Instance == null)
                _Instance = FindObjectOfType<T>();

            return _Instance;
        }
    }

    private static T _Instance;
}

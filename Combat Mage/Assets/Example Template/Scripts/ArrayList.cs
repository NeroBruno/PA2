using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using UnityEngine;

public class ArrayList : MonoBehaviour
{
    public class ListCopy : MonoBehaviour
    {
        public List<GameObject> tasks = new List<GameObject>();
        public int sizetask;


        public void add(GameObject game)
        {
            if (tasks.Count <= sizetask)
            {
                remove();
            }
            tasks.Add(game);
        }

        public void remove()
        {
            tasks.RemoveAt(sizetask - 1);
        }
    }
}

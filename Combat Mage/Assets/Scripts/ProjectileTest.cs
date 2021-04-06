using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProjectileTest : MonoBehaviour
{
    private bool isCollided;
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag != "Projectile" && collision.gameObject.tag != "Player" && !isCollided)
        {
            Destroy(gameObject);
        }
    }
}

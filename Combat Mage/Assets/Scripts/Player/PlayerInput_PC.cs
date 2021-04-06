using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Handles player input and feeds it to the other components
/// </summary>
public class PlayerInput_PC : PlayerComponent
{
    private void Update()
    {
        if (!Player.Pause.Active && Player.ViewLocked.Is(false))
        {

            //Movement
            Vector2 moveInput = new Vector2(Input.GetAxisRaw("Horizontal"), Input.GetAxisRaw("Vertical"));
            Player.MoveInput.Set(moveInput);

            //Look
            Player.LookInput.Set(new Vector2(Input.GetAxisRaw("Mouse X"), Input.GetAxisRaw("Mouse Y")));
            Player.WantsToInteract.Set(Input.GetButton("Interact"));

            //Jump
            if (Input.GetButtonDown("Jump"))
                Player.Jump.TryStart();

            // Spell Binding
            if (Input.GetButton("FireRune"))        // FIRE
            {
                if (Input.GetButtonDown("AttackSpell"))
                    Debug.Log("Bound Fire Attack");
                else if (Input.GetButtonDown("DefenseSpell"))
                    Debug.Log("Bound Fire Defense");
                else if (Input.GetButtonDown("SupportSpell"))
                    Debug.Log("Bound Fire Support");
            }
            else if (Input.GetButton("AirRune"))    // AIR
            {
                if (Input.GetButtonDown("AttackSpell"))
                    Debug.Log("Bound Air Attack");
                else if (Input.GetButtonDown("DefenseSpell"))
                    Debug.Log("Bound Air Defense");
                else if (Input.GetButtonDown("SupportSpell"))
                    Debug.Log("Bound Air Support");
            }
            else if (Input.GetButton("EarthRune"))  // EARTH
            {
                if (Input.GetButtonDown("AttackSpell"))
                    Debug.Log("Bound Earth Attack");
                else if (Input.GetButtonDown("DefenseSpell"))
                    Debug.Log("Bound Earth Defense");
                else if (Input.GetButtonDown("SupportSpell"))
                    Debug.Log("Bound Earth Support");
            }
            else if (Input.GetButton("WaterRune"))  // WATER
            {
                if (Input.GetButtonDown("AttackSpell"))
                    Debug.Log("Bound Water Attack");
                else if (Input.GetButtonDown("DefenseSpell"))
                    Debug.Log("Bound Water Defense");
                else if (Input.GetButtonDown("SupportSpell"))
                    Debug.Log("Bound Water Support");
            }
            // Spell Casting (Attack, Defense, Utility)
            if (!Input.GetButton("FireRune") || !Input.GetButton("AirRune") || !Input.GetButton("EarthRune") || !Input.GetButton("WaterRune"))
            {
                // ATTACK
                if (Input.GetButtonDown("AttackSpell") && Time.time >= timeToFire && (!Input.GetButton("DefenseSpell")))
                {
                    timeToFire = Time.time + 1 / fireRate;
                    ShootProjectile();
                    Player.Mana.Set(Mathf.Clamp(Player.Mana.Get() - 10, 0f, Mathf.Infinity));
                }
                //if (Input.GetButtonUp("AttackSpell") && (!Input.GetButton("DefenseSpell") || !Input.GetButtonDown("DefenseSpell"))) 
                //{
                //    Player.Mana.Set(Mathf.Clamp(Player.Mana.Get() - 10, 0f, Mathf.Infinity));
                //}
                
                //if (Input.GetButton("AttackSpell"))
                //    Debug.Log("Spell Charge Attack");

                // DEFENSE
                if (!Player.Aim.Active && Input.GetButton("DefenseSpell") && (!Input.GetButton("AttackSpell") || !Input.GetButtonDown("AttackSpell")))
                {
                    Player.Aim.TryStart();
                }
                else if (Player.Aim.Active && !Input.GetButton("DefenseSpell") && (!Input.GetButton("AttackSpell") || !Input.GetButtonDown("AttackSpell")))
                {
                    Player.Aim.ForceStop();
                }

                if (Input.GetButton("DefenseSpell"))
                    Debug.Log("Spell Hold Defense");

                // SUPPORT
                if (Input.GetButtonDown("SupportSpell"))
                {
                    Debug.Log("Spell Support");
                }
            }

            //Bind Attack Spell
            //if (Input.GetButtonDown("LeftMouseButton") && isPressingElementalSpell)
            //    Player.CurrentSpellAttack.Set();

            //Attack Spell
            //if (Input.GetButtonDown("LeftMouseButton") && !isPressingElementalSpell)
            //    Player.Attack.TryStart();

            // more stuff

            // Suicide damage testing
            if (Input.GetKeyDown(KeyCode.K))
            {
                HealthEventData damage = new HealthEventData(-1000f);
                Player.ChangeHealth.Try(damage);
            }

        }
        else
        {
            //Movement
            Player.MoveInput.Set(Vector2.zero);

            //Look
            Player.LookInput.Set(Vector2.zero);
        }
    }

    public GameObject projectile;
    public Transform firePoint;
    public Camera cam;
    public float projectileSpeed = 30f;
    public float fireRate = 4;
    public float arcRange = 1;

    private Vector3 destination;
    private float timeToFire;

    private void ShootProjectile()
    {
        Ray ray = cam.ViewportPointToRay(new Vector3(0.5f, 0.5f, 0f));
        RaycastHit hit;

        if (Physics.Raycast(ray, out hit))
            destination = hit.point;
        else
            destination = ray.GetPoint(1000);

        InstantiateProjectile(firePoint);
    }

    private void InstantiateProjectile(Transform firePoint)
    {
        var projectileObj = Instantiate(projectile, firePoint.position, Quaternion.identity) as GameObject;
        projectileObj.GetComponent<Rigidbody>().velocity = (destination - firePoint.position).normalized * projectileSpeed;

        iTween.PunchPosition(projectileObj, new Vector3(Random.Range(arcRange, arcRange), Random.Range(arcRange, arcRange), 0), Random.Range(0.5f, 1.5f));
    }
}

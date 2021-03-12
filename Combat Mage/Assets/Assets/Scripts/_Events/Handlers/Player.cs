using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Base Player Class
/// </summary>
public class Player : LivingEntity
{
    public FirstPersonCamera Camera { get => _Camera; }

    //Movement
    public Value<float> MovementSpeedFactor = new Value<float>(1f);
    public Value<float> MoveCycle = new Value<float>();
    public Message MoveCycleEnded = new Message();

    //Interaction
    //public Value<RaycastData> RaycastData = new Value<RaycastData>(null);
    //public Value<bool> WantsToInteract = new Value<bool>();

    /// <summary>
    /// Is there any object close to the camera?
    /// </summary>
    public Value<bool> ObjectInProximity = new Value<bool>();

    public Activity Pause = new Activity();

    public Value<bool> ViewLocked = new Value<bool>();

    public readonly Value<float> Mana = new Value<float>(100f);

    //public readonly Attempt<ManaEventData> ChangeMana = new Attempt<ManaEventData>();

    public Value<Vector2> MoveInput = new Value<Vector2>(Vector2.zero);

    public Value<Vector2> LookInput = new Value<Vector2>(Vector2.zero);

    public Activity Walk = new Activity();

    public Activity Jump = new Activity();

    public Activity OnLadder = new Activity();

    public Activity Healing = new Activity();

    //public Attempt<Spell> BindSpellAttack = new Activity();

    //public Attempt<Spell> BindSpellDefend = new Activity();

    //public Attempt<Spell> BindSpellUtility = new Activity();

    // OR????

    //public Activity BindSpellAttack = new Activity();

    public Activity CurrentSpellAttack = new Activity();

    public Activity CurrentSpellDefend = new Activity();

    public Activity CurrentSpellUtility = new Activity();

    [SerializeField]
    private FirstPersonCamera _Camera = null;
}

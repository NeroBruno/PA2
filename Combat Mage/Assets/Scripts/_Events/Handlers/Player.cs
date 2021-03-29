using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// Base Player Class
/// </summary>
public class Player : LivingEntity
{
    public FirstPersonCamera Camera { get => _Camera; }

    //Movement\
    [HideInInspector]
    public Value<float> MovementSpeedFactor = new Value<float>(1f);
    [HideInInspector]
    public Value<float> MoveCycle = new Value<float>();
    public Message MoveCycleEnded = new Message();

    //Interaction
    public Value<RaycastData> RaycastData = new Value<RaycastData>(null);
    public Value<bool> WantsToInteract = new Value<bool>();

    /// <summary> /// Is there any object close to the camera? /// </summary>
    public Value<bool> ObjectInProximity = new Value<bool>();

    public Activity Pause = new Activity();

    [HideInInspector]
    public Value<bool> ViewLocked = new Value<bool>();

    public readonly Value<float> Mana = new Value<float>(100f);

    [HideInInspector]
    public Value<Vector2> MoveInput = new Value<Vector2>(Vector2.zero);

    [HideInInspector]
    public Value<Vector2> LookInput = new Value<Vector2>(Vector2.zero);

    public Activity Walk = new Activity();

    public Activity Jump = new Activity();

    public Activity OnLadder = new Activity();

    public Activity Healing = new Activity();

    public Activity Aim = new Activity();

    //public Attempt<Spell> BindSpellAttack = new Activity();

    //public Attempt<Spell> BindSpellDefend = new Activity();

    //public Attempt<Spell> BindSpellUtility = new Activity();

    // OR????

    //public Activity BindSpellAttack = new Activity();

    public Value<Spell> CurrentSpellAttack = new Value<Spell>();

    public Attempt SpellAttack = new Attempt();

    public Activity SpellDefend = new Activity();

    public Attempt SpellUtility = new Attempt();

    public Activity CurrentSpellUtility = new Activity();

    [SerializeField]
    private FirstPersonCamera _Camera = null;
}

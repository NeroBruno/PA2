using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : PlayerComponent
{
    public bool IsGrounded { get => _Controller.isGrounded; }

    public Vector3 Velocity { get => _Controller.velocity; }

    public Vector3 SurfaceNormal { get; private set; }

    public float SlopeLimit { get => _Controller.slopeLimit; }

    public float DefaultHeight { get; private set; }

    [SerializeField]
    private CharacterController _Controller = null;

    private LayerMask _ObstacleCheckMask = ~0;

    [Header("Core Movement")]
    
    [SerializeField]
    [Range(0f, 20f)]
    private float _Acceleration = 5f;

    [SerializeField]
    [Range(0f, 20f)]
    private float _Damping = 8f;

    [SerializeField]
    [Range(0f, 1f)]
    private float _AirborneControl = 0.15f;

    [SerializeField]
    [Range(0f, 3f)]
    private float _StepLength = 1.2f;

    [SerializeField]
    [Range(0f, 10f)]
    private float _ForwardSpeed = 2.5f;

    [SerializeField]
    [Range(0f, 10f)]
    private float _BackSpeed = 2.5f;

    [SerializeField]
    [Range(0f, 10f)]
    private float _SideSpeed = 2.5f;
    
    [SerializeField]
    private AnimationCurve _SlopeSpeedMult = new AnimationCurve(new Keyframe(0f, 1f), new Keyframe(1f, 1f));

    [SerializeField]
    private float _AntiBumpFactor = 1f;

    //Jumping

    [SerializeField]
    private bool _EnableJumping = true;

    [SerializeField]
    [Range(0f, 3f)]
    private float _JumpHeight = 1f;

    [SerializeField]
    [Range(0f, 1.5f)]
    private float _JumpTimer = 0.3f;

    //MISC

    [SerializeField]
    [Range(0f, 100f)]
    private float _Gravity = 20f;

    private Vector3 _DesiredVelocityLocal;

    private CollisionFlags _CollisionFlags;
    private bool _PreviouslyGrounded;
    private float _LastLandTime;

    private float _DistMovedSinceLastCycleEnded;
    private float _CurrentStepLength;

    private void Awake()
    {
        DefaultHeight = _Controller.height;

        RaycastHit hitInfo;

        if (Physics.Raycast(transform.position + transform.up, -transform.up, out hitInfo, 3f, ~0, QueryTriggerInteraction.Ignore))
            transform.position = hitInfo.point + Vector3.up * 0.08f;
    }

    private void Start()
    {
        Player.IsGrounded.AddChangeListener(OnGroundingStateChanged);
        Player.Jump.AddStartTryer(TryJump);
        Player.Death.AddListener(OnDeath);
    }

    private void Update()
    {
        float deltaTime = Time.deltaTime;

        Vector3 translation = Vector3.zero;

        if (IsGrounded)
        {
            translation = transform.TransformVector(_DesiredVelocityLocal) * deltaTime;

            if (!Player.Jump.Active)
                translation.y = -_AntiBumpFactor;
        }
        else
            translation = transform.TransformVector(_DesiredVelocityLocal * deltaTime);

        _CollisionFlags = _Controller.Move(translation);


    }
}

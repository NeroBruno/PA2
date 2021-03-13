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
        if(!Player.Pause.Active && Player.ViewLocked.Is(false))
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

            //Bind Attack Spell
            //if (Input.GetButtonDown("LeftMouseButton") && isPressingElementalSpell)
            //    Player.CurrentSpellAttack.Set();

            //Attack Spell
            //if (Input.GetButtonDown("LeftMouseButton") && !isPressingElementalSpell)
            //    Player.Attack.TryStart();

            // more stuff
        }
        else
        {
            //Movement
            Player.MoveInput.Set(Vector2.zero);

            //Look
            Player.LookInput.Set(Vector2.zero);
        }
    }
}

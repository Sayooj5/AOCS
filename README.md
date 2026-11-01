# AOCS Model (MATLAB / Simulink)

MATLAB/Simulink model of the Attitude and Orbit Control System (AOCS) for a 3U CubeSat. So far, only the reaction wheel physics has been implemented.

---

## What it does

- Models a 3U CubeSat (3.5 kg, 10 × 10 × 30 cm) as a rigid body rotating about its pitch/yaw axis.
- Models a brass reaction wheel (0.40 kg, 35 mm radius) as the attitude actuator.
- Simulates the momentum exchange between the wheel and the satellite body.
- Runs for a configurable time (default 20 s) with a 0.01 s logging/sample time.

---

## How it is built

- MATLAB parameter script:
  - Defines all physical constants and simulation settings in one place.
  - Satellite inertia from the uniform-box formula: `J_sat = (1/12)·m·(w² + h²)` ≈ 0.0292 kg·m²
  - Reaction wheel inertia from the solid-cylinder formula: `J_rw = (1/2)·m·r²` ≈ 2.45 × 10⁻⁴ kg·m²
  - Wheel damping `b_rw = 0` (frictionless, vacuum assumption)
- Simulink model:
  - Implements the reaction wheel and satellite body dynamics.
  - Reads its parameters from the MATLAB workspace, so designs can be changed without editing the model.

---

## Why it is relevant

- Applies **rigid-body rotational dynamics** and **conservation of angular momentum** to a real spacecraft subsystem.
- Derives inertia properties from **physical dimensions**, not arbitrary values.
- Uses a **parameter-driven model** that keeps the physics, the settings and the model structure separate.
- Forms the base for the full AOCS: controller design, sensors, wheel saturation and momentum dumping.

---

## Tech & constraints

- Tools: MATLAB, Simulink
- Implemented so far: reaction wheel physics only
- Single-axis (pitch/yaw) rotation; roll about the long axis is not modelled.
- Satellite treated as a uniform rigid box; wheel treated as a solid disk.
- No external disturbance torques (gravity gradient, drag, solar pressure) and no wheel friction.

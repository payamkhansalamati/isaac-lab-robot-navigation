# ANYmal Target Navigation with Isaac Lab

A small experiment adapting Isaac Lab’s ANYmal target-navigation task.

## Plan

- Verify that the task is available in the selected Isaac Lab Launchable.
- Run the baseline.
- Make one controlled configuration change.
- Compare the results and document the commands.

## Status

Work in progress. Results and run instructions will be added after they are verified in the Launchable.

## Environment

NVIDIA Isaac Lab Launchable. The selected image lists Isaac Lab 3.0.0-beta2-post1 and Isaac Sim 6.0.1.

## Initial smoke test

Both runs used `Isaac-Navigation-Flat-Anymal-C-v0`, 16 environments, seed 42, and 10 maximum iterations.

| Run | Target range (x, y) | Progress | Training time |
|---|---:|---:|---:|
| Baseline | ±3 m (task default) | 80/80 | 15.07 s |
| Changed configuration | ±4 m | 80/80 | 19.11 s |

Both runs completed and saved checkpoints under `/workspace/isaaclab/logs/skrl/anymal_c_navigation/`. The changed-range policy was loaded in the Isaac Sim viewer and visually navigated successfully. This is a qualitative smoke-test result, not a quantitative comparison.

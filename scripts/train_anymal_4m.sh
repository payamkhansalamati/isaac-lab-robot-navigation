#!/usr/bin/env bash
set -euo pipefail

ISAACLAB_DIR="${ISAACLAB_DIR:-/workspace/isaaclab}"
cd "$ISAACLAB_DIR"

./isaaclab.sh train \
  --rl_library skrl \
  --task Isaac-Navigation-Flat-Anymal-C-v0 \
  --num_envs 16 \
  --max_iterations 10 \
  --headless \
  'env.commands.pose_command.ranges.pos_x=[-4.0,4.0]' \
  'env.commands.pose_command.ranges.pos_y=[-4.0,4.0]'

#!/bin/bash

# validate_infra.sh - Checks if infrastructure is running

echo "Starting Infrastructure Validation..."

# 1. Check Medusa Backend Container Status
CONTAINER_NAME="footlocker-clone-medusa-backend-1"
# Fallback to a looser check if the exact name differs (e.g. docker compose might name it differently based on dir)
if [ -z "$(docker ps -q -f name=medusa-backend)" ]; then
  echo "FAIL: medusa-backend container is NOT running."
  docker ps
  exit 1
else
  echo "PASS: medusa-backend container is running."
fi

# 2. Check Postgres Port (5432)
if nc -z localhost 5432; then
  echo "PASS: Postgres (Port 5432) is listening."
else
  echo "FAIL: Postgres (Port 5432) is NOT listening."
  exit 1
fi

# 3. Check Redis Port (6379)
if nc -z localhost 6379; then
  echo "PASS: Redis (Port 6379) is listening."
else
  echo "FAIL: Redis (Port 6379) is NOT listening."
  exit 1
fi

echo "SUCCESS: Infrastructure is validated."
exit 0

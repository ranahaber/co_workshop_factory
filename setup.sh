#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if command -v python3.12 >/dev/null 2>&1; then
  PYTHON="$(command -v python3.12)"
elif command -v python3.11 >/dev/null 2>&1; then
  PYTHON="$(command -v python3.11)"
elif command -v python3 >/dev/null 2>&1; then
  PYTHON="$(command -v python3)"
else
  echo "ERROR: Could not find python3.12, python3.11, or python3."
  exit 1
fi

echo "Using Python: $($PYTHON --version)"
echo "Python path: $PYTHON"

if "$PYTHON" - <<'PY_CHECK'
import sys
raise SystemExit(0 if sys.version_info[:2] >= (3, 11) else 1)
PY_CHECK
then
  true
else
  echo "ERROR: This workshop expects Python 3.11 or newer."
  exit 1
fi

if "$PYTHON" - <<'PY_VENV'
import sys
raise SystemExit(0 if sys.prefix != sys.base_prefix else 1)
PY_VENV
then
  "$PYTHON" -m pip install --no-warn-script-location -r launchable/requirements.txt
else
  "$PYTHON" -m pip install --user --break-system-packages --no-warn-script-location -r launchable/requirements.txt
fi

"$PYTHON" -m ipykernel install --user   --name cuopt-workshop   --display-name "Python (cuOpt Workshop)"

cat <<MSG

cuOpt factory workshop setup complete.

Open JupyterLab and select the kernel:
  Python (cuOpt Workshop)

Start with:
  01-Autoclave-MIP-Workshop.ipynb

MSG

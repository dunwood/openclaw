#!/usr/bin/env sh
set -eu

# Render Docker command wrapper. Avoids shell-quoting issues in Blueprint command
# fields and ensures required non-loopback Control UI startup setting is present.
node openclaw.mjs config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true --strict-json
exec node openclaw.mjs gateway --allow-unconfigured --bind lan --port 8080

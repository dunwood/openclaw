node openclaw.mjs config set gateway.controlUi.dangerouslyAllowHostHeaderOriginFallback true --strict-json
exec node openclaw.mjs gateway --allow-unconfigured --bind lan --port 8080

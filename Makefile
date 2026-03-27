

openframe_project_wrapper:
	nix run github:chipfoundry/openlane-2/CI2511 -- \
		--run-tag steps \
		--ef-save-views-to macros/openframe_project_wrapper/runs \
		macros/openframe_project_wrapper/config.json

wrapper_klayout:
	nix run github:chipfoundry/openlane-2/CI2511 -- \
		--run-tag steps \
		--flow openinklayout \
		macros/openframe_project_wrapper/config.json

blink:
	nix run github:chipfoundry/openlane-2/CI2511 -- \
		--run-tag steps \
		--ef-save-views-to macros/blink/runs \
		macros/blink/config.json

blink_klayout:
	nix run github:chipfoundry/openlane-2/CI2511 -- \
		--run-tag steps \
		--flow openinklayout \
		macros/blink/config.json


OPEN_PDKS_COMMIT ?= 12df12e2e74145e31c5a13de02f9a1e176b56e67

set_pdk:
	ciel enable --pdk sky130A ${OPEN_PDKS_COMMIT}
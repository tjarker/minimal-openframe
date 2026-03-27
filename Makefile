

openframe_project_wrapper:
	nix run github:chipfoundry/openlane-2/CI2511 -- \
		--run-tag steps \
		--manual-pdk \
		--pdk-root /Users/tjape/Projects/courses/openframe-test/dependencies/pdks \
		--pdk sky130A \
		--ef-save-views-to macros/openframe_project_wrapper/runs \
		macros/openframe_project_wrapper/config.json

wrapper_klayout:
	nix run github:chipfoundry/openlane-2/CI2511 -- \
		--run-tag steps \
		--manual-pdk \
		--pdk-root /Users/tjape/Projects/courses/openframe-test/dependencies/pdks \
		--pdk sky130A \
		--flow openinklayout \
		macros/openframe_project_wrapper/config.json

blink:
	nix run github:chipfoundry/openlane-2/CI2511 -- \
		--run-tag steps \
		--manual-pdk \
		--pdk-root /Users/tjape/Projects/courses/openframe-test/dependencies/pdks \
		--pdk sky130A \
		--ef-save-views-to macros/blink/runs \
		macros/blink/config.json

blink_klayout:
	nix run github:chipfoundry/openlane-2/CI2511 -- \
		--run-tag steps \
		--manual-pdk \
		--pdk-root /Users/tjape/Projects/courses/openframe-test/dependencies/pdks \
		--pdk sky130A \
		--flow openinklayout \
		macros/blink/config.json
CHART=saucelabs/sauce-connect
CREDS=--set sauce_username=${SAUCE_USERNAME} --set sauce_access_key=${SAUCE_ACCESS_KEY}

sauce-connect-dry-run:
	helm install ${CREDS} ${CHART} --dry-run --debug ${CHART}

sauce-connect-install:
	helm install --generate-name ${CREDS} ${CHART}

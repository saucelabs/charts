CHART=saucelabs/sauce-connect
CREDS=--set sauce_username=${SAUCE_USERNAME} --set sauce_access_key=${SAUCE_ACCESS_KEY}

dry-run:
	helm install ${CREDS} saucelabs/${chart} --dry-run --debug saucelabs/${chart}

install:
	helm install --generate-name ${CREDS} saucelabs/${chart}

docs:
	helm-docs
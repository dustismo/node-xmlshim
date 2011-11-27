BROWSER=firefox

test:
	./node_modules/.bin/nodeunit test

browser:
	./node_modules/.bin/browserify test-browserify-entry.js > \
		dist/browser-test/xmlshim-test.js

browser-test: browser
	 $(BROWSER) dist/browser-test/test.html >/dev/null 2>&1 &

.PHONY: test browser-test

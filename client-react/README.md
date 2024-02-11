Errors
##
file:///home/ubuntu/devops-directive-docker-course/05-example-web-application/client-react/node_modules/vite/bin/vite.js:7
    await import('source-map-support').then((r) => r.default.install())
    ^^^^^

SyntaxError: Unexpected reserved word
    at Loader.moduleStrategy (internal/modules/esm/translators.js:133:18)
    at async link (internal/modules/esm/module_job.js:42:21)
##
Required node version should be 16.16.0. Without this version you will get the error above.

#!/bin/sh

echo "Open http://localhost:8000/index.html"

# From https://gist.github.com/willurd/5720255
erl -s inets -eval 'inets:start(httpd,[{server_name,"NAME"},{document_root, "."},{server_root, "."},{port, 8000},{mime_types,[{"html","text/html"},{"htm","text/html"},{"js","text/javascript"},{"css","text/css"},{"gif","image/gif"},{"jpg","image/jpeg"},{"jpeg","image/jpeg"},{"png","image/png"},{"wasm","application/wasm"}]}]).'


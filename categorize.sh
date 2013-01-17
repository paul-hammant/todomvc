#!/bin/sh

echo "Ones without turing complete HTML"
echo "================================="
find . -iname '*.html' | xargs pcregrep -M '\"todo-list\".*>\s*<\/ul'

echo "Ones with turing complete HTML"
echo "=============================="
find . -iname '*.html' | xargs pcregrep -M '\"todo-list\".*>\s*.*<li'

echo "Fancy script/template usage"
echo "==========================="
ack -A 5 "type=\"text\/template"
ack -A 5 "type=\"text/x-handlebars"

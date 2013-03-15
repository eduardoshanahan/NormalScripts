#!/bin/sh

echo "Tell Git to remember credentials for a week"
git config credential.helper "cache --timeout=604800"
#!/bin/sh

echo "Tell Git to remember credentials"
git config credential.helper "cache --timeout=36000"
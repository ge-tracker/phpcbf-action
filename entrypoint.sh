#!/bin/sh

if [ -n "${INPUT_INSTALLED_PATHS}" ]; then
    phpcbf --config-set installed_paths "${INPUT_INSTALLED_PATHS}"
fi

phpcbf

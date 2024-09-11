#!/bin/bash

# Load Variables
source variables.sh

# #
# Generate .pot files based on .rst sources
# #
docker run --rm \
        -v $(pwd)/locales:/docs/locales \
        docker.io/nitrokey/sphinx \
        sphinx-build -b gettext . ./locales/ index

# #
# Generate locales for all languages (.po files)
# based on .pot files generated by "sphinx-build -b gettext"
# #
sphinx_args=""
for lang in "${languages[@]}"
do
	sphinx_args=$sphinx_args" -l $lang"
done

docker run --rm \
        -v $(pwd)/locales:/docs/locales \
        docker.io/nitrokey/sphinx \
        sphinx-intl update -p ./locales/ $sphinx_args 

# #
# Generate compiled for all languages (.po files)
# based on .pot files generated by "sphinx-build -b gettext"
# #
docker run --rm \
        -v $(pwd)/locales:/docs/locales \
        docker.io/nitrokey/sphinx \
        sphinx-intl build -d ./locales/ $sphinx_args 


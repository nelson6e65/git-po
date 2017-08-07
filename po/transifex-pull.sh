#!/usr/bin/env bash
# -*- ENCODING: UTF-8 -*-

function f_set_es_headers()
{
    # Set CHARSET to UTF-8:
    perl -pi -e 's/(?<="Content-Type: text\/plain; charset\=)CHARSET/UTF-8/' po/es.po

    # Set PACKAGE VERSION to "Git"
    perl -pi -e 's/(?<="Project-Id-Version: )PACKAGE VERSION/Git/' po/es.po

    # Set PO Revision date
    revision_date=$(date "+%Y-%m-%d %H:%M%z")
    perl -pi -e "s/(?<=\"PO-Revision-Date: )YEAR\-MO\-DA HO\:MI\+ZONE/${revision_date}/" po/es.po
}

function f_set_es_info()
{
    # Set the .po info headers
    perl -pi -e 's/(?<=# )SOME DESCRIPTIVE TITLE/Spanish translation for Git/' po/es.po
    perl -pi -e "s/(?<=# Copyright \(C\) )YEAR THE PACKAGE\'S COPYRIGHT HOLDER/2017 Nelson Martell \<nelson6e65\@gmail\>/" po/es.po

    perl -pi -e 's/(?<=# This file is distributed under the same license as the )PACKAGE/Git/' po/es.po

    # Add contributors
    perl -pi -e 's/(?<=# )FIRST AUTHOR \<EMAIL\@ADDRESS\>, YEAR./Contributors:\n# - C1.\n# - C2./' po/es.po

    perl -pi -e 's/(?<=# - )C1/Christopher Díaz \<christopher.diaz.riv\@gmail\>, 2017/' po/es.po
    perl -pi -e 's/(?<=# - )C2/Nelson Martell \<nelson6e65\@gmail\>, 2017/' po/es.po
}

# Update local `po/es.po` files from Transifex
tx pull -l es && f_set_es_headers && f_set_es_info

#!/usr/bin/env bash

## Adding ssl support ##################################
keytool -keystore etc/keystore \
        -alias rundeckssl \
        -genkey -keyalg RSA \
        -keypass adminadmin \
        -storepass adminadmin < data/keytool_input

cp etc/keystore etc/truststore
########################################################
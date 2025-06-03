#!/bin/bash
# to make sure that environment variables are present before running image


if [ -z "${CART_HOST}" ]; then
    echo Input CART_HOST is missing
    exit 1
fi
if [ -z "${CART_PORT}" ]; then
    echo Input CART_PORT is missing
    exit 1
fi
if [ -z "${USER_HOST}" ]; then
    echo Input USER_HOST is missing
    exit 1
fi
if [ -z "${USER_PORT}" ]; then
    echo Input USER_PORT is missing
    exit 1
fi


if [ -z "${APMQ_HOST}" ]; then
    echo Input APMQ_HOST is missing
    exit 1
fi
if [ -z "${APMQ_USER}" ]; then
    echo Input APMQ_USER is missing
    exit 1
fi
if [ -z "${APMQ_PASS}" ]; then
    echo Input APMQ_PASS is missing
    exit 1
fi

/usr/local/bin/uwsgi --ini payment.ini



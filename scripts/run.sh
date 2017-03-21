#!/bin/bash
set -xe

confd -onetime -backend env

oauth2_proxy -config /conf/oauth2_proxy.cfg



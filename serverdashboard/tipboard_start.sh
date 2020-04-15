#!/bin/bash

tipboard create_project db2

cp /tipboard/redis.conf /etc/redis/.
chmod +r /etc/redis/.
cp /tipboard/layout_config.yaml ~/.tipboard/.
cp /tipboard/settings-local.py ~/.tipboard/.
cp /tipboard/settings.py /usr/local/lib/python2.7/dist-packages/tipboard/.
cp /tipboard/layout.css /usr/local/lib/python2.7/dist-packages/tipboard/static/css/.
cp /tipboard/fancy_listing.css /usr/local/lib/python2.7/dist-packages/tipboard/tiles/.
cp /tipboard/just_value.css /usr/local/lib/python2.7/dist-packages/tipboard/tiles/.

/etc/init.d/redis-server restart && tipboard runserver 0.0.0.0 7272

tipboard server 0.0.0.0 7272
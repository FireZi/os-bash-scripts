#!/bin/bash

war_id="\(WW\)"
grep -E $war_id /var/log/Xorg.0.log | sed -E "s/$war_id /Warning: /" > full.log

inf_id="\(II\)"
grep -E $inf_id /var/log/Xorg.0.log | sed -E "s/$inf_id /Informaion: /" > full.log
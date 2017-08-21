#!/bin/bash 

mongodb1=`ping -c 1 ${MONGO1} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb2=`ping -c 1 ${MONGO2} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb3=`ping -c 1 ${MONGO3} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb4=`ping -c 1 ${MONGO4} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb5=`ping -c 1 ${MONGO5} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb6=`ping -c 1 ${MONGO6} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb7=`ping -c 1 ${MONGO7} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb8=`ping -c 1 ${MONGO8} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb9=`ping -c 1 ${MONGO9} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

port=${PORT:-27017}

echo "Waiting for startup.."
until mongo --host ${mongodb1}:${port} --eval 'quit(db.runCommand({ ping: 1 }).ok ? 0 : 2)' &>/dev/null; do
  printf '.'
  sleep 1
done

echo "Started.."

echo setup.sh time now: `date +"%T" `
mongo --host ${mongodb1}:${port} <<EOF

cfg.members[7].priority = 0
cfg.members[8].priority = 0
   var cfg = {
        "_id": "${RS}",
        "members": [
            {
                "_id": 0,
                "host": "${mongodb1}:${port}"
            },
            {
                "_id": 1,
                "host": "${mongodb2}:${port}"
            },
            {
                "_id": 2,
                "host": "${mongodb3}:${port}"
            },
            {
                "_id": 3,
                "host": "${mongodb4}:${port}"
            },
            {
                "_id": 4,
                "host": "${mongodb5}:${port}"
            },
            {
                "_id": 5,
                "host": "${mongodb6}:${port}"
            },
            {
                "_id": 6,
                "host": "${mongodb7}:${port}"
            },
            {
                "_id": 7,
                "host": "${mongodb8}:${port}"
            },
            {
                "_id": 8,
                "host": "${mongodb9}:${port}"
            }
        ]
    };
    rs.initiate(cfg, { force: true });
    rs.reconfig(cfg, { force: true });
EOF

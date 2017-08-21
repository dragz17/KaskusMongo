#!/bin/bash 

mongodb1=`ping -c 1 ${MONGOS} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb11=`ping -c 1 ${MONGO11} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb12=`ping -c 1 ${MONGO12} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb13=`ping -c 1 ${MONGO13} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb21=`ping -c 1 ${MONGO21} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb22=`ping -c 1 ${MONGO22} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb23=`ping -c 1 ${MONGO23} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb31=`ping -c 1 ${MONGO31} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb32=`ping -c 1 ${MONGO32} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb33=`ping -c 1 ${MONGO33} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb41=`ping -c 1 ${MONGO41} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb42=`ping -c 1 ${MONGO42} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb43=`ping -c 1 ${MONGO43} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb51=`ping -c 1 ${MONGO51} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb52=`ping -c 1 ${MONGO52} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb53=`ping -c 1 ${MONGO53} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb61=`ping -c 1 ${MONGO61} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb62=`ping -c 1 ${MONGO62} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb63=`ping -c 1 ${MONGO63} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb71=`ping -c 1 ${MONGO71} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb72=`ping -c 1 ${MONGO72} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb73=`ping -c 1 ${MONGO73} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb81=`ping -c 1 ${MONGO81} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb82=`ping -c 1 ${MONGO82} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb83=`ping -c 1 ${MONGO83} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb91=`ping -c 1 ${MONGO91} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb92=`ping -c 1 ${MONGO92} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb93=`ping -c 1 ${MONGO93} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb101=`ping -c 1 ${MONGO101} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb102=`ping -c 1 ${MONGO102} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb103=`ping -c 1 ${MONGO103} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb111=`ping -c 1 ${MONGO111} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb112=`ping -c 1 ${MONGO112} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb113=`ping -c 1 ${MONGO113} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb121=`ping -c 1 ${MONGO121} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb122=`ping -c 1 ${MONGO122} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb123=`ping -c 1 ${MONGO123} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`


port=${PORT:-27017}

echo "Waiting for startup.."
until mongo --host ${mongodb1}:${port} --eval 'quit(db.runCommand({ ping: 1 }).ok ? 0 : 2)' &>/dev/null; do
  printf '.'
  sleep 1
done

echo "Started.."

echo init-shard.sh time now: `date +"%T" `
mongo --host ${mongodb1}:${port} <<EOF
   sh.addShard( "${RS1}/${mongodb11}:${PORT1},${mongodb12}:${PORT2},${mongodb13}:${PORT3}" );
   sh.addShard( "${RS2}/${mongodb21}:${PORT1},${mongodb22}:${PORT2},${mongodb23}:${PORT3}" );
   sh.addShard( "${RS3}/${mongodb31}:${PORT1},${mongodb32}:${PORT2},${mongodb33}:${PORT3}" );
   sh.addShard( "${RS4}/${mongodb41}:${PORT1},${mongodb42}:${PORT2},${mongodb43}:${PORT3}" );
   sh.addShard( "${RS5}/${mongodb51}:${PORT1},${mongodb52}:${PORT2},${mongodb53}:${PORT3}" );
   sh.addShard( "${RS6}/${mongodb61}:${PORT1},${mongodb62}:${PORT2},${mongodb63}:${PORT3}" );
   sh.addShard( "${RS7}/${mongodb71}:${PORT1},${mongodb72}:${PORT2},${mongodb73}:${PORT3}" );
   sh.addShard( "${RS8}/${mongodb81}:${PORT1},${mongodb82}:${PORT2},${mongodb83}:${PORT3}" );
   sh.addShard( "${RS9}/${mongodb91}:${PORT1},${mongodb92}:${PORT2},${mongodb93}:${PORT3}" );
   sh.addShard( "${RS10}/${mongodb101}:${PORT1},${mongodb102}:${PORT2},${mongodb103}:${PORT3}" );
   sh.addShard( "${RS11}/${mongodb111}:${PORT1},${mongodb112}:${PORT2},${mongodb113}:${PORT3}" );
   sh.addShard( "${RS12}/${mongodb121}:${PORT1},${mongodb122}:${PORT2},${mongodb123}:${PORT3}" );
 
   sh.status();
EOF

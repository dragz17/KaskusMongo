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

mongodb131=`ping -c 1 ${MONGO131} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb132=`ping -c 1 ${MONGO132} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb133=`ping -c 1 ${MONGO133} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb141=`ping -c 1 ${MONGO141} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb142=`ping -c 1 ${MONGO142} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb143=`ping -c 1 ${MONGO143} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb151=`ping -c 1 ${MONGO151} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb152=`ping -c 1 ${MONGO152} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb153=`ping -c 1 ${MONGO153} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb161=`ping -c 1 ${MONGO161} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb162=`ping -c 1 ${MONGO162} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb163=`ping -c 1 ${MONGO163} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb171=`ping -c 1 ${MONGO171} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb172=`ping -c 1 ${MONGO172} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb173=`ping -c 1 ${MONGO173} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb181=`ping -c 1 ${MONGO181} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb182=`ping -c 1 ${MONGO182} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb183=`ping -c 1 ${MONGO183} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb191=`ping -c 1 ${MONGO191} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb192=`ping -c 1 ${MONGO192} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb193=`ping -c 1 ${MONGO193} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb201=`ping -c 1 ${MONGO201} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb202=`ping -c 1 ${MONGO202} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb203=`ping -c 1 ${MONGO203} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb211=`ping -c 1 ${MONGO211} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb212=`ping -c 1 ${MONGO212} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb213=`ping -c 1 ${MONGO213} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb221=`ping -c 1 ${MONGO221} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb222=`ping -c 1 ${MONGO222} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb223=`ping -c 1 ${MONGO223} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb231=`ping -c 1 ${MONGO231} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb232=`ping -c 1 ${MONGO232} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb233=`ping -c 1 ${MONGO233} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb241=`ping -c 1 ${MONGO241} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb242=`ping -c 1 ${MONGO242} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb243=`ping -c 1 ${MONGO243} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb251=`ping -c 1 ${MONGO251} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb252=`ping -c 1 ${MONGO252} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb253=`ping -c 1 ${MONGO253} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb261=`ping -c 1 ${MONGO261} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb262=`ping -c 1 ${MONGO262} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb263=`ping -c 1 ${MONGO263} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb271=`ping -c 1 ${MONGO271} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb272=`ping -c 1 ${MONGO272} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb273=`ping -c 1 ${MONGO273} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb281=`ping -c 1 ${MONGO281} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb282=`ping -c 1 ${MONGO282} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb283=`ping -c 1 ${MONGO283} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb291=`ping -c 1 ${MONGO291} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb292=`ping -c 1 ${MONGO292} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb293=`ping -c 1 ${MONGO293} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb301=`ping -c 1 ${MONGO301} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb302=`ping -c 1 ${MONGO302} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb303=`ping -c 1 ${MONGO303} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb311=`ping -c 1 ${MONGO311} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb312=`ping -c 1 ${MONGO312} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb313=`ping -c 1 ${MONGO313} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb321=`ping -c 1 ${MONGO321} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb322=`ping -c 1 ${MONGO322} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb323=`ping -c 1 ${MONGO323} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb331=`ping -c 1 ${MONGO331} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb332=`ping -c 1 ${MONGO332} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb333=`ping -c 1 ${MONGO333} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb341=`ping -c 1 ${MONGO341} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb342=`ping -c 1 ${MONGO342} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb343=`ping -c 1 ${MONGO343} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb351=`ping -c 1 ${MONGO351} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb352=`ping -c 1 ${MONGO352} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb353=`ping -c 1 ${MONGO353} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

mongodb361=`ping -c 1 ${MONGO361} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb362=`ping -c 1 ${MONGO362} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`
mongodb363=`ping -c 1 ${MONGO363} | head -1  | cut -d "(" -f 2 | cut -d ")" -f 1`

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
   sh.addShard( "${RS13}/${mongodb131}:${PORT1},${mongodb132}:${PORT2},${mongodb133}:${PORT3}" );
   sh.addShard( "${RS14}/${mongodb141}:${PORT1},${mongodb142}:${PORT2},${mongodb143}:${PORT3}" );
   sh.addShard( "${RS15}/${mongodb151}:${PORT1},${mongodb152}:${PORT2},${mongodb153}:${PORT3}" );
   sh.addShard( "${RS16}/${mongodb161}:${PORT1},${mongodb162}:${PORT2},${mongodb163}:${PORT3}" );
   sh.addShard( "${RS17}/${mongodb171}:${PORT1},${mongodb172}:${PORT2},${mongodb173}:${PORT3}" );
   sh.addShard( "${RS18}/${mongodb181}:${PORT1},${mongodb182}:${PORT2},${mongodb183}:${PORT3}" );
   sh.addShard( "${RS19}/${mongodb191}:${PORT1},${mongodb192}:${PORT2},${mongodb193}:${PORT3}" );
   sh.addShard( "${RS20}/${mongodb201}:${PORT1},${mongodb202}:${PORT2},${mongodb203}:${PORT3}" );
   sh.addShard( "${RS21}/${mongodb211}:${PORT1},${mongodb212}:${PORT2},${mongodb213}:${PORT3}" );
   sh.addShard( "${RS22}/${mongodb221}:${PORT1},${mongodb222}:${PORT2},${mongodb223}:${PORT3}" );
   sh.addShard( "${RS23}/${mongodb231}:${PORT1},${mongodb232}:${PORT2},${mongodb233}:${PORT3}" );
   sh.addShard( "${RS24}/${mongodb241}:${PORT1},${mongodb242}:${PORT2},${mongodb243}:${PORT3}" );
   sh.addShard( "${RS25}/${mongodb251}:${PORT1},${mongodb252}:${PORT2},${mongodb253}:${PORT3}" );
   sh.addShard( "${RS26}/${mongodb261}:${PORT1},${mongodb262}:${PORT2},${mongodb263}:${PORT3}" );
   sh.addShard( "${RS27}/${mongodb271}:${PORT1},${mongodb272}:${PORT2},${mongodb273}:${PORT3}" );
   sh.addShard( "${RS28}/${mongodb281}:${PORT1},${mongodb282}:${PORT2},${mongodb283}:${PORT3}" );
   sh.addShard( "${RS29}/${mongodb291}:${PORT1},${mongodb292}:${PORT2},${mongodb293}:${PORT3}" );
   sh.addShard( "${RS30}/${mongodb301}:${PORT1},${mongodb302}:${PORT2},${mongodb303}:${PORT3}" );
   sh.addShard( "${RS31}/${mongodb311}:${PORT1},${mongodb312}:${PORT2},${mongodb313}:${PORT3}" );
   sh.addShard( "${RS32}/${mongodb321}:${PORT1},${mongodb322}:${PORT2},${mongodb323}:${PORT3}" );
   sh.addShard( "${RS33}/${mongodb331}:${PORT1},${mongodb332}:${PORT2},${mongodb333}:${PORT3}" );
   sh.addShard( "${RS34}/${mongodb341}:${PORT1},${mongodb342}:${PORT2},${mongodb343}:${PORT3}" );	
   sh.addShard( "${RS35}/${mongodb351}:${PORT1},${mongodb352}:${PORT2},${mongodb353}:${PORT3}" );
   sh.addShard( "${RS36}/${mongodb361}:${PORT1},${mongodb362}:${PORT2},${mongodb363}:${PORT3}" );
   sh.status();
EOF

### menu de opções
https://askubuntu.com/questions/1705/how-can-i-create-a-select-menu-in-a-shell-script

. .


### opções e argumentos
https://opensource.com/article/21/8/option-parsing-bash

. .


### argumentação e como passar comandos pro script, incluindo 'help"
https://www.redhat.com/sysadmin/arguments-options-bash-scripts

echo $0 #caminho do arquivo atual
ex:
```#!/bin/bash
echo $0```

```[student@testvm1 ~]$ script1.sh
/home/dboth/bin/script1.sh```

echo $0 #caminho passado na primera variavel da linha de comando
```echo $1```

```[student@testvm1 ~]$ script1.sh azul
azul```

```[student@testvm1 ~]$ script1.sh help me
help```

```[student@testvm1 ~]$ script1.sh "help me"
help me```

multiplos comandos passandos por linha de comando
```#!/bin/bash
echo "Name: $1"
echo "Street: $2"
echo "City: $3"
echo "State/Province/Territory: $4"
echo "Zip/Postal code: $5"```

```[student@testvm1 ~]$ script1.sh "David Both" "80486 Intel St." Raleigh NC XXXXX
Name: David Both
Street: 80486 Intel St.
City: Raleigh
State/Province/Territory: NC
Zip/Postal code: XXXXX```

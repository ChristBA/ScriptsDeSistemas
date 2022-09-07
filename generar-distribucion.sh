#!/bin/bash

usage (){
echo "
"
echo "  
$0 [path destino] [nombre]
  
Ej: 
    >bash $0 ~/tmp clamshell-c15
       
        
    Resultado: 
        
    ~/tmp/clamshell-c15.tar
"
exit
}

[[ $# -ne 2 ]] && usage

DEST=$1
NAME=$2


mv syslinux/syslinux.cfg.usb.restaurador syslinux/syslinux.cfg
rm -rf customize-rootfs

tar cvf $DEST/${NAME}.tar *

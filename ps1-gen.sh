#!/bin/bash

ResetCol='\033[0m'; # Text Reset
BWhi='\033[1;37m';
Whi='\033[0;37m';

QRedRoot='\033[1;38;5;196m';

QGreenLabel='\033[1;38;5;28m';
QRedLabel='\033[1;38;5;124m';
QOrangeLabel='\033[1;38;5;202m';
QYellowLabel='\033[1;38;5;178m';
QBlueLabel='\033[1;38;5;25m';
QPurpleLabel='\033[1;38;5;91m';

printf "\n${BWhi}Simple PS1 .bashrc modifier by${ResetCol} ${QRedRoot}a${QGreenLabel}b${QRedLabel}b${QOrangeLabel}l${QYellowLabel}u${QBlueLabel}i${QPurpleLabel}z\n\n"

printf "${ResetCol}Regular user PS1 format (variable relativePath color):\n\t${BWhi}username${ResetCol}:${QGreenLabel}relativePath${ResetCol}$ \n\n"

printf "${ResetCol}Root PS1 format:\n\t${QRedRoot}root${ResetCol}:${BWhi}absolutePath${ResetCol}# \n\n"

echo -e "${ResetCol}Color options:"

echo -e "${QRedRoot}root${ResetCol}"

echo -e "${QGreenLabel}green${ResetCol}"
echo -e "${QRedLabel}red${ResetCol}"
echo -e "${QOrangeLabel}orange${ResetCol}"
echo -e "${QYellowLabel}yellow${ResetCol}"
echo -e "${QBlueLabel}blue${ResetCol}"
echo -e "${QPurpleLabel}purple${ResetCol}"

while :
do
    printf "\n"
    echo -e "Which type of PS1 format do you want, ${QRedRoot}root${ResetCol} or ${BWhi}regular${ResetCol}?"
    read format
    case $format in
        root)            
            echo "export PS1=\"\[\$(tput bold)\]\[${QRedRoot}\]\u\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]:\[\$(tput bold)\]\[${BWhi}\]\w\[\$(tput sgr0)\]\\\\$ \[\$(tput sgr0)\]\"" >> ~/.bashrc
            break
            ;;
        regular)
            while :
            do
                printf "\n"
                echo -e "Which color do you want on your relative path? "
                read color
                case $color in
                    root)
                        echo "export PS1=\"\[\$(tput bold)\]\[${BWhi}\]\u\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]:\[\$(tput bold)\]\[\$(tput sgr0)\]\[${QRedRoot}\]\W\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]\\\\$ \[\$(tput sgr0)\]\"" >> ~/.bashrc
                        break
                        ;;
                    green)
                        echo "export PS1=\"\[\$(tput bold)\]\[${BWhi}\]\u\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]:\[\$(tput bold)\]\[\$(tput sgr0)\]\[${QGreenLabel}\]\W\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]\\\\$ \[\$(tput sgr0)\]\"" >> ~/.bashrc
                        break
                        ;;
                    red)
                        echo "export PS1=\"\[\$(tput bold)\]\[${BWhi}\]\u\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]:\[\$(tput bold)\]\[\$(tput sgr0)\]\[${QRedLabel}\]\W\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]\\\\$ \[\$(tput sgr0)\]\"" >> ~/.bashrc
                        break
                        ;;
                    orange)
                        echo "export PS1=\"\[\$(tput bold)\]\[${BWhi}\]\u\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]:\[\$(tput bold)\]\[\$(tput sgr0)\]\[${QOrangeLabel}\]\W\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]\\\\$ \[\$(tput sgr0)\]\"" >> ~/.bashrc
                        break
                        ;;
                    yellow)
                        echo "export PS1=\"\[\$(tput bold)\]\[${BWhi}\]\u\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]:\[\$(tput bold)\]\[\$(tput sgr0)\]\[${QYellowLabel}\]\W\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]\\\\$ \[\$(tput sgr0)\]\"" >> ~/.bashrc
                        break
                        ;;
                    blue)
                        echo "export PS1=\"\[\$(tput bold)\]\[${BWhi}\]\u\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]:\[\$(tput bold)\]\[\$(tput sgr0)\]\[${QBlueLabel}\]\W\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]\\\\$ \[\$(tput sgr0)\]\"" >> ~/.bashrc
                        break
                        ;;
                    purple)
                        echo "export PS1=\"\[\$(tput bold)\]\[${BWhi}\]\u\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]:\[\$(tput bold)\]\[\$(tput sgr0)\]\[${QPurpleLabel}\]\W\[\$(tput sgr0)\]\[\$(tput sgr0)\]\[${ResetCol}\]\\\\$ \[\$(tput sgr0)\]\"" >> ~/.bashrc
                        break
                        ;;
                    *)
                        printf "\n"
                        echo -e "${QRedRoot}That is not a supported color.${ResetCol}"
                        ;;
                esac
            done
            break
            ;;
        *)
            printf "\n"
            echo -e "${QRedRoot}That is not a supported format.${ResetCol}"
            ;;
    esac
done

printf "\n"
echo "Your PS1 was modified. Restart terminal to see changes."

# Regular           Bold                Underline           High Intensity      BoldHigh Intens     Background          High Intensity Backgrounds
# Bla='\e[0;30m';     BBla='\e[1;30m';    UBla='\e[4;30m';    IBla='\e[0;90m';    BIBla='\e[1;90m';   On_Bla='\e[40m';    On_IBla='\e[0;100m';
# Red='\e[0;31m';     BRed='\e[1;31m';    URed='\e[4;31m';    IRed='\e[0;91m';    BIRed='\e[1;91m';   On_Red='\e[41m';    On_IRed='\e[0;101m';
# Gre='\e[0;32m';     BGre='\e[1;32m';    UGre='\e[4;32m';    IGre='\e[0;92m';    BIGre='\e[1;92m';   On_Gre='\e[42m';    On_IGre='\e[0;102m';
# Yel='\e[0;33m';     BYel='\e[1;33m';    UYel='\e[4;33m';    IYel='\e[0;93m';    BIYel='\e[1;93m';   On_Yel='\e[43m';    On_IYel='\e[0;103m';
# Blu='\e[0;34m';     BBlu='\e[1;34m';    UBlu='\e[4;34m';    IBlu='\e[0;94m';    BIBlu='\e[1;94m';   On_Blu='\e[44m';    On_IBlu='\e[0;104m';
# Pur='\e[0;35m';     BPur='\e[1;35m';    UPur='\e[4;35m';    IPur='\e[0;95m';    BIPur='\e[1;95m';   On_Pur='\e[45m';    On_IPur='\e[0;105m';
# Cya='\e[0;36m';     BCya='\e[1;36m';    UCya='\e[4;36m';    ICya='\e[0;96m';    BICya='\e[1;96m';   On_Cya='\e[46m';    On_ICya='\e[0;106m';
# Whi='\e[0;37m';     BWhi='\e[1;37m';    UWhi='\e[4;37m';    IWhi='\e[0;97m';    BIWhi='\e[1;97m';   On_Whi='\e[47m';    On_IWhi='\e[0;107m';

# standard colors
#for C in {40..47}; do
#    echo -en "\e[${C}m$C "
#done
# high intensity colors
#for C in {100..107}; do
#    echo -en "\e[${C}m$C "
#done
# 256 colors
#for C in {16..255}; do
#    echo -en "\e[48;5;${C}m$C "
#done
#echo -e "\e(B\e[m"